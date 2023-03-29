const express = require("express")
// const app = express();
const router = express.Router()

const {getForgetPasswordPage,getMail, getOtp,resetPassword} = require("../controllers/forgetPasswordController")

router.route('/').get(getForgetPasswordPage);
router.route('/getMail').get(getMail);
router.route('/getOtp').get(getOtp);
router.route('/resetPassword').get(resetPassword);



module.exports = router;