const { queryExec } = require('../connection/conn');
// const queryExec = require('../queryExecute/queryExec')
const express = require('express')
const app = express();
const asyncHandler = require("express-async-handler");




var tweet_ids
const getpostLike1 = asyncHandler(async (req, res) => {
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
            const qrt = `SELECT  * FROM  likes where tweet_id=? and user_id=?`

            const like_data = await queryExec(qrt, [data.tweet_id, user_id]);


            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO likes (user_id,tweet_id,created_at) values (?,?,NOW())`

                const like_entry = await queryExec(ins_qrt, [user_id, data.tweet_id]);

                const select_tweet_like = `select tweet_likes from tweets where id=?`
                const tweet_like_count = await queryExec(select_tweet_like, [data.tweet_id]);

                var alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=? where id=?`
                const Update_entry_tweet = await queryExec(up_tweets_tweetlike, [alllikecount, data.tweet_id]);
                let flag = true
                res.json({ flag, alllikecount })
            }
            else if (like_data.length == 1) {

                const select_tweet_like = `select tweet_likes from tweets where id=?`
                const tweet_like_count = await queryExec(select_tweet_like, [data.tweet_id]);
                alllikecount = tweet_like_count[0].tweet_likes
                alllikecount = alllikecount + 1

                const up_tweets_tweetlike = `Update tweets Set tweet_likes=?  where id=?`
                const Update_entry_tweet = await queryExec(up_tweets_tweetlike, [alllikecount, data.tweet_id]);


                const Update_unlike = `Update likes Set updated_at= Now(),is_deleted=0  where tweet_id=?`
                const Update_unlike_entry = await queryExec(Update_unlike, [data.tweet_id]);
                let flag = true
                res.json({ flag, alllikecount })
            }

        }

        else {
            const select_tweet_like = `select tweet_likes from tweets where id=?`
            const tweet_like_count = await queryExec(select_tweet_like, [data.tweet_id]);
            alllikecount = tweet_like_count[0].tweet_likes
            alllikecount = alllikecount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_likes=?  where id=?`
            const Update_entry_tweet = await queryExec(up_tweets_tweetlike, [alllikecount, data.tweet_id]);


            const Update_unlike = `Update likes Set  updated_at= Now(),is_deleted=1  where tweet_id=?`
            const Update_unlike_entry = await queryExec(Update_unlike, [data.tweet_id]);
            let flag = false
            res.json({ flag, alllikecount })
        }

    } catch (error) {
        console.log(error);
    }

})


const getpostRetweet = asyncHandler(async (req, res) => {
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
            const qrt = `SELECT  * FROM retweet where tweet_id=? and user_id=?`

            const like_data = await queryExec(qrt, [data.tweet_id, user_id]);


            if (like_data.length == 0) {
                const ins_qrt = `INSERT INTO retweet (user_id,tweet_id,created_at) values(?,?,NOW())`

                const like_entry = await queryExec(ins_qrt, [user_id, data.tweet_id]);

                const select_retweet = `select tweet_retweets from tweets where id=?`
                const tweet_retweet_count = await queryExec(select_retweet, [data.tweet_id]);

                var allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount + 1

                const up_tweets_retweet = `Update tweets Set tweet_retweets=? where id=?`
                const Update_entry_retweet = await queryExec(up_tweets_retweet, [allretweetcount, data.tweet_id]);
                let flag = true
                res.json({ flag, allretweetcount })
            }
            else if (like_data.length == 1) {

                const select_tweet_retweet = `select tweet_retweets from tweets where id=?`
                const tweet_retweet_count = await queryExec(select_tweet_retweet, [data.tweet_id]);
                allretweetcount = tweet_retweet_count[0].tweet_retweets
                allretweetcount = allretweetcount + 1


                const up_tweets_retweet = `Update tweets Set tweet_retweets=?  where id=?`
                const Update_entry_tweet = await queryExec(up_tweets_retweet, [allretweetcount, data.tweet_id]);


                const Update_retweet = `Update retweet Set updated_at=Now(),is_deleted=0  where tweet_id=?`
                const Update_unlike_entry = await queryExec(Update_retweet, [data.tweet_id]);
                let flag = true
                res.json({ flag, allretweetcount })
            }

        }

        else {
            const select_tweet_retweet = `select tweet_retweets from tweets where id=?`
            const tweet_retweet_count = await queryExec(select_tweet_retweet, [data.tweet_id]);
            allretweetcount = tweet_retweet_count[0].tweet_retweets
            allretweetcount = allretweetcount - 1

            const up_tweets_tweetlike = `Update tweets Set tweet_retweets=? where id=?`
            const Update_entry_tweet = await queryExec(up_tweets_tweetlike, [allretweetcount, data.tweet_id]);


            const Update_unlike = `Update retweet Set updated_at=Now(),is_deleted=1  where tweet_id=?`
            const Update_unlike_entry = await queryExec(Update_unlike, [data.tweet_id]);
            let flag = false
            res.json({ flag, allretweetcount })
        }

    } catch (error) {
        console.log(error);
    }

})


const getDashboard = asyncHandler(async (req, res) => {
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login');
        return
    }
    res.render('dashboard')
});

const tweetit = asyncHandler(async function (req, res) {
    let flag = false;
    res.render('tweet', { flag })
});



const postTweet = asyncHandler(async (req, res) => {
    const token = req.session.email
    if (!token) {
        res.redirect('/user-login')
        return;
    }
    const file = req.files;
    const user_id = req.session.user_id;
    const tweet = req.body.tweet;
    const hashTagsArr = req.body.hashTags;



    let lastTweetInsertedId;

    let fileLength = (file == undefined) ? 0 : file.length;
    if (fileLength == 0) {
        let ins = await queryExec('INSERT INTO  tweets (user_id,tweet,media_type,created_at) VALUES (?,?,?,NOW())', [user_id, tweet, 'text']);
        lastTweetInsertedId = ins.insertId;
        console.log("0", user_id, tweet);
    } else {
        for (var i = 0; i < file.length; i++) {
            const filename = file[i].originalname;
            const filepath = file[i].path;
            const filetype = file[i].mimetype;
            const filename1 = file[i].filename
            var imgsrc = '/assets/images/' + filename1;
            const sql = 'INSERT INTO  tweets (user_id,tweet, media_url,media_type,created_at) VALUES (?,?, ?, ?,NOW())';
            const data = [user_id, tweet, imgsrc, filetype];
            let q = await queryExec(sql, data);
            lastTweetInsertedId = q.insertId;
        }
    }

    let hashLength = (hashTagsArr == undefined) ? 0 : hashTagsArr.length;
    if (hashLength > 0) {
        for (const hash of hashTagsArr) {
            let curHash = hash.substring(1)
            let curHashId = ""
            let checkHash = await queryExec(`SELECT hashtag,id from hashtag_master WHERE hashtag = ?`, [curHash]);
            if (checkHash.length > 0) {
                //update hashtag counter into the hashtag_master
                let updateHash = await queryExec(`UPDATE hashtag_master SET hashtag_used = hashtag_used + ${1},updated_at=NOW() WHERE hashtag=?`, [curHash]);
                curHashId = checkHash[0].id;
                console.log("🚀 ~ file: dashboardController.js:228 ~ postTweet ~ curHashId:", checkHash[0].id)
            } else {
                //insert hashtag into the hashtag_master
                let insertHash = await queryExec(`INSERT INTO hashtag_master(hashtag,created_at) VALUES(?,NOW())`, [curHash]);
                curHashId = insertHash.insertId;
                console.log("🚀 ~ file: dashboardController.js:232 ~ postTweet ~ curHashId:", curHashId)
            }
            //insert tweet hash into the tweet_hashtag table
            await queryExec(`INSERT INTO tweet_hashtag(tweet_id,hash_id,created_at) VALUES(?,?,NOW())`, [lastTweetInsertedId, curHashId]);
        }
    }

    res.json({ ans: true })

    // res.redirect('/dashboard');
})

const getDashboardFetchRequest = asyncHandler(async (req, res) => {
    const user_id = req.session.user_id
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login');
            return
        }
        
        let srchQuery = "";
        if(req.query.srch){
            srchQuery += `WHERE t.tweet LIKE '${req.query.srch}%'`
        }
        else if(req.query.hash){
             srchQuery += `WHERE t.id in (SELECT th.tweet_id FROM tweet_hashtag as th JOIN hashtag_master as h ON th.hash_id=h.id WHERE h.hashtag = '${req.query.hash}')`;
        }
        let sel_tweets = `SELECT t.id,t.tweet,t.media_url,t.media_type,t.tweet_likes,t.tweet_comments,t.tweet_retweets,t.created_at,u.id as user_id, u.name,u.user_image,u.user_name,u.bio,u.following,u.followers FROM tweets as t INNER JOIN users u ON t.user_id = u.id ${srchQuery} ORDER BY t.id DESC  `;
        let follow_sel = `SELECT following.following_id FROM following WHERE following.user_id = ?`;
       
        const followingId = await queryExec(follow_sel, [user_id]);

        let allFollowingIds = [];
        for (let x of followingId) {
            allFollowingIds.push(x.following_id);
        }
        //get comments of every tweet
        let comments = 0;
        let all_tweet_data;
        // if(req.query.srch){
            // all_tweet_data = await queryExec(sel_tweets);

        // }else{
            all_tweet_data = await queryExec(sel_tweets);
        // }

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
            let [sel_comments] = await queryExec(`SELECT count(*) as tot FROM  comments WHERE tweet_id = ?`, [tweet_id]);
            let [sel_likes] = await queryExec(`SELECT count(*) as tot FROM  likes WHERE tweet_id = ?`, [tweet_id]);

            all_comments.push(sel_comments.tot);
            all_likes.push(sel_likes.tot);
        }

        //DOne by jigar------------------------------


        const alltweetids = `select id from tweets`
        const alltweet_ids = await queryExec(alltweetids);

        let value = alltweet_ids.length
        var arr_of_liked = []
        var done = []
        for (let i = 0; i < value; i++) {
            const qrt = `SELECT *  FROM  likes where tweet_id='${alltweet_ids[i].id}' and user_id='${user_id}' and is_deleted='0';`

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



        const allretweertids = `select tweet_id from retweet`
        const allretweert_id = await queryExec(allretweertids);
        let some = allretweert_id.length
        var arr_of_retweet = [];

        for (let i = 0; i < some; i++) {

            const qrt = `SELECT *  FROM retweet where tweet_id='${allretweert_id[i].tweet_id}' and user_id='${user_id}' and is_deleted='0';`

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

        let flag = false;
        return res.json({ tweet_data: all_tweet_data, following_data: allFollowingIds, post_date: post_at, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid, userID: req.session.user_id });
    }


    catch (err) {
        console.log("Error Dashboard:", err);
    }
})

const getTrendingHashtags = asyncHandler(async (req, res) => {

    if (req.query.search) {
        let searchHashtag = await queryExec(`SELECT hashtag from hashtag_master WHERE hashtag like ? LIMIT 5`, [req.query.search + "%"]);
        return res.json({ searchHashtag })
    } else {
        let getTrending = await queryExec(`SELECT hashtag,hashtag_used from hashtag_master ORDER BY hashtag_used DESC LIMIT 3`);
        return res.json({ getTrending })
    }

})

const getHome = asyncHandler(async (req, res) => {
    res.render("home");
})

module.exports = { getDashboard, getTrendingHashtags, getHome, getDashboardFetchRequest, postTweet, getpostLike1, getpostRetweet }