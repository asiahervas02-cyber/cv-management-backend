const input = document.getElementById('searchInput');
const list = document.getElementById('cvList');

let searchTimeout;

input.addEventListener('input', () => {
    clearTimeout(searchTimeout);

    searchTimeout = setTimeout(async () => {
        const query = input.value.trim();
        const res = await fetch(`/api/search?q=${encodeURIComponent(query)}`);
        const cvs = await res.json();

        if (cvs.length === 0) {
            list.innerHTML = `
                <p class="no-results">No CVs found matching "${query}"</p>
            `;
            return;
        }

        list.innerHTML = cvs.map(cv => {
            const bio = cv.bio
                ? `<p class="bio-preview">
                      ${cv.bio.substring(0, 70)}${cv.bio.length > 70 ? '...' : ''}
                   </p>`
                : '';

            const tag = cv.language
                ? `<span class="tag"><i class="fa-solid fa-code"></i> ${cv.language}</span>`
                : '';

            return `
                <div class="cv-card">
                    <div class="card-header">
                        <h3>${cv.name}</h3>
                        <p class="email"><i class="fa-solid fa-envelope"></i> ${cv.email}</p>
                    </div>

                    ${bio}

                    <div class="card-footer">
                        ${tag}
                        <a href="/cv/${cv.id}" class="view-btn">
                            <i class="fa-solid fa-arrow-up-right-from-square"></i>&nbsp;&nbsp;View CV
                        </a>
                    </div>
                </div>
            `;
        }).join('');
    }, 250);
});