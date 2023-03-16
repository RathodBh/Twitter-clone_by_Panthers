const mysql = require('mysql2');
const conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "twitter_clone",
});

conn.connect((err) => {
    {
        if (err) {
            console.log(err);
        }
        else {
            console.log(`Database connected`);
        }
    }

})

module.exports = conn;