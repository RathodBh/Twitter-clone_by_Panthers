const { createPool } = require('mysql2/promise');
require('dotenv').config("../.env")

const con = createPool({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'twitter_clone',
});


let queryExec = async (q, param = "") => {
    
    let [res] = await con.execute(q, param);
    return res;
}

module.exports = { con, queryExec };