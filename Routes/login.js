const express = require("express")
// const app = express();
const router = express.Router()
const { protectLogin,} = require('../Middlewares/loginAuth')
const { getEmailCheckLogin} = require('../controllers/loginController')

const { loginHandler,loginGet} =  require('../controllers/loginController')

// add routes..S

router.route('/').get(protectLogin,loginGet)
router.route('/').post(loginHandler)
// router.route('/checkuser').post(getUserNameCheck)
router.route('/checkemail').post(getEmailCheckLogin)

module.exports = router;
