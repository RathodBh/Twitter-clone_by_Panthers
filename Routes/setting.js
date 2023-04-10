const express = require("express")
const app = express();
const router = express.Router()
const { protect } = require('../Middlewares/auth')
const { getlocation,getSettings,accountInfo,changePass,checkOldPass} = require('../controllers/settingController')

// add routes

router.route('/').get(protect, getSettings)
router.route('/location').get(protect,getlocation)
router.route('/account-general').get(protect,accountInfo)
router.route('/change-password').get(protect,changePass)
router.route('/checkpassword').post(protect,checkOldPass)





// router.route('/sign-up').post(authUser)

module.exports=router