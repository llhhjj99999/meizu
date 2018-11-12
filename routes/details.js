const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var lid=req.query.lid;
    obj={product:{},specs:[],pic:[]};
    //按lid查找
    (async function(){
        var sql="SELECT * FROM mei_phone_detail WHERE lid=?";
        await new Promise(function(open){
            pool.query(sql,[lid],(err,result)=>{
                if(err) throw err;
                obj.product=result[0];
                open();
            })
        })
        //按规格查找
        var sql="SELECT lid,spec FROM mei_phone_detail WHERE fid=(SELECT fid FROM mei_phone_detail WHERE lid=?)";
        await new Promise(function(open){
            pool.query(sql,[lid],(err,result)=>{
                if(err)
                console.log(err);
                obj.specs=result;
                open();
            })
        })
        var sql="SELECT * FROM mei_product_pic WHERE lid=?";
        await new Promise(function(open){
            pool.query(sql,[lid],(err,result)=>{
                if(err) throw err;
                obj.pics=result;
                open();
            })
        })
        res.send(obj);
    })()
})
module.exports=router;