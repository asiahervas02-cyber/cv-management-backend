const express = require('express');
const dotenv = require('dotenv');
const bcrypt = require('bcrypt');
const session = require('express-session');
dotenv.config();

const app = express();

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

app.use(session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: false
}));

app.use(async (req, res, next) => {
    if (req.session.userId) {
        const [rows] = await db.query('SELECT id, name FROM cvs WHERE id = ?', [req.session.userId]);
        res.locals.user = rows[0] || null;
    } else {
        res.locals.user = null;
    }
    next();
});

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

// register
app.get('/register', (req, res) => {
    res.render('register', { error: null });
});

app.post('/register', async (req,res) => {
    const { name, email, password } = req.body;
    const [existing] = await db.query('SELECT id FROM cvs WHERE email = ?', [email]);
    if (existing.length > 0) return res.render('register', { error: 'Email already registered' });
    const hashed = await bcrypt.hash(password, 10);
    await db.query('INSERT INTO cvs (name, email, password) VALUES (?, ?, ?)', [name, email, hashed]);
    res.redirect('/login');
});

// login
app.get('/login', (req, res) => {
    res.render('login', { error: null });
});

app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    const [rows] = await db.query('SELECT * FROM cvs WHERE email = ?', [email]);
    if (rows.length === 0) return res.render('login', { error: 'Invalid email or password' });
    const match = await bcrypt.compare(password, rows[0].password);
    if (!match) return res.render('login', { error: 'Invalid email or password' });
    req.session.userId = rows[0].id;
    res.redirect('/');
});

// logout
app.get('/logout', (req, res) => {
    req.session.destroy();
    res.redirect('/');
});

app.listen(process.env.PORT, () => {
    console.log(`server running on port ${process.env.PORT}`);
});