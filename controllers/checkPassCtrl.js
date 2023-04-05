

const {queryExec} = require('../connection/conn');


const getCheckPass = async (req, res) => {
    const { new_password } = req.body
    console.log(new_password);
    const qry1 = `select * from users where email='${email}'`
    const result = await queryExec(qry1);
    var oldpass = result[0].password
    const match = await bcrypt.compare(password, oldpass);
    if (match) {
        if (oldpass == password) {
            let error = true
            let msg = "New password and old password cannot be same!"
            res.json({ msg })
        }
    }
}

module.exports = {
    getCheckPass
}