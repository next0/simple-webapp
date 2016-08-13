const express = require('express');
const morgan = require('morgan');

const PORT = 9000;

const app = express();

app.use(morgan('combined'));

app.get('/', function (req, res) {
    res.send('Hello World!!!');
});

app.listen(PORT, function () {
    console.log('simple webapp listening on port ' + PORT);
});
