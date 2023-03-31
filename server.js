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
const forgetPassword = require('./Routes/forgetPassword');
var cookieParser = require('cookie-parser');
var session = require('express-session');
app.use(cookieParser());
app.use(session({
    secret: "secret key",
    resave: false,
    saveUninitialized: true,
}));




const path = require('path');
app.use(bodyParser.urlencoded({ extended: false }))
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

const multer = require('multer');

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
        await queryExecuter(`insert into   followers (user_id,follower_id,isdelete) values("${followerId}","${userId}","${0}");`);

        await queryExecuter(`insert into  following (user_id,following_id,isdelete) values("${userId}","${followerId}","${0}")`);

        let a = await queryExecuter(`UPDATE users SET following = following + ${cnt} WHERE id = ${userId}`);
        let b=await queryExecuter(`UPDATE users SET followers = followers + ${cnt} WHERE id = ${followerId}`);
        
    } else {
        cnt--;
        await queryExecuter(`delete from  followers  where user_id = ${followerId} AND follower_id = ${userId};`);
        await queryExecuter(`delete from  following  where user_id = ${userId} AND following_id = ${followerId} ;`);
        await queryExecuter(`UPDATE users SET following = following + ${cnt} WHERE id = ${userId}`);
        await queryExecuter(`UPDATE users SET followers = followers + ${cnt} WHERE id = ${followerId}`);
    }

    res.send({ message: "update" });
})

app.get('/getFollowUserData', async (req, res) => {

    let uid = req.session.user_id;
    var getuser = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(${uid})`);

    var getfollowerId = await queryExecuter(`select follower_id from followers where user_id =${uid}`);
    var followers = [];
    getfollowerId.forEach(id => {
        followers.push(id.follower_id);
    });

    let notFollow = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(SELECT following_id FROM following WHERE user_id='${uid}')`);
    

    // var notgetfollowerId = await queryExecuter(`SELECT f.follower_id from followers as f JOIN users as u ON u.id where`);
    // var notFollowers = [];
    // notgetfollowerId.forEach(id => {
    //     notFollowers.push(id.follower_id);
    // });

    res.json( { fuser: getuser, followers, unfollowers:notFollow});
    // res.render('profile',)
})

