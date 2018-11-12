const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var sql=`SELECT * FROM mei_product_phone
             WHERE seq_top_sale ORDER BY seq_top_sale`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/",(req,res)=>{
    var sql=`SELECT * FROM mei_product_life
             WHERE seq_top_sale ORDER BY seq_top_sale`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/",(req,res)=>{
    var sql=`SELECT * FROM mei_product_headset
             WHERE seq_recommended ORDER BY seq_recommended`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/",(req,res)=>{
    var sql=`SELECT * FROM mei_product_zn
             WHERE seq_new_arrival ORDER BY seq_new_arrival`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
module.exports=router;