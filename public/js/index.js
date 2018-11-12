var price=Vue.filter("price",function(val){
    return "￥"+val().toFixed(2);
})
new Vue({
    el:"#main>div:nth-child(4)",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/") 
            self.res=res.data;  
        })(this)
    
    }
})

new Vue({
    el:"#main>div:nth-child(5)",
    data:{
        res:[
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/") 
            self.res=res.data;  
        })(this)

    }
})
new Vue({
    el:"#main>div:nth-child(7)",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/")
            self.res=res.data;  
        })(this)

    },
})
new Vue({
    el:"#zn",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/");
            self.res=res.data;  
        })(this)

    }
})
new Vue({
    el:"#live>div:first-child",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/");
            self.res=res.data;  
        })(this)

    }
})    
new Vue({
    el:"#live>div:nth-child(1)",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/");
            self.res=res.data;  
        })(this)

    }
})    
new Vue({
    el:"#live>div:nth-child(2)",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/");
            self.res=res.data;  
        })(this)

    }
})    
new Vue({
    el:"#live>div:last-child",
    data:{
        res:[
            {title:"",details:"",price:0},
            {title:"",details:"",price:0}
        ]
    },
    mounted(){
        (async function(self){
            var res=await axios.get("http://localhost:3000/index/");
            self.res=res.data;  
        })(this)

    }
})    

