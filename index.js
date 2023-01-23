const express = require('express');

const app = express();
const port = process.env.PORT || 5000;

// this is a comment
app.get('/', (_req, res) => {
  res.send('Hello World!');
});

app.listen(port, () => {
  console.log(`Example app listening at port:${port}`);
});
