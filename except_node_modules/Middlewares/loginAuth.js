
// const { } = require('../controllers/registerController')
const jwt = require('jsonwebtoken')
const protectLogin = async (req, res, next) => {
  
    const token = req.session.email
  
    console.log(token);
    if (token) {
        let solve = jwt.verify(token, "JWT_SECRET");
        if(solve){
            

            return res.redirect('/dashboard')
        }
     
    }
    else{

        next();
    }


};

module.exports = { protectLogin };