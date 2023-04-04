const conn = require('../connection/connectdb');
// const queryExecuter = require('../queryExecute/queryExecuter')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");

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


var tweet_ids
const getpostLike1 = asyncHandler(async (req, res) => {
    // console.log("herer");
    try {
        const token = req.session.email
        const user_id = req.session.user_id
        if (!token) {
            res.redirect('/user-login');
            return
        }
        const { data } = req.body;
        var tweet_id = data.tweet_id
        tweet_ids = data.tweet_id
        if (data.like == true) {
            const qrt = `SELECT  * FROM  likes where tweet_id=${data.tweet_id} and user_id=${user_id}`

            const like_data = await queryExecuter(qrt);
            
            
            if (like_data.length == 0) {
                console.log("if");
                const ins_qrt = `INSERT INTO likes (user_id,tweet_id,created_at) values (${user_id},${data.tweet_id},NOW())`

                const like_entry = await queryExecuter(ins_qrt);

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);

                var alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount} where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);
                let flag = true
                res.json({ flag, alllikecount })
            }
            else if (like_data.length == 1) {
                console.log("else if");

                const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
                const tweet_like_count = await queryExecuter(select_tweet_like);
                alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


                const Update_unlike = `Update likes Set updated_at= Now(),is_deleted=0  where tweet_id=${data.tweet_id}`
                const Update_unlike_entry = await queryExecuter(Update_unlike);
                let flag = true
                res.json({ flag, alllikecount })
            }

        }

        else {
            console.log("Else");
            const select_tweet_like = `select tweet_likes from tweets where id=${data.tweet_id}`
            const tweet_like_count = await queryExecuter(select_tweet_like);
            alllikecount = tweet_like_count[0].tweet_likes
            alllikecount = alllikecount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_likes=${alllikecount}  where id=${data.tweet_id}`
            const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


            const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
            const Update_unlike_entry = await queryExecuter(Update_unlike);
            let flag = false
            res.json({ flag, alllikecount })
        }

    } catch (error) {
        console.log(error);
    }

})


const getpostRetweet = asyncHandler(async (req, res) => {
    // console.log("herer");
    try {
        const token = req.session.email
        const user_id = req.session.user_id
        if (!token) {
            res.redirect('/user-login');
            return
        }
        const { data } = req.body;

        var tweet_id = data.tweet_id
        tweet_ids = data.tweet_id
        if (data.retweet == true) {
            const qrt = `SELECT  * FROM retweet where tweet_id=${data.tweet_id} and user_id=${user_id}`

            const like_data = await queryExecuter(qrt);


            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO retweet (user_id,tweet_id,created_at) values (${user_id},${data.tweet_id},NOW())`

                const like_entry = await queryExecuter(ins_qrt);

                const select_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
                const tweet_retweet_count = await queryExecuter(select_retweet);

                var allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount + 1
                console.log(allretweetcount);

                const up_tweets_retweet = `Update tweets Set tweet_retweets=${allretweetcount} where id=${data.tweet_id}`
                const Update_entry_retweet = await queryExecuter(up_tweets_retweet);
                let flag = true
                res.json({ flag, allretweetcount })
            }
            else if (like_data.length == 1) {

                const select_tweet_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
                const tweet_retweet_count = await queryExecuter(select_tweet_retweet);
                allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount + 1


                const up_tweets_retweet = `Update tweets Set tweet_retweets=${allretweetcount}  where id=${data.tweet_id}`
                const Update_entry_tweet = await queryExecuter(up_tweets_retweet);


                const Update_retweet = `Update retweet Set updated_at=Now(),is_deleted=0  where tweet_id=${data.tweet_id}`
                const Update_unlike_entry = await queryExecuter(Update_retweet);
                let flag = true
                res.json({ flag, allretweetcount })
            }

        }

        else {
            const select_tweet_retweet = `select tweet_retweets from tweets where id=${data.tweet_id}`
            const tweet_retweet_count = await queryExecuter(select_tweet_retweet);
            allretweetcount = tweet_retweet_count[0].tweet_retweets
            allretweetcount = allretweetcount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_retweets=${allretweetcount}  where id=${data.tweet_id}`
            const Update_entry_tweet = await queryExecuter(up_tweets_tweetlike);


            const Update_unlike = `Update retweet Set updated_at=Now(),is_deleted=1  where tweet_id=${data.tweet_id}`
            const Update_unlike_entry = await queryExecuter(Update_unlike);
            let flag = false
            res.json({ flag, allretweetcount })
        }

    } catch (error) {
        console.log(error);
    }

})






var tweet_ids





const getDashboard = asyncHandler(async (req, res) => {
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login');
        return
    }
    res.render('dashboard')
    const user_id = req.session.user_id
    let db = `twitter_clone`;
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login');
            return
        }
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name FROM   tweets as t LEFT JOIN   users u ON t.user_id = u.id ORDER BY t.id DESC `;

        //get comments of every tweet
        let comments = 0;

        const all_tweet_data = await queryExecuter(sel_tweets);

        let folllowing = `SELECT * FROM twitter_clone.following inner join users on users.id=following.following_id inner join tweets on following.following_id=tweets.user_id where following.user_id='${user_id}' and following.isdelete='0' order by tweets.id desc;`;
        const following_data =await queryExecuter(folllowing);

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






     
        //i need to show the get request for register page
        let flag = false;
// console.log("following user data=",following_data);
        return res.render('dashboard', {following_data:following_data, tweet_data: all_tweet_data, post_date: post_at, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid });
    }


    catch (err) {
        console.log("Error Dashboard:", err);
    }
    //i need to show the get request for register page
});

