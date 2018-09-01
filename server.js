const express = require('express')
const app = express();
const path = require('path');

const public = path.resolve()

// Server will us
app.use('/', express.static(public));
app.get('/', function(req, res) {
    res.sendFile(path.join(public, 'calculator.html'));
});

app.listen(8000);
console.log('Listening on port 8000');
