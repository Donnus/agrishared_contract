const mysql = require('mysql')

const conn = mysql.createConnection({
  host:'localhost',
  user: 'root',
  password: '',
  database: 'agrishared_contracts'
})

module.exports = conn;
