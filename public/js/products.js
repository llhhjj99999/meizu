(async function(){
    var res=await ajax({
        url:"http://localhost:3000/products/",
        type:"get",
        dataType:"json"
    });
    console.log(res);
})()