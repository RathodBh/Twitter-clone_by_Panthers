const express = require("express")
const app = express();
const router = express.Router()
const { protectRegistration } = require('../Middlewares/registerAuth') 
// const { addTweets } = require('../Middlewares/addTweet') 

const multer = require('multer')
const path = require('path')

// const {registerUser,getregisterUser, getEmailCheck,getUserNameCheck} = require('../controllers/registerController');
const { getDashboard,postTweet,getpostLike } = require("../controllers/dashboardController");

//get request
router.route('/').get(getDashboard)
router.route('/search').get()
router.route('/like').post(getpostLike)

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/assets/images")
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname))
    }
});

const upload = multer({
    storage: storage,
    fileFilter: (req, file, cb) => {
        const fileSize = parseInt(req.headers["content-length"]);
        if (file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype == "image/jpeg" && fileSize <= 2097152) {
            cb(null, true);
        }
        else if (file.mimetype == "video/mp4" && fileSize <= 10485760) {
            cb(null, true);
        }
        else {
            cb(null, false);
            return cb(new Error('Only .png, .jpg and .jpeg format allowed!'));
        }
    },
})



router.route('/tweet').post(upload.array('cover_image', 5), postTweet)

module.exports = router;