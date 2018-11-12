const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.post("/login",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var uid=req.body.uid;
    if(uname==''){
        res.send({ok:-1,msg:"用户名不能为空"});
        return;
    }
    if(upwd==''){
        res.send({ok:-2,msg:"密码不能为空"});
        return;
    }
    
    var sql="SELECT * FROM mei_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd,uid],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8"
        })
        if(result.length>0){
           req.session.uid=result.uid;
           res.write(JSON.stringify({ok:1,msg:"登录成功"}));
        }else
           res.write(JSON.stringify({ok:0,msg:"用户名或密码不正确"}))
        res.end()
    })
})
router.get("/islogin",(req,res)=>{
    if(req.session.uid!==undefined){
	  var uid=req.session.uid;
      var sql="SELECT * FROM mei_user WHERE uid=?";
      pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        console.log(result);
         res.send({ok:1});   
      });
	}else{
	  res.send({ok:0})
	}
})
router.get("/loginout",(req,res)=>{
  req.session.uid=undefined;
  res.send();
})
router.post("/register",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var email=req.body.email;
    var phone=req.body.phone;
    var avatar=req.body.avatar;
    var user_name=req.body.user_name;
    var gender=req.body.gender;
    if(uname==''){
        res.send({ok:101,msg:"用户名不能为空"});
        return;
    }
    if(upwd==''){
        res.send({ok:201,msg:"密码不能为空"});
        return;
    }
    if(phone==''){
        res.send({ok:101,msg:"电话不能为空"});
        return;
    }
    var sql="INSERT INTO mei_user VALUES(NULL,?,?,?,?,?,?,?)";
    pool.query(sql,[uname,upwd,email,phone,avatar,user_name,gender],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send(result)
        if(result.affectedRows==1)
           res.send({ok:1,msg:"注册成功"});
        else
           res.send({ok:0,msg:"用户名或密码不正确"});
        
    })
})


module.exports=router;