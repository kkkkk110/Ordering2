<template>

	<div id="overBox">
		<div class="header">
			<i class="el-icon-arrow-left"></i>
			<h3>logo</h3>
			<i class="el-icon-time" @click="call"><span>呼叫服务</span></i>
		</div>
		<div class="contant">
			<div class="contantData">
				<div class="tablelist">
					<span>桌号</span>
					<i class="tableNum" ref="tableNum">007</i>
					<span>人数</span>
					<i>04</i>
				</div>
				<div class="total">
					总计
					<i>${{totalprice}}</i>
				</div>
			</div>
			<div class="cooklist">
				<div class="cooklist_title">
					<span class="cookorder">
						序号
					</span>
					<span>菜品</span>
					<span>数量</span>
					<span>价格</span>
				</div>
				<div class="cooklist_data">
					
					<ul>
						
						<li v-for="(value,index) in food">
							<span class="order_cook">
							   {{index+1}}
							</span>
							<span class="title_cook">
								<i>
									<img :src="'./src/assets/imgs/'+value.img" />
								</i>
								<strong>{{value.title}}</strong>
							</span>
							<span class="title_num">
								<span class="reduce" @click="down(index,value.price)">-</span>
								<span class="num_qty" ref="numUp">{{value.qty}}</span>
								<span class="plus" @click="up(index,value.price)">+</span>
							</span>
							<span class="title_price" ref="num_price">
								{{value.price}}
							</span>
							<span class="title_del el-icon-close" ref="dels" @click="del(index)">
								
							</span>
						</li>
						
					</ul>
					<div class="buttonList">
						<button class="underDan" @click="underOdd(food)">确认下单</button>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
</template>

<script>
	import Axios from 'axios';
	import '../../assets/common/base.css'
	import './overBooking.scss'
	var socket = io.connect('ws://localhost:888');
	export default {
		data:function(){
			return {
				food:[],
				
				tableNum:[],
				
				
			}
		},
		created:function(){
			
			socket.on('ob',function(res){
				this.food = res
			}.bind(this))
			console.log(this.food);
		}
		,
		computed:{
			totalprice:function(){
				var total = 0;
				this.food.forEach(function(item,index){
					total+=item.qty*item.price
				})
				return total
			}
		},
		methods: {
	    	underOdd:function(value){
		      	console.log(value);
		      	socket.emit('aa',value)

		      	const h = this.$createElement;
		        this.$msgbox({
		          title: '消息',
		          message: h('p', null, [
		            h('span', null, '确认下单 '),
		            h('i', { style: 'color: teal' }, 'VNode')
		          ]),
		          showCancelButton: true,
		          confirmButtonText: '确定',
		          cancelButtonText: '取消',
		          beforeClose: (action, instance, done) => {
		            if (action === 'confirm') {
		              instance.confirmButtonLoading = true;
		              instance.confirmButtonText = '执行中...';
		              setTimeout(() => {
		                done();
		                setTimeout(() => {
		                  instance.confirmButtonLoading = false;
		                }, 300);
		              }, 500);
		            } else {
		              done();
		            }
		          }
		        }).then(action => {
		          this.$message({
		            type: 'info',
		            message: 'action: ' + action
		          });
		        });
	    	},
	    	up:function(e,aa){
	    		this.food[e].qty++
	    		// this.$refs.numUp[e].innerText++;
	    		var total = this.food[e].qty*aa;
	    		this.$refs.num_price[e].innerText=total;
	    		console.log(this.foodlength)
	    	},
	    	down:function(e,aa){
	    		
	    		if(this.food[e].qty>1){
	    			this.food[e].qty--;
	    		}
	    		var total = this.food[e].qty*aa
	    		this.$refs.num_price[e].innerText=total;
	    	},
	    	call:function(){
	    		console.log(this.$refs.tableNum.innerText)
	    		// if (this.tableNum.length>0 && this.tableNum[0]!==this.$refs.tableNum.innerText) {

	    		// }
	    	
    			this.tableNum.push(this.$refs.tableNum.innerText)
	    		console.log(this.tableNum)
	    		socket.emit('hujiao',this.tableNum)
	    		
	    	},
	    	del:function(idx){
	    		
	    		console.log(this.$refs.dels[idx]);
	    		this.food.splice(idx,1);
	    		
	    	},
	    	
		}
	}
</script>