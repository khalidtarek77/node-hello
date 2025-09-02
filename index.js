require('newrelic');  // <-- add this line first
const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('Hello World!'));
app.listen(3000, () => console.log('App running on port 3000'));

const http = require('http');
const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hello Node!\n'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
