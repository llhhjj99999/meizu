$(()=>{
    $(".btn-login").click(function(e){
        e.preventDefault();
        $.ajax({
            type:"post",
            url:"/users/register",
            data:{
                upwd :$("[name=uname]").val(),
                uname:$("[name=upwd]").val(),
                phone:$("[name=phone]").val()
            },
            success:function(data){  
                console.log(data);
                if(data.ok==1){
                    alert("注册成功")
                    location="login.html"
                }else{
                    $(".userupwd").html("");
                }
            },
            error:function(){
                alert("网络故障，请检查");
            }
        });
    })
    $(":checkbox").click(function(){
        var chb=this;
        $(":input:not(:checkbox)").prop("disabled",chb.checked?false:true);
    }) 
});
$(()=>{
    function vali(selector,reg,msg,e){
        var $txt=$(selector);
       if(reg.test($txt.val()))
           $txt.next().html();
        else
           $txt.next().html(`${msg}`);
        e.preventDefault();
    }
    $(".btn-login").blur(function(e){
        vali(
            $("[name=uname]"),
            /^[0-9A-Za-z]{3,8}$/i,
            "用户名格式不正确，请检查",
            e 
        );
        vali(
            $("[name=upwd]"),
            /^\w{6,12}$/i,
            "密码格式不正确，请检查",
            e  
        );
        vali(
            $("[name=phone]"),
            /^(\+86|0086)?\s*1[34578]\d{9}$/,
            "电话号码不正确,请检查",
            e  
        );
    })
  
})
$(()=>{
    $(".back").click(function(e) {
        e.preventDefault();
        $(".account").css("display","block");
        $(".set-upwd").css("display","none");
    })
})