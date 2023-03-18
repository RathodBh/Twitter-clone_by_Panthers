const mysql = require("mysql2");
var conn = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"root",
    database:"twitter_clone"
})
conn.connect((err)=>{
    if(err) throw err;
    console.log("Database connected");
})
module.exports = {conn};