$(()=>{
    $.ajax({
		url:"http://localhost:3000/details?lid=1",
		type:"get",
		success:function(data){
			console.log(data);
			var {pics}=data;
			var html="";
			for(var p of pics){
				var {xs,md,lg}=p;
				html+=`<li class="float-left">
				<img src="${xs}" data-md="${md}" data-lg="${lg}"> 
			 </li>`;
			}
			var ul=document.querySelector("#div-img>div>div:nth-child(2)>ul");
			ul.innerHTML=html;
			ul.style.width=`${140*pics.length}px`;
			var mImg=document.querySelector("#div-img>div>img");
			mImg.src=pics[0].lg;
			
		}
	})
	var $mImg=$("#div-img>div>img");
	var $ul=$();
	$ul.on("mouseover","img",function(){
	    var lg=$(this).attr("data-lg");
		$mImg.attr("src","lg");
	})
})

var $prev=$();
var $next=$();
var moved=0,LIWIDTH=140;

$next.click(function(){
	var $next=$(this);
	if(!$next.is(".disabled")){
		moved++;
		$ul.css("marginLeft",-LIWIDTH*moved);
		/*$prev.removeClass("disabled");
		if($ul.children().length-1==moved){
			$next.addClass("disabled");
		}*/
	}
	
})
$prev.click(function(){
	var $prev=$(this);
	if(!$prev.is(".disabled")){
        moved--;
	    $ul.css("marginLeft",-LIWIDTH*moved);
	}
	
})
