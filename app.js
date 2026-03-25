const express = require('express');
const dotenv = require('dotenv');
dotenv.config();

const app = express();

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

const db = require('./db');

// home - list all CVs
app.get('/', async(req, res) => {
    const [cvs] = await db.query('SELECT id, name, email, language FROM cvs');
    res.render('index', { cvs });
});

app.listen(process.env.PORT, () => {
    console.log(`server running on port ${process.env.PORT}`);
});