



const getHome = async (req, res) => {
    // const token = req.session.email
    res.render("home")
}

module.exports = {
    getHome
}