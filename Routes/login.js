const express = require("express")
const app = express();
const router = express.Router()
const { protectLogin} = require('../Middlewares/loginAuth')
const { getEmailCheck,getUserNameCheck} = require('../controllers/registerController')

const { loginHandler,loginGet} =  require('../controllers/loginController')

// add routes..S

router.route('/').get(loginGet)
router.route('/').post(protectLogin,loginHandler)
router.route('/checkuser').post(protectLogin,getUserNameCheck)
router.route('/checkemail').post(protectLogin,getEmailCheck)

module.exports = router;