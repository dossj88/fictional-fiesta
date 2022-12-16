const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Doss2022$",
  database: "test"
});

connection.connect(function (err) {
  if (err) throw err;
});

module.exports = connection;