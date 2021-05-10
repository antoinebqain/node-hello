const { exception } = require('console');
const http = require('http');
const port = 80;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = `App Version ${process.env.AppVersion}`
  throw exception('test')
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
