const { createPool } = require('mysql');


const pool = createPool({
    host : "192.168.1.240",
    user : "cad",
    password : "password",
    database :"example",
    connectionlimit : 10

    
})

pool.query("select * from exam",
(err,result,fields)=>{
    if(err){
        return console.log(err);
    }
    return console.log(result);
})