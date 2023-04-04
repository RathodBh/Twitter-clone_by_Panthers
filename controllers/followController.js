const asyncHandler = require("express-async-handler");
const conn = require('../connection/connectdb');
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

const followData = asyncHandler(async (req, res) => {
    let uid = req.session.user_id;
    var getuser = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id not in(${uid})`);

    var getfollowerId = await queryExecuter(`select follower_id from followers where user_id='${uid}'`);
    var followers = [];
    getfollowerId.forEach(id => {
        followers.push(id.follower_id);
    });


    let notFollow = await queryExecuter(`select id,name,user_name,user_image,cover_image,birth_date,bio,email from users where id !='${uid}' && id not in(SELECT following_id FROM following WHERE user_id='${uid}' && following_id != '${uid}')`);
    

    res.json( { fuser: getuser, followers, unfollowers:notFollow, myUserId:uid});
    // res.render('profile',)
})

module.exports = {
    followData
}