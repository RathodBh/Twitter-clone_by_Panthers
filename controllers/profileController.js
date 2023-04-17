const { queryExec } = require('../connection/conn');

const express = require('express')
const app = express();
const util = require('util')
const asyncHandler = require("express-async-handler");
const session = require('express-session');



const getProfiledata = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let user_id = req.session.user_id
    var users = await queryExec(`select * from users where id=${user_id}`);

    res.json(users)
    // let flag = false
});
const editprofile = asyncHandler(async (req, res) => {
    //i need to show the get request for register page
    let user_id = req.session.user_id
    var users = await queryExec(`select * from users where id=${user_id}`);

    res.json(users)
    // let flag = false
});
const getProfile = asyncHandler(async (req, res) => {

    //i need to show the get request for register page
    let db = `twitter_clone`;
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login')
        }
        const user_id = req.session.user_id
        // let sel_q = `SELECT id,name,user_image,user_name FROM   users `;
        let sel_tweets = `select * from tweets where user_id=${user_id} order by id DESC`;
        const all_tweet_data = await queryExec(sel_tweets);
        // for retweet
        let sel_retweets = `SELECT * FROM  retweet inner join  tweets on retweet.tweet_id=tweets.id where retweet.user_id='${user_id}'AND retweet.is_deleted='0' order by retweet.id DESC`;
        const all_retweet_data = await queryExec(sel_retweets);


        // //for retweet 
        // let sel_retweets = `SELECT * FROM  retweet inner join  tweets on retweet.tweet_id = tweets.id where retweet.user_id = '${user_id}'AND retweet.is_deleted = '0' order by retweet.id DESC`;
        // const all_retweet_data = await queryExec(sel_retweets);

        var cnt = await queryExec(`SELECT count(id) as follower  FROM twitter_clone.followers where user_id=${user_id} and isdelete='0';`)
        console.log("cnt value ", cnt[0].follower);
        let follower = cnt[0].follower

        var flw = await queryExec(`SELECT count(id) as folowing FROM twitter_clone.following where user_id=${user_id};`)
        console.log("flw value ", flw[0].folowing);
        let folowing = flw[0].folowing

        console.log("following=" + folowing + " followers=" + follower);
        const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        let post_at = []
        //set month name and date
        all_tweet_data.forEach((tweet) => {
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


        const alltweetids = `select id from tweets where user_id=${user_id}`
        const alltweet_ids = await queryExec(alltweetids);

        let value = alltweet_ids.length
        var arr_of_liked = []
        var done = []
        for (let i = 0; i < value; i++) {

            const qrt = `SELECT *  FROM  likes where tweet_id=${alltweet_ids[i].id} and user_id=${user_id} and is_deleted=0;`

            const likeddata = await queryExec(qrt);
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
        let some = alltweet_ids.length
        var arr_of_retweet = [];

        for (let i = 0; i < some; i++) {

            const qrt = `SELECT *  FROM retweet where tweet_id=${alltweet_ids[i].id} and user_id=${user_id} and is_deleted=0;`

            const retweetdata = await queryExec(qrt);
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

        var users = await queryExec(`select * from users where id=${user_id}`);
        let followuser = await queryExec(`select * from users where id not in(${user_id}) limit 3`)
        var getfollowerId = await queryExec(`select follower_id from followers where user_id =${user_id} and isdelete='0'`);

        for (let b = 0; b < all_retweet_data.length; b++) {
            var twt_user = await queryExec(`SELECT * FROM  retweet inner join  tweets on retweet.tweet_id=tweets.id inner join  users on tweets.user_id=users.id where retweet.user_id='${user_id}' AND retweet.is_deleted='0' order by retweet.id DESC `);
        }

        // for retweet likes in profile
        let retwt_like = await queryExec(`select likes.tweet_id from retweet inner join likes on retweet.tweet_id=likes.tweet_id where likes.is_deleted='0' and retweet.is_deleted='0' and retweet.user_id='${user_id}' and likes.user_id='${user_id}'; `)
        //i need to show the get request for register page
        let changepass = false
        res.render('profile', { folowing, follower, retwt_like: retwt_like, twt_user: twt_user, all_retweet: all_retweet_data, tweet_data: all_tweet_data, post_date: post_at, arrlikeid, arrretweetid, users, changepass, fuser: followuser, followers: getfollowerId });

    } catch (err) {
        console.log("Error ProfileController:", err);
    }


});

const updateProfilepoint = asyncHandler(async (req, res) => {
    try {
        const arr = { name, user_email, user_bio, user_dob } = req.body;


        try {
            let uid = req.query.uid || 3;
            const file = req.files;
            var users = await queryExec(`select user_image as dp , cover_image as cover from users where id=?`, [uid]);

            var cover_imgsrc = req.files.cover_image;
            var profile_imgsrc = req.files.profile_image;

            if (cover_imgsrc) {
                cover_imgsrc = '/uploads/' + file.cover_image[0].filename;
            } else {
                cover_imgsrc = users[0].cover;
            }

            if (profile_imgsrc) {
                profile_imgsrc = '/uploads/' + file.profile_image[0].filename
            } else {
                profile_imgsrc = users[0].dp
            }




            await queryExec(`update users set  bio=? ,birth_date=? ,cover_image=?, user_image=? WHERE id=?`, [user_bio, user_dob, cover_imgsrc, profile_imgsrc, uid]);
            res.redirect("prof")


        } catch (error) {
            throw error;
        }


    } catch (error) {
        throw error;
    }
})


const getUserInfo = asyncHandler(async (req, res) => {
    let userId = req.session.user_id;

    let user = await queryExec(`SELECT name,user_name,user_image,created_at,country,email from users WHERE id = ${userId}`)

    return res.json({ name: user[0].name, username: user[0].user_name, user_img: user[0].user_image, created_at: user[0].created_at, country: user[0].country, email: user[0].email })
})


const getTagetProfiledata = async (req, res) => {


    
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login')
        }
        let user_id = req.query.id;
        console.log("search", user_id);

    } catch (err) {
        console.log("Error ProfileController:", err);
    }
    return res.json({ msg: "success" }), console.log("hello");;


}




