const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser');
const server = express();
server.use(bodyParser.urlencoded({
    extended:false
}));
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'tour',
    connectionLimit:20
});
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080','http://127.0.0.1:8081','http://localhost:8081']
}));

server.get('/lists',(req,res)=>{
    let sql='SELECT uid,utitle,subject,description,image FROM tour_article'
    pool.query(sql,(err,results)=>{
        if(err)throw err;
        res.send({message:'查询成功',code:1,results:results});
    })
});

server.get('/details',(req,res)=>{
    let id = req.query.id
    let sql='SELECT uid,title,address,details,image,lng,lat,newprice,price,pricetitle FROM tour_xiangqing  WHERE uid=?'
    pool.query(sql,[id],(error,results)=>{
        if(error)throw error;
        res.send({message:'查询成功',code:1,results:results[0]});
    })
});

server.get('/Ranking',(req,res)=>{
    let sql='SELECT uid,subject,description,image,search,icon FROM tour_paihang'
    pool.query(sql,(err,results)=>{
        if(err)throw err;
        res.send({message:'查询成功',code:1,results:results});
    })
});

//注册
server.post('/register',(req,res)=>{
    let username = req.body.username;
    let sql = 'SELECT count(uid) AS count FROM tour_user WHERE username=?';
    pool.query(sql,[username],(err,result)=>{
        if(err) throw err;
        if(result[0].count){
            res.send({message:'注册失败',code:0});
        }else{
            let password  =req.body.password;
            sql = 'INSERT INTO tour_user(username,password) VALUES(?,?)';
            pool.query(sql,[username,password],(err,result)=>{
                if(err) throw err;
                res.send({message:'注册成功',code:1});
            });
        }
    });
})
//登录
server.post('/login',(req,res)=>{
    let username = req.body.username;
    let password = req.body.password;
    let sql = 'SELECT uid FROM tour_user WHERE username=? AND password=?';
    pool.query(sql,[username,password],(err,result)=>{
        if(err) throw err;
        if(result.length == 1){
            res.send({message:'登录成功',code:1,info:result[0]});
        }else{
            res.send({message:'登录失败',code:0});
        }
    });
})

server.listen(3000,()=>{
    console.log('server is running ');
});