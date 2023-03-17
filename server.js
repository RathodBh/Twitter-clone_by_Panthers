const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')

app.use(express.static(__dirname + '/public'))
app.set('view engine','ejs')
// const conn = require('../connection/connectdb');


// my all end points

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile", profile)
app.get('/tweet',(req,res)=>{
res.render('tweet');
})

// dbms connection
const mysql = require('mysql2');
const conn1 = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "twitter_clone",
});

conn1.connect((err) => {
    {
        if (err) {
            console.log(err);
        }
        else {
            console.log(`Database connected on server`);
        }
    }

app.get('/tweet/getapi?',(req,res)=>
{
var twt_value=req.query.twt_value;
    console.log("api",twt_value);

    const qry1 = `INSERT INTO tweets(tweet)VALUES('${twt_value}');`
    // console.log(qry1);
    const oldUser =  queryExecuter(qry1)
    
})
})

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})

async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn1.query(query, (err, res) => {
            if (err) {
                rejects(err)
            }
            resolve(res);
        })
    })
}