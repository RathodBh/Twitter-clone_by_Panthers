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
const session = require('./connection/session')
// my all end points
app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile", profile)
app.get('/*',(req,res)=>{
    res.render('404')
})
app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})