app.get('/dashboardData',async (req,res) => {
    const user_id = req.session.user_id
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login');
            return
        }
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name FROM tweets as t INNER JOIN users u ON t.user_id = u.id ORDER BY t.id DESC `;
        let follow_sel = `SELECT following.following_id FROM following WHERE following.user_id = ${user_id}`;
        const followingId = await queryExecuter(follow_sel);

        let allFollowingIds = [];
        for (let x of followingId) {
           allFollowingIds.push(x.following_id);
        }
        //get comments of every tweet
        let comments = 0;


        const all_tweet_data = await queryExecuter(sel_tweets);

        const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        let post_at = []
        //set month name and date
        all_tweet_data.forEach(async (tweet) => {



            const d = new Date(tweet.created_at);
            const d2 = new Date()

            const diffTime = Math.abs(d2 - d);
            const diffYears = ((d2.getFullYear() - d.getFullYear()) != 0) ? true : false;
            const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            const diffHours = Math.ceil(diffTime / (1000 * 60 * 60));
            const diffMinutes = Math.ceil(diffTime / (1000 * 60));

            function addZero(i) {
                if (i < 10) { i = "0" + i }
                return i;
            }

            if (diffMinutes < 60) {
                post_at.push(`${diffMinutes} Minutes ago`)
            }
            else if (diffHours < 24) {
                post_at.push(`${diffHours} Hours ago`)
            }
            else if (diffDays < 5) {
                // if (diffHours > 24) {
                const days = Math.floor(diffHours / 24)
                const hours = Math.ceil(diffHours % 24)
                post_at.push(`${days}d ${hours}h ago`)
                // }
            }
            else {
                let is_am_pm = "AM"
                let hours = d.getHours()
                if (hours >= 12) {
                    is_am_pm = "PM"
                    hours = hours - 12;
                }
                if (diffYears) {


                    post_at.push(`${hours}:${d.getMinutes()} ${is_am_pm} • ${month[d.getMonth()]} ${d.getDate()}, ${d.getFullYear()}`)
                } else {
                    post_at.push(`${hours}:${d.getMinutes()} ${is_am_pm} • ${month[d.getMonth()]} ${d.getDate()}`)

                }
            }
        })
        
        let all_comments = []
        let all_likes = []
        let all_retweets = []


        for (let x of all_tweet_data) {
            let tweet_id = x.id;
            let [sel_comments] = await queryExecuter(`SELECT count(*) as tot FROM   comments WHERE tweet_id = '${tweet_id}'`);
            let [sel_likes] = await queryExecuter(`SELECT count(*) as tot FROM   likes WHERE tweet_id = '${tweet_id}'`);

            all_comments.push(sel_comments.tot);
            all_likes.push(sel_likes.tot);
        }

        //DOne by jigar------------------------------


        const alltweetids = `select id from tweets`
        const alltweet_ids = await queryExecuter(alltweetids);

        let value = alltweet_ids.length
        var arr_of_liked = []
        var done = []
        for (let i = 0; i < value; i++) {

            const qrt = `SELECT *  FROM  likes where tweet_id=${alltweet_ids[i].id} and user_id=${user_id} and is_deleted=0;`

            const likeddata = await queryExecuter(qrt);
            arr_of_liked[i] = likeddata

        }

        let ispostlikebyuser = []
        ispostlikebyuser = arr_of_liked
        let arrtruefalse = []
        let arrlikeid = [];
        for (let j = 0; j < ispostlikebyuser.length; j++) {
            if (ispostlikebyuser[j].length) {
                let flaga = true
                arrtruefalse.push(flaga)

                var userlikedpost = ispostlikebyuser[j][0].tweet_id
                arrlikeid.push(userlikedpost)

            }
            else {
                let flaga = false
                arrtruefalse.push(flaga)
            }

        }

        // console.log(arrlikeid);

       
        const allretweertids = `select id from retweet`
        const allretweert_id = await queryExecuter(allretweertids);
        let some = allretweert_id.length
        var arr_of_retweet = [];

        for (let i = 0; i < some; i++) {

            const qrt = `SELECT *  FROM retweet where tweet_id=${allretweert_id[i].id} and user_id=${user_id} and is_deleted=0;`
    
            const retweetdata = await queryExecuter(qrt);
            arr_of_retweet[i] = retweetdata

        }

        let ispostretweetbyuser = []
        ispostretweetbyuser = arr_of_retweet
        let arrretweetid = [];
        for (let j = 0; j < ispostretweetbyuser.length; j++) {
            if (ispostretweetbyuser[j].length) {

                var userretweetpost = ispostretweetbyuser[j][0].tweet_id
                arrretweetid.push(userretweetpost)

            }
        }






        // let all_comments = []
        // let all_likes = []
        // let all_retweets = []
        // for (let x of all_tweet_data) {
        //     let tweet_id = x.id;
        //     let [sel_comments] = await queryExecuter(`SELECT count(*) as tot FROM   comments WHERE tweet_id = '${tweet_id}'`);
        //     let [sel_likes] = await queryExecuter(`SELECT count(*) as tot FROM   likes WHERE tweet_id = '${tweet_id}'`);

        //     all_comments.push(sel_comments.tot);
        //     all_likes.push(sel_likes.tot);
        // }

        //i need to show the get request for register page
        let flag = false;
        
        return res.json({ tweet_data: all_tweet_data, following_data:allFollowingIds, post_date: post_at, all_comments, all_likes, arrtruefalse, arrlikeid ,arrretweetid});
    }


    catch (err) {   
        console.log("Error Dashboard:", err);
    }
})


app.get("*", (req, res) => {
    res.render("404")
})
app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
})
