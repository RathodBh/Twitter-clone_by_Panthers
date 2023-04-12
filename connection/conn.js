const { createPool } = require('mysql2/promise');
require('dotenv').config("../.env")

const con = createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
});


let queryExec = async (q, param = "") => {

    let [res] = await con.execute(q, param);
    return res;



}

module.exports = { con, queryExec };