



const logoutGet = async(req,res)=>{
    req.session.destroy();
    return res.redirect("/user-login")
}

module.exports = {  logoutGet }