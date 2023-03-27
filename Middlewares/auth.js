
//I need to get all authentication process here!

const protect = async (req, res, next) => {
    try {
        const token = req.session.email
        if (!token) {
            res.redirect('/user-login')
        }
    }
    catch(err){
        return err
    }
    next();
};

module.exports = { protect };