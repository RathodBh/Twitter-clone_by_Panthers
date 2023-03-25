const express = require("express");
const app = express();
const router = express.Router()

const { getNotification } = require("../controllers/notificationController");

router.route("/").get(getNotification);

module.exports = router