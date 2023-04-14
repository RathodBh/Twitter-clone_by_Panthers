const express = require("express")
// const app = express();
const router = express.Router()

const { notify} = require('../controllers/notificationController')


// add routes..S

router.route('/').get(notify)


module.exports = router;