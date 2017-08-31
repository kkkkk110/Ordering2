<template>
    <div id="ypstyle">
       
        <ul>
            <li class="lhi" v-for="(obj, index) in listh" >
                <img :src="'./src/assets/imgs/drinks/'+obj.img" >
                <span id="sp">{{obj.name}}</span><span id="sp">{{obj.price}}元</span>
              <button @click="wbtn(index)">点击选中</button>
            </li>
        </ul>
    </div>
</template>

<script type="text/javascript">
var socket = io.connect('ws://localhost:888');
import './ypstyle.scss';
    import axios from 'axios';
    // import $ from 'jquery'
	export default {
        data:function(){
            return{
            listh:[],
            datalist:[]
            }
        },
        beforeMount: function(){
      
        axios.post('http://localhost:1212/lh').then(function (res) {

       for(var i=0;i<res.data.length;i++){
            if(res.data[i].FenLei=='饮料'){

            this.listh.push(res.data[i]);
            }
        }
   
        }.bind(this));
        },
        methods:{
            wbtn:function(idx){ 
                console.log(this.listh[idx])
                var obj = {
                    title:this.listh[idx].name,
                    qty:'1',
                    price:this.listh[idx].price,
                    img:'drinks/'+this.listh[idx].img,
                    TeSt:this.listh[idx].TeSe
                }
                this.datalist.push(obj)
                console.log(this.datalist)
                socket.emit('ob',this.datalist)

            }
        }

            }

	
</script>