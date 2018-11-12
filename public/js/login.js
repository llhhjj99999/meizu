$(()=>{  
    $(".btn").click(function(e) {
        e.preventDefault();
        var $uname = $("#uname").val();         
        var $upwd = $("#upwd").val();
        $.ajax({
            url:"/users/login",
            type:"POST",
            data:{
                uname:$uname,
                upwd:$upwd
            },
            dataType:"json",
            success:function(data){
                console.log(data);
                if(data.ok>0){
                    console.log("登录成功")
                    if(history.length==2){
                        location="index.html";
                    }else{
                        location=history.go(-1);
                    }
                }else{ 
                    $(".username").html(data.msg);
                    $("#userupwd").html(data.msg);
                }             
            },
            error:function(){
                alert("请检查网络");
            }   
        });      
    })
    
    console.log(history);
    $(window).keyup(e=>{
        if(e.keyCode==13){
             $(".btn").click();
        }
    }); 
    
})
$(()=>{
    $("[name=uname]").blur(e=>{
        e.preventDefault();
        var reg=/^[0-9A-Za-z]{3,8}$/i;
        var $uname=$("[name=uname]").val();
       if(!reg.test($uname)){
            $(".username").html("用户名格式不正确，请检查");
        }else{
            $(".username").html("");
        }
    });
    $("[name=upwd]").blur(e=>{
        e.preventDefault();
        var reg1=/^\w{6,8}$/i;
        var $upwd=$("[name=upwd]").val();
        if(!reg1.test($upwd)){
            $("#userupwd").html("密码格式不正确，请检查");
        }else{
            $("#userupwd").html("");
        }
    });
})