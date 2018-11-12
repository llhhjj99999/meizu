const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/cart",(res,req)=>{
    var sql="SELECT * FROM mei_shoppingcart_item WHERE pid=?";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})