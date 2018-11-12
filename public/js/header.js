
$(function(){
    $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(res){
            //console.log(res);
            $(res).replaceAll("#header");
            var vm=new Vue({
                el:"#header",
                data:{
                    islogin:false,
                    keyword:""
                },
                methods:{
                    search_click(){
                           
                    }
                },
                watch:{
                    keyword(){
                        console.log(this.keyword);
                    }
                }
            })
        }
    })
    //搜索框焦点动态
    $(".input").focus(function(e){
        e.preventDefault();
        
        
    })
    //登录状态
    function islogin(){
        $.get("/users/islogin").then(data=>{
            console.log(data);
            if(data.ok== 0){  //未登录状态
              $("[data-toggle=islogin]").show();
              $("[data-toggle=loginout]").hide();
              $(".order").hide();
            }else{
              $("[data-toggle=islogin]").hide();
              $("[data-toggle=loginout]").show();
            }
        })
    }
    islogin();
      //为登录按钮绑定事件
      $(document.body).on( "click",".islogin1",e=>{
        let $tar= $(this);
        location= "index.html";
      })  
    //为注销按钮绑定事件
        $(document.body).on("click",".leave",e=>{
            let $tar= $(this);
            e.preventDefault();
            $.get("/users/loginout").then(()=>{
                location.reload(true)
                islogin()
            })
        })
    
})

