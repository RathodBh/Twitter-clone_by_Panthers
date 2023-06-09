const express = require('express')
// const helmet = require("helmet");
const bodyParser = require('body-parser')
require('dotenv').config("./.env")
const app = express();
const PORT = process.env.PORT
const {queryExec} = require('./connection/conn');
const register = require('./Routes/register')
const login = require('./Routes/login')
const profile = require('./Routes/profile')
const commentInfo = require('./Routes/commentInfo')
const dashboard = require('./Routes/dashboard')
const home = require('./Routes/home')
const logout = require('./Routes/logout')
const follow = require('./Routes/follow')
const setting = require('./Routes/setting')
const forgetPassword = require('./Routes/forgetPassword');
const notification = require('./Routes/notification')
var cookieParser = require('cookie-parser');
var session = require('express-session');
const util = require('util')
app.use(cookieParser());
// app.use(helmet({ contentSecurityPolicy: false, }));
app.use(session({
    secret: process.env.SECRET_KEY,
    resave: false,
    saveUninitialized: true,
}));

const path = require('path');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.urlencoded({ extended: true }))
app.use(bodyParser.json());
app.use(express.static(__dirname + '/public'))
app.set('view engine', 'ejs')
const bcrypt = require('bcrypt');
const crypto = require('crypto');



app.set('view engine','ejs')

// my all end points
app.set('view engine', 'ejs')
app.use('/user', register)
app.use('/setting', setting)
app.use('/user-login', login)
app.use('/user-logout', logout)
app.use('/', home)
app.use('/dashboard', dashboard)
app.use("/profile", profile)
app.use("/tweet", commentInfo)
app.use("/forget", forgetPassword)
app.use("/follow", follow)
app.use("/notification", notification)
const multer = require('multer');
const { protect } = require('./Middlewares/auth');


app.set('view engine', 'ejs')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/assets/images")
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname))
    }
})
const uploads = multer({ storage: storage })


app.post("/updateProfile", uploads.fields([{

    name: 'cover_image', maxCount: 1
}, {
    name: 'profile_image', maxCount: 1
}]), async (req, res) => {

    try {
        const { name } = req.body;
        const arr = { user_email, user_bio, user_dob } = req.body;

        try {
            let uid = req.session.user_id
            const file = req.files;
            var users = await queryExec(`select user_image as dp , cover_image as cover from users where id=?`,[uid]);

            var cover_imgsrc = req.files.cover_image;
            var profile_imgsrc = req.files.profile_image;
            if (cover_imgsrc) {
                cover_imgsrc = '/assets/images/' + file.cover_image[0].filename;
            } else {
                cover_imgsrc = users[0].cover;
            }

            if (profile_imgsrc) {
                profile_imgsrc = '/assets/images/' + file.profile_image[0].filename
            } else {
                profile_imgsrc = users[0].dp
            }



            await queryExec(`update users set name=? , bio=? ,birth_date=? ,cover_image=?, user_image=? WHERE id=?`,[name,user_bio,user_dob,cover_imgsrc,profile_imgsrc,uid]);

            res.redirect('/profile/user')


        } catch (error) {
            throw error;
        }


    } catch (error) {
        throw error;
    }
})

app.get("/srch?", async (req, res) => {
    var srchval = req.query.val;
    var sql = `SELECT id,name,user_name,user_image FROM users where user_name like ? or name like ? `;
    var matchedResult = await queryExec(sql,["%"+srchval+"%","%"+srchval+"%"]);
    res.json(matchedResult)

})
app.get("/trend",(req, res)=>{
    const token = req.session.email

    if (!token) {
        res.redirect('/user-login');
        return
    }
    if(req.query.srchval){
        return res.render("trending",{sel:req.query.srchval})
    }

    else
    return res.render("trending",{sel:""})
})
//vivek (Follow-Unfollow)
app.get("/addfollow", async (req, res) => {
    let cnt = 0;
    let userId = req.session.user_id
    let followerId = req.query.followerId
    
    if (req.query.flag == 0) {
        cnt++;
        await queryExec(`insert into followers (user_id,follower_id,isdelete) values(?,?,"${0}");`,[followerId,userId]);
        await queryExec(`insert into following (user_id,following_id,isdelete) values(?,?,"${0}")`,[userId,followerId]);
        let a = await queryExec(`UPDATE users SET following = following + ${cnt} WHERE id = ?`,[userId]);
        let b=await queryExec(`UPDATE users SET followers = followers + ${cnt} WHERE id = ?`,[followerId]);
        let notify_follow =  await queryExec(`insert into notify(user_id,target_id,notify_msg) values(?,?,'Started following you !')`,[userId,followerId]);
    } else {
        cnt--;
        await queryExec(`delete from  followers  where user_id = ? AND follower_id = ?`,[followerId,userId]);
        await queryExec(`delete from  following  where user_id = ? AND following_id = ? `,[userId,followerId]);
        await queryExec(`UPDATE users SET following = following + ${cnt} WHERE id = ?`,[userId]);
        await queryExec(`UPDATE users SET followers = followers + ${cnt} WHERE id = ?`,[followerId]);
        let notify_follow =  await queryExecuter(`insert into notify(user_id,target_id,notify_msg) values('${userId}','${followerId}','Unfollowing you !')`);
    }

    return res.send({ message: "update" });
})



// for time zone
function calcTime(city, offset) {

    // create Date object for current location
    d = new Date();
    
    // convert to msec
    // add local time zone offset
    // get UTC time in msec
    utc = d.getTime() + (d.getTimezoneOffset() * 60000);
    
    // create new Date object for different city
    // using supplied offset
    nd = new Date(utc + (3600000*offset));
    
    // return time as a string
    return 'The local time in ' + city + ' is ' + nd.toLocaleString();
    
    }
    
    // get Bombay time
    // console.log(calcTime('Bombay', +5.5));
    

// for time zone end
// try end
// app.get("/img/:name", (req, res)=>{
//     let name = req.params.name;
//     res.render("img",{name})
// })
app.get("*", (req, res) => {
    res.render("404")
})
app.listen(PORT, () => {
    console.log(`I am listining on ${PORT},\n Click here http://localhost:3008/user-login`);
});



