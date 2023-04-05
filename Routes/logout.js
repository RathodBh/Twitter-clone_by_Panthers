const express = require("express")
// const app = express();
const router = express.Router()
const { protectLogin,} = require('../Middlewares/loginAuth')
const { getEmailCheckLogin} = require('../controllers/loginController')

const { logoutGet} =  require('../controllers/logoutController')

// add routes..S

router.route('/').get(logoutGet)

module.exports = router;