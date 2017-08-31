<template>
    <div id="mb-style">
       
       
        <ul>
            <li class="lhi" v-for="(obj, index) in listh" >
                <img :src="'./src/assets/imgs/mianbao/'+obj.img" >
                <span>{{obj.name}}</span><span>{{obj.price}}元</span>
                <button @click="wbtn(index)">点击选中</button>
            </li>
        </ul>
    </div>
</template>

<script type="text/javascript">
var socket = io.connect('ws://localhost:888');
import './mbstyle.scss';
    import axios from 'axios';
    // import $ from 'jquery'
	export default {
        data:function(){
            return{
            listh:[],
            datalist:[]
            }
        },
        beforeMount:function(){
            console.log(1111)
        axios.post('http://localhost:1212/lh').then(function (res) {
            console.log(999)
       for(var i=0;i<res.data.length;i++){
            if(res.data[i].FenLei=='面包'){

            this.listh.push(res.data[i]);
            }
        }
         console.log(this.listh);
        
        console.log(res.data.FenLei);
          console.log(res.data);
        }.bind(this));
        },
        methods:{
            wbtn:function(idx){ 
                console.log(this.listh[idx])
                var obj = {
                    title:this.listh[idx].name,
                    qty:'1',
                    price:this.listh[idx].price,
                    img:'mianbao/'+this.listh[idx].img,
                    TeSt:this.listh[idx].TeSe
                }
                this.datalist.push(obj)
                
                socket.emit('ob',this.datalist)

            }
        }

            }

	
</script>