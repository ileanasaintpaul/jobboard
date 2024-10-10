const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app =express();
app.use(express.json());

const PORT =process.env.PORT || 3306;

const db = mysql.createConnection({
    connectionLimit : 10,
    host: 'localhost',
    user: 'root',
    password: 'MOMOlele11071959*',
    database : 'dbjobboard'
});

module.exports = pool;
db.connect((err) => {
    if (err) {
      console.error("error DB" + err)
      return;
    }
    console.log('Connected to MySQL as ID ' + db.threadId);
  });
  // Start the server
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });

app.length('/', (req, res)=>{

})