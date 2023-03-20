const express = require('express')
const bodyParser = require('body-parser')
const app = express();
const PORT = 3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const commentInfo = require('./Routes/commentInfo')
const dashboard = require('./Routes/dashboard')
const logout = require('./Routes/logout')
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
app.use(session({
secret:"secret key",
resave:false,
saveUninitialized:true,

}));


app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.urlencoded({ extended: true }))
app.use(bodyParser.json());
app.use(express.static(__dirname + '/public'))
app.set('view engine', 'ejs')
const bcrypt = require('bcrypt');
const crypto = require('crypto');

// my all end points
app.use('/user', register)
app.use('/user-login', login)
app.use('/dashboard', dashboard)
app.set('view engine','ejs')
// // const session = require('./connection/session')
// const bcrypt = require('bcrypt');
// const crypto = require('crypto');
// my all end points
app.use('/user',register)
app.use('/user-login',login)
app.use('/user-logout',logout)
app.use('/dashboard',dashboard)
app.use("/profile", profile)
app.use("/tweet", commentInfo)

// async function queryExecuter(query) {
//     return new Promise((resolve, rejects) => {
//         conn.query(query, (err, result) => {
//             if (err) {
//                 rejects(err);
//             }
//             resolve(result);
//         });
//     })
// }



app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
})