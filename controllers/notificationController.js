
const {queryExec} = require('../connection/conn');




const notify = async(req,res)=>{
  let user_id = req.session.user_id;

    let notify_msg = await queryExec(`select users.user_image as dp,users.user_name as unm,users.name as nm,notify.notify_msg as msg,notify.notify_time as time from users inner join notify on users.id = notify.user_id where  notify.target_id = ${user_id}`); 


    res.render("notification",{notify_msg})
}

module.exports = {notify}