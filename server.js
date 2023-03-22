const express = require('express')
const app = express();
const PORT=3008
const conn = require('./connection/connectdb');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const dashboard = require('./Routes/dashboard')
const multer = require('multer')
const util = require('util')
app.use(express.static(__dirname + '/public'))

const path = require("path")
var query = util.promisify(conn.query).bind(conn)
app.set('view engine','ejs')
// const conn = require('../connection/connectdb');

const storages=multer.diskStorage({
    destination:(req,file,cb)=>{
        cb(null,"./public/uploads")
    },
    filename:(req,file,cb)=>{
        console.log(file);
        cb(null, Date.now() +path.extname(file.originalname))
    }
})
const uploads = multer({storage:storages})
app.post("/updateProfile",uploads.fields([{
    
    name: 'cover_image', maxCount: 1
  }, {
    name: 'profile_image', maxCount: 1
  }]), async(req,res)=>{
    // const registerUser = asyncHandler(async (req, res) => {
        try {
            const {name,user_email,user_bio, user_dob} = req.body;
            // async function edit(user_name, user_email,user_bio, user_dob) {
                try {
                    const file = req.files;
                    var users = await query(`select user_image as dp , cover_image as cover from users where id=6`);
                    console.log(users[0].dp);
                    console.log(users[0].cover);
                     console.log("here");
                     console.log(req.files);
                    // console.log(file.cover_image[0].filename);
                    // console.log(file.profile_image[0].filename);
                    // var cover_imgsrc =  'http://localhost:3008/uploads/' + file.cover_image[0].filename || users[0].cover ;
                    // var profile_imgsrc = 'http://localhost:3008/uploads/' + file.profile_image[0].filename ||  users[0].dp ;
                    var cover_imgsrc = req.files.cover_image;
                    var profile_imgsrc = req.files.profile_image;
                    console.log(cover_imgsrc);
                    console.log(profile_imgsrc);
                    if(cover_imgsrc){
                        cover_imgsrc = 'http://localhost:3008/uploads/' + file.cover_image[0].filename;
                    }else{
                        cover_imgsrc = users[0].cover;
                    }

                    if(profile_imgsrc ){
                        profile_imgsrc = 'http://localhost:3008/uploads/' + file.profile_image[0].filename
                    }else{
                        profile_imgsrc = users[0].dp 
                    }

                    console.log("Image uploaded")
                    

                    await query(`update users set name = "${name}", bio="${user_bio}" ,birth_date="${user_dob}",email="${user_email}" ,cover_image="${cover_imgsrc}", user_image="${profile_imgsrc}" WHERE id="6"`);
                    res.render("profile")
                    // const oldUser = await queryExecuter(qry1)
                    // res.render("dashboard", {cover_imgsrc,profile_imgsrc })
                    
                } catch (error) {
                    throw error;
                }
            // }
    
        } catch (error) {
            throw error;
        }
        var name = req.body.name;
    var mail = req.body.user_email;
    var bio = req.body.user_bio;
    var dob = req.body.user_dob;
    });

// my all end points

app.get("/users",async(req,res)=>{
    var getuser = await query(`select name,user_name,user_image,cover_image,birth_date,bio,email from users where id = 6`);
    console.log(getuser);
    res.json(getuser);


})


app.get("/tweets",async(req,res)=>{

    var tweets = await query(`select users.name as nm,users.user_name as unm,users.user_image as dp ,tweets.tweet as t,tweets.media_url as p,tweets.tweet_likes as l ,tweets.tweet_comments as c, tweets.tweet_retweets as r from users 
    left join tweets on users.id = tweets.user_id where tweets.user_id=6`);
    console.log(tweets);
    res.json(tweets);
})

app.use('/user',register)
app.use('/user-login',login)
app.use('/dashboard',dashboard)
app.use("/profile",profile)

app.get("/prof",async(req,res)=>{

    

    


    res.render('profile')
})

app.get("/login",(req,res)=>{
    res.render('login')
})

const storage=multer.diskStorage({
    destination:(req,file,cb)=>{
    cb(null,"./public/uploads")
    },
    filename:(req,file,cb)=>{
    console.log(file);
    cb(null, Date.now() +path.extname(file.originalname))
    }
    })
    const upload = multer({storage:storage})
    app.post("/upload",upload.single("dp"), async(req,res)=>{
    
    try {
   
    
    try {
    const file = req.file;
    console.log(file);

    var dp = 'http://localhost:3008/uploads/' + req.file.filename;
    console.log("Image uploaded")
    await query(`insert into users(name,email,password,user_name,user_image) values('Sagar Khatri','sagar18@gmail.com','hello','sagar_18','${dp}')`)
    
    res.send("success")
    
    } catch (error) {
    throw error;
    }
    
    
    } catch (error) {
    throw error;
    }
    });
    
app.get("/multer",(req,res)=>{
    res.render('multer')
})
app.get("/like",(req,res)=>{
    res.render('like')
})


app.listen(PORT,()=>{ console.log(`I am listining on ${PORT}`);
})