const tweetit = asyncHandler(async function (req, res) {
    // console.log(req.file.path);
    // i need to show the get request for tweet page
    let flag = false;
    console.log("tweet");
    res.render('tweet', { flag })
});

// const tweetit1 = asyncHandler(async function (req, res)  {
//     // console.log(req.file.path);
//     // i need to show the get request for tweet page
//     let flag = false;
//     console.log("hello,hii");
//     res.render('dashboard',{flag})
// });


const postTweet = asyncHandler(async (req, res) => {
    // console.log('req.file :>> ', req);
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
        return;
    }


    const file = req.files;
    const user_id = req.session.user_id;
    const tweet = req.body.tweet_text || "";

    if (file.length == 0) {
        conn.query('INSERT INTO  tweets (user_id,tweet,media_type,created_at) VALUES (?,?,?,NOW())', [user_id, tweet, 'text']);
    } else {
        for (var i = 0; i < file.length; i++) {
            const filename = file[i].originalname;
            const filepath = file[i].path;
            const filetype = file[i].mimetype;
            const filename1 = file[i].filename
            var imgsrc = '/assets/images/' + filename1;
            const sql = 'INSERT INTO  tweets (user_id,tweet, media_url,media_type,created_at) VALUES (?,?, ?, ?,NOW())';


            const data = [user_id, tweet, imgsrc, filetype];
            conn.query(sql, data);
        }
    }

    res.redirect('/dashboard');
})

const getDashboardFetchRequest = asyncHandler(async (req, res) =>{
    const user_id = req.session.user_id
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login');
            return
        }
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name,u.bio,u.following,u.followers FROM tweets as t INNER JOIN users u ON t.user_id = u.id ORDER BY t.id DESC `;
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
            const qrt = `SELECT *  FROM  likes where tweet_id='${alltweet_ids[i].id}' and user_id='${user_id}' and is_deleted='0';`
            
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

       
        const allretweertids = `select tweet_id from retweet`
        const allretweert_id = await queryExecuter(allretweertids);
        let some = allretweert_id.length
        var arr_of_retweet = [];

        for (let i = 0; i < some; i++) {

            const qrt = `SELECT *  FROM retweet where tweet_id='${allretweert_id[i].tweet_id}' and user_id='${user_id}' and is_deleted='0';`
    
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

        let flag = false;
        
        return res.json({ tweet_data: all_tweet_data, following_data:allFollowingIds, post_date: post_at, all_comments, all_likes, arrtruefalse, arrlikeid ,arrretweetid});
    }


    catch (err) {   
        console.log("Error Dashboard:", err);
    }
})

module.exports = { getDashboard, getDashboardFetchRequest,postTweet, getpostLike1, getpostRetweet }