const getTargetProfile = asyncHandler(async (req, res) => {
    let db = `twitter_clone`;
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login')
        }
        let user_id = req.params.id;
        if (user_id == req.session.user_id) {
            return res.redirect('/profile/user');

        }
        let sel_tweets = `select * from tweets where user_id=? order by id DESC`;
        const all_tweet_data = await queryExec(sel_tweets, [user_id]);



        const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        let post_at = []
        //set month name and date
        all_tweet_data.forEach((tweet) => {
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


        var uid = req.session.user_id
        const alltweetids = `select id from tweets where user_id=${user_id}`
        const alltweet_ids = await queryExec(alltweetids);

        let value = alltweet_ids.length
        var arr_of_liked = []
        var done = []
        for (let i = 0; i < value; i++) {

            const qrt = `SELECT *  FROM  likes where tweet_id=${alltweet_ids[i].id} and user_id=${uid} and is_deleted=0;`

            const likeddata = await queryExec(qrt);
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

        let some = alltweet_ids.length
        var arr_of_retweet = [];

        for (let i = 0; i < some; i++) {

            const qrt = `SELECT *  FROM retweet where tweet_id=${alltweet_ids[i].id} and user_id=${uid} and is_deleted=0;`

            const retweetdata = await queryExec(qrt);
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

        console.log("hello here 1");
        var users = await queryExec(`select * from users where id=${user_id}`);
        let followuser = await queryExec(`select * from users where id not in(${user_id}) limit 3`)
        var getfollowerId = await queryExec(`select follower_id from followers where user_id =${user_id}`);

        //for retweet
        let sel_retweets = `SELECT * FROM  retweet inner join  tweets on retweet.tweet_id = tweets.id where retweet.user_id = '${uid}'AND retweet.is_deleted = '0' order by retweet.id DESC`;
        const all_retweet_data = await queryExec(sel_retweets);
        // followers count
        var cnt = await queryExec(`SELECT count(id) as follower  FROM twitter_clone.followers where user_id=${user_id} and isdelete='0';`)
        console.log("cnt value gt prof ", cnt[0].follower);
        let follower = cnt[0].follower

        var flw = await queryExec(`SELECT count(id) as folowing FROM twitter_clone.following where user_id=${user_id};`)
        console.log("flw value  gt prof", flw[0].folowing);
        let folowing = flw[0].folowing

        console.log("following target=" + folowing + "target followers=" + follower);
        // end

        for (let b = 0; b < all_retweet_data.length; b++) {
            var twt_user = await queryExec(`SELECT * FROM  retweet inner join  tweets on retweet.tweet_id=tweets.id inner join  users on tweets.user_id=users.id where retweet.user_id='${uid}' AND retweet.is_deleted='0' order by retweet.id DESC `);
        }
        let retwt_like = await queryExec(`select likes.tweet_id from retweet inner join likes on retweet.tweet_id=likes.tweet_id where likes.is_deleted='0' and retweet.is_deleted='0' and retweet.user_id='${uid}' and likes.user_id='${uid}'; `)
        res.render('targetProfile', { folowing, follower, retwt_like: retwt_like, twt_user: twt_user, all_retweet: all_retweet_data, tweet_data: all_tweet_data, post_date: post_at, arrlikeid, users, arrretweetid, fuser: followuser, followers: getfollowerId })



    }
    catch (err) {
        return err
    }
})




// app.get("/user-dash",async(req,res)=>{
const fflist = asyncHandler(async (req, res) => {

    let us = req.session.user_id;
    uid = req.query.id;

    if (req.query.id) {
        uid = req.query.id;
    
    var getuser = await queryExec(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(?)`, [uid]);
    var curuser = await queryExec(`select id,name,user_name,user_image from users where id = ?`, [uid]);
    var getfollowerId = await queryExec(`select follower_id from followers where user_id =?`, [uid]);
    var followers = [];
    getfollowerId.forEach(id => {
        followers.push(id.follower_id);
    });
    var following = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users INNER join following on users.id = following.following_id where following.user_id = ?`, [uid])
        var getuser = await queryExec(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(${uid})`);
        var curuser = await queryExec(`select id,name,user_name,user_image from users where id = '${uid}'`);
        var getfollowerId = await queryExec(`select follower_id from followers where user_id =${uid}`);
        var followers = [];
        getfollowerId.forEach(id => {
            followers.push(id.follower_id);
        });
        var following = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users INNER join following on users.id = following.following_id where following.user_id = '${uid}'`)

        var follower = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users left join followers on users.id = followers.follower_id where followers.user_id = ${uid}`)

        var user_following = await queryExec(`SELECT following_id as id  FROM twitter_clone.following where user_id=${us};`)

        let idx1 = 0;
        let idx2 = 0;
        const common = [];
        const uncommon = [];
        for (let i = 0; i < following.length; i++) {
            let flag = false;
            for (let j = 0; j < user_following.length; j++) {
                console.log(user_following[j].id + "==" + following[i].id);
                if (user_following[j].id == following[i].id) {
                    // console.log("same"+following[i].id);
                    // console.log("same user"+user_following[j].id);
                    common[idx1++] = following[i];
                    flag = true;
                    // console.log("following same=" + following[i].name + "," + following[i].id );
                    break;
                }

            }
            if (flag == false) {
                uncommon[idx2++] = following[i];
            }
        }
        // console.log("length=", common.length);

        res.render('follow_following_target', { common: common, uncommon: uncommon, fuser: getuser, followers, following, follower, userInfo: curuser[0] })

    } else {
        console.log("elseeee");
        var getuser = await queryExec(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(${us})`);
        var curuser = await queryExec(`select id,name,user_name,user_image from users where id = '${us}'`);
        var getfollowerId = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users left join followers on users.id = followers.follower_id where followers.user_id = ${us} and followers.isdelete='0'`);
        var followerss = [];
        getfollowerId.forEach(id => {
            followerss.push(id.follower_id);
        });

        var following = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users INNER join following on users.id = following.following_id where following.user_id = '${us}'`)
        // console.log("user_following",user_following);
        // console.log("following",following);
        res.render('follow_following', { fuser: getuser, followers: getfollowerId, following, follower, userInfo: curuser[0] })




        // console.log(common);
        // console.log(uncommon);

        // var follower = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users left join followers on users.id = followers.follower_id where followers.user_id = ${uid}`)

        // res.render('follow_following', { fuser: getuser, followers, following, follower, userInfo: curuser[0] })

    }

    var follower = await queryExec(`select users.id,users.name,users.user_name,users.user_image from users left join followers on users.id = followers.follower_id where followers.user_id = ?`, [uid])

})




module.exports = { fflist, getProfile, getProfiledata, updateProfilepoint, editprofile, getUserInfo, getTagetProfiledata, getTargetProfile }



