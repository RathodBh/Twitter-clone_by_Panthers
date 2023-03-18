const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')
const queryExecuter = require('./queryExecute/queryExecuter')
app.use(express.static(__dirname + '/public'))
app.set('view engine','ejs')
// const conn = require('../connection/connectdb');


// my all end points

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile", profile)
app.get('/tweet',(req,res)=>{ 
    console.log("hello");
res.render('tweet');
})



app.get('/tweet/getapi?',(req,res)=>
{
var twt_value=req.query.twt_value;
    console.log("api",twt_value);

    // const qry1 = `INSERT INTO tweets(tweet)VALUES('${twt_value}');`
    // console.log(qry1);
    // const oldUser =  queryExecuter(qry1)
})

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})

