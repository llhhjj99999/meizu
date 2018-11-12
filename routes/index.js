const express=require('express');
const router=express.Router();
const pool=require('../pool');

router.get("/",(req,res)=>{
  var sql=`SELECT * FROM mei_index_products
  WHERE seq_recommended ORDER BY seq_recommended`;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
      res.send(result);
  })
})
router.get("/carousel",(req,res)=>{
  var sql=`SELECT * FROM mei_index_carousel WHERE cid=?`;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
      res.send(result);
  })
})

module.exports=router;