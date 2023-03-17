const express = require('express')
const app = express();
const PORT=3008
const register = require('./Routes/register')
const login = require('./Routes/login')
const home = require('./Routes/home')
app.use(express.static(__dirname + '/public'))
app.set('view engine','ejs')
const conn = require("./connection/connectdb");


// my all end points

app.use('/user',register)
app.use('/user-login',login)
app.use('/user-home',home)
app.use('/editProfile',editProfile)

app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})