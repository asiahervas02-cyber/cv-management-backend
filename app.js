const express = require('express');
const dotenv = require('dotenv');
dotenv.config();

const app = express();

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

const db = require('./db');

// home - list all CVs
app.get('/', async (req, res) => {
    const search = req.query.search || '';
    let cvs;
    if (search) {
        [cvs] = await db.query(
            'SELECT id, name, email, language FROM cvs WHERE name LIKE ? OR language LIKE ?', [`%${search}%`, `%${search}%`]
        );
    } else {
        [cvs] = await db.query('SELECT id, name, email, language FROM cvs');
    }
    res.render('index', { cvs, search });
});

// api search endpoint
app.get('/api/search', async (req, res) => {
    const q = req.query.q || '';
    const [cvs] = await db.query(
        'SELECT id, name, email, language FROM cvs WHERE name LIKE ? OR language LIKE ?',
        [`%${q}%`, `%${q}%`]
    );
    res.json(cvs);
});

// cv detail
app.get('/cv/:id', async (req, res) => {
    const [rows] = await db.query('SELECT * FROM cvs WHERE id = ?', [req.params.id]);
    if (rows.length === 0) return res.status(404).send('CV not found');
    res.render('cv', { cv: rows[0] });
});

app.listen(process.env.PORT, () => {
    console.log(`server running on port ${process.env.PORT}`);
});