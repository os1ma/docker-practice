const express = require('express')
const mysql = require('mysql');

const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello Express!')
})

app.get('/users', (req, res) => {
  const connection = mysql.createConnection({
    host     : 'my-db',
    user     : 'root',
    password : 'root',
    database : 'my_db'
  });

  connection.connect();

  connection.query('SELECT id, name FROM users', (error, results) => {
    if (error) throw error;

    console.log('results : ', results);

    res.send(results)
  });

  connection.end();
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
