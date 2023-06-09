const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth') 


// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getDashboard,getHome,previewImage,postTweet,getpostLike1,getpostRetweet,getDashboardFetchRequest,getTrendingHashtags } = require("../controllers/dashboardController");
const { upload } = require("../Middlewares/multerHelper");

//get request
router.route('/').get(getDashboard)
router.route('/home').get(getHome)
router.route('/dashboardData').get(getDashboardFetchRequest)
// router.route('/dashboardData').get(getDashboardFetchRequest)
router.route('/search').get()
router.route('/getTrending').get(getTrendingHashtags)
router.route('/img/:name').get(previewImage)
// router.route('/retweet').get(retweet)


router.route('/like').post(getpostLike1)
router.route('/retweet').post(getpostRetweet)
router.route('/tweet').post(upload.array('file', 5), postTweet)

module.exports = router;
