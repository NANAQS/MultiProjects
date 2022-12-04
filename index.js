const express = require('express');
const app = express();


app.set('views', __dirname + '/views');
app.set('view engine', 'jsx');
var options = { beautify: true };
app.engine('jsx', require('express-react-views').createEngine(options));
app.set('view engine', 'ejs')
app.use(express.static('public'));

let data = require("./data.json")

app.get('/', (req, res, next) => {
 res.render('home.ejs');
});

app.get('/Angular', (req, res, next) => {
 res.render('Angular.ejs', data);
});

app.get('/Vue', (req, res, next) => {
 res.render('Vue.ejs', data);
});

app.get('/React', (req, res, next) => {
 res.render('React.jsx', data);
});

app.get('/Ejs', (req, res, next) => {
 res.render('Ejs.ejs', data);
});

app.get('/close', (req, res) => {
  res.redirect('https://www.geeksforgeeks.org')
  server.close(function() { console.log('Doh :('); })
})

let server = app.listen()