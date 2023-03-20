const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')


// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getDashboard,tweetit } = require("../controllers/dashboardController");

router.route('/').get(getDashboard)
router.route('/tweet').get(tweetit)
// router.route('/').post(tweetit1)

module.exports = router;