<template>
	<div class="serve">
			<div class="logo" @click="coo"></div>

			<transition-group name="list">
				<div class="servegoods" v-for="(value,index) in goods" :key="index" @click="color">{{value}}	<span class="spa" @click="hid" :id="index">x</span></div>
			</transition-group>
			<transition-group name="list">
				<div class="hujiao" v-for="(value,index) in hujiao" :key="index" >{{value}}号桌呼叫	<span class="spa" @click="hu" :id="index">x</span></div>
			</transition-group>
	</div>
	
</template>

<script>
	import "./serve.scss"
	var socket = io.connect('ws://localhost:888');
	
	export default{
		data:function(){
			return {
				goods:[],
				hujiao:[]
			}
		},
		methods:{
				color:function(e){
					e.target.style.background='rgba(255,255,0,0.3)'
					e.preventDefault();
				},
				hu:function(e){
					this.hujiao.splice(e.target.id,1)
				},
				hid:function(e){
				
					this.goods.splice(e.target.id,1)
				},
				coo:function(){
					console.log(this.hujiao==7)
				}
		},
		created:function(){
			socket.on('serve',function(s){
				this.goods.push(s)
				
			}.bind(this))	
			socket.on('huji',function(hu){
						
						
					
					this.hujiao.push(hu)
					console.log(this.hujiao)
			}.bind(this))
		}

	}
</script>