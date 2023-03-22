const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')

const { commentInfo,addTweetComment } = require("../controllers/commentController");

router.route('/tweet_details/:id').get(commentInfo)
router.route('/tweet_comment').post(addTweetComment)

module.exports = router;