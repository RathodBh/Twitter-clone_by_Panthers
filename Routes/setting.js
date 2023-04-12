const express = require("express")
const app = express();
const router = express.Router()
const { protect } = require('../Middlewares/auth')
const { getlocation,getSettings,accountInfo,changePass,checkOldPass,updatePwd,updateUserName,updateUserNamepost,getCountry,postCountry,getEmailChange} = require('../controllers/settingController')

// add routes

router.route('/').get(protect, getSettings)
router.route('/location').get(protect,getlocation)
router.route('/account-general').get(protect,accountInfo)
router.route('/change-password').get(protect,changePass)
router.route('/checkpassword').post(protect,checkOldPass)
router.route('/updatePwd').post(protect,updatePwd)

router.route('/update-userName').get(protect,updateUserName)
router.route('/change-country').get(protect,getCountry)
router.route('/change-email').get(protect,getEmailChange)
router.route('/country-upt').post(protect,postCountry)
router.route('/updateUname').post(protect,updateUserNamepost)





// router.route('/sign-up').post(authUser)

module.exports=router