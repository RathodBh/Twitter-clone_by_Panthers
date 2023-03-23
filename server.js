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

app.post("/dashboard/retweet", async function (req, res) {
    var user_id = req.session.user_id;
    console.log("user id=", user_id);
    // console.log("byee");
    const data = req.body;
    var tweet_id = data.tweet_id;
    var a = data.a;
    // retweet data table
    var re_tweet_data = await queryExecuter(`SELECT * FROM twitter_clone.retweet ;`)

    // re-tweet count
    var select_tweet = await queryExecuter(`SELECT * FROM twitter_clone.retweet WHERE tweet_id='${tweet_id}' AND user_id='${user_id}';`)
    var tweet_sel = await queryExecuter(`SELECT * FROM twitter_clone.tweets where id='${tweet_id}';`);
    var tot_re_tweet = tweet_sel[0].tweet_retweets;
    // re tweet count end
    var user = await queryExecuter(`SELECT id FROM twitter_clone.users;`);

    if (select_tweet[0] == undefined) {
        var re_tweet = await queryExecuter(`INSERT INTO twitter_clone.retweet(user_id,tweet_id,created_at,is_retweet)VALUES(${user_id},${tweet_id},NOW(),'1' );`);
        console.log("retweeted");
        tot_re_tweet += 1;
        // console.log("total retweet 1=", tot_re_tweet);
        var up_tweet = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id};`)
        a = 0;
        // console.log("update tweet 0=", up_tweet[0]);
        res.json(select_tweet);
    }

    else if (select_tweet[0].is_retweet == 1) {
        console.log("tweet id match");
        tot_re_tweet -= 1;
        // console.log("new total=", tot_re_tweet);
        var update_re_tweet = await queryExecuter(`UPDATE twitter_clone.retweet SET is_retweet = 0 WHERE tweet_id = '${tweet_id}' AND user_id='${user_id}' ;`)
        var up_tweet2 = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id};`)
        // console.log("new tweet update=", up_tweet2);
        res.json(select_tweet);
    }

    else {
        console.log("tweet id not match");
        tot_re_tweet += 1;
        // console.log("total retweet 2=", tot_re_tweet);
        var update_re_tweet = await queryExecuter(`UPDATE twitter_clone.retweet SET is_retweet = '1' WHERE tweet_id = '${tweet_id}'  AND user_id='${user_id}';`)
        var up_tweet1 = await queryExecuter(`UPDATE twitter_clone.tweets SET tweet_retweets = ${tot_re_tweet} WHERE id =${tweet_id} ;`)
        // console.log(" update tweet 1=", up_tweet1);
        res.json(select_tweet);
    }

});



app.listen(PORT, () => {
    console.log(`I am listining on ${PORT}`);
})

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
