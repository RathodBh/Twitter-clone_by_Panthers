const express = require('express')
// const helmet = require("helmet");
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
const follow = require('./Routes/follow')
const forgetPassword = require('./Routes/forgetPassword');
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
// app.use(helmet({ contentSecurityPolicy: false, }));
app.use(session({
    secret: "secret key",
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
// my all end points
app.set('view engine', 'ejs')
app.use('/user', register)
app.use('/user-login', login)
app.use('/user-logout', logout)
app.use('/dashboard', dashboard)
app.use("/profile", profile)
app.use("/tweet", commentInfo)
app.use("/forget", forgetPassword)
app.use("/follow", follow)

const multer = require('multer');
const { protect } = require('./Middlewares/auth');

async function queryExecuter(query) {
    return new Promise((resolve, rejects) => {
        conn.query(query, (err, result) => {
            if (err) {
                rejects(err);
            }
            resolve(result);
        });
    })
}
app.set('view engine', 'ejs')
// const conn = require('../connection/connectdb');

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
            var users = await queryExecuter(`select user_image as dp , cover_image as cover from users where id=${uid}`);

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



            await queryExecuter(`update users set name="${name}" , bio="${user_bio}" ,birth_date="${user_dob}" ,cover_image="${cover_imgsrc}", user_image="${profile_imgsrc}" WHERE id=${uid}`);

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
    var sql = `select user_name from  users`;
    var names = await queryExecuter(sql);
    var arr = [];
    var newArr = [];
    for (let i = 0; i < names.length; i++) {
        arr.push(names[i].user_name)
    }
    var counter = 0;
    var arrVal;
    for (let j = 0; j < arr.length; j++) {
        var arrValLength = arr[j].length;
        arrVal = arr[j];
        for (let k = 0; k < srchval.length; k++) {
            if (arrVal.includes(srchval[k])) {
                var firstIndex = arrVal.indexOf(srchval[k]);
                arrVal = arrVal.substr(firstIndex + 1, arrValLength + 1)
                counter++;
            }
        }
        if (counter == srchval.length) {
            newArr.push(arr[j])
        }
        counter = 0;
    }
    var matchedResult = [];
    for (let m = 0; m < newArr.length; m++) {
        var sql2 = `SELECT id,name,user_name,user_image FROM  users where user_name="${newArr[m]}"`;;
        resultantName = await queryExecuter(sql2);
        matchedResult.push(resultantName)
    }
    res.json(matchedResult)

})

//vivek (Follow-Unfollow)
app.get("/addfollow", async (req, res) => {
    let cnt = 0;
    let userId = req.session.user_id
    let followerId = req.query.followerId
    if (req.query.flag == 0) {
        cnt++;
        await queryExecuter(`insert into followers (user_id,follower_id,isdelete) values("${followerId}","${userId}","${0}");`);
        await queryExecuter(`insert into following (user_id,following_id,isdelete) values("${userId}","${followerId}","${0}")`);
        let a = await queryExecuter(`UPDATE users SET following = following + ${cnt} WHERE id = ${userId}`);
        let b=await queryExecuter(`UPDATE users SET followers = followers + ${cnt} WHERE id = ${followerId}`);
        
    } else {
        cnt--;
        await queryExecuter(`delete from  followers  where user_id = ${followerId} AND follower_id = ${userId};`);
        await queryExecuter(`delete from  following  where user_id = ${userId} AND following_id = ${followerId} ;`);
        await queryExecuter(`UPDATE users SET following = following + ${cnt} WHERE id = ${userId}`);
        await queryExecuter(`UPDATE users SET followers = followers + ${cnt} WHERE id = ${followerId}`);
    }

    return res.send({ message: "update" });
})

// try
// app.get("/prof",async(req,res)=>{

    
//     let uid = req.query.uid || 3;
//     var getuser = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(3)`);
//     var getfollowerId = await queryExecuter(`select follower_id from followers where user_id =${uid}`);
//     var followers =[];
//     getfollowerId.forEach(id => {
//         followers.push(id.follower_id);
//     });

//     res.render('profile',{fuser:getuser,followers})
// })







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
app.get("*", (req, res) => {
    res.render("404")
})
app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
    console.log(`CLick here http://localhost:3008/user-login`);
})


