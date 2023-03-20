

const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth')

const { commentInfo } = require("../controllers/commentController");

router.route('/tweet_details/:id').get(commentInfo)

module.exports = router;