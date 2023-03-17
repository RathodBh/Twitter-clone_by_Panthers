const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')
const multer = require('multer')
app.use(express.static(__dirname + '/public'))

app.set('view engine','ejs')
// const conn = require('../connection/connectdb');


// my all end points

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile",profile)


app.get("/login",(req,res)=>{
    res.render('login')
})

const upload = multer({
    storage:multer.diskStorage({
        destination:function(req,file,callback){
            callback(null,"uploads")
        },
        filename:function(req,file,callback){
            callback(null,file.fieldname+"-"+Date.now()+".jpg")
        }
    })
}).single("uploaded_file");

app.post("/upload",upload,(req,res)=>{
    console.log(req.body,req.file);
    res.send("file uploads")
})

app.get("/multer",(req,res)=>{
    res.render('multer')
})


app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})