const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "Doss2022$",
  database: "emp_tracker"
});

connection.connect(function (err) {
  if (err) throw err;
});

module.exports = connection;