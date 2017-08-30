<template>
	<div id="listhome">
		<div class="listhometop">
			<!-- <h1>餐厅菜单</h1>  -->
			<div class="listlogo"></div>
			<listlogin></listlogin>

		<span class="listmenu"><router-link to="/overBookingCom">查看已选清单</router-link></span>
		</div>

		
		<div class="list-body">
			<div id="list-nav">
				<ul class="listnavl">
					<li><router-link to="/listhome/tdlist">全览</router-link></li>
					<li><router-link to="/listhome/tlist">点心</router-link></li>
					<li><router-link to="/listhome/ypstyle">饮品</router-link></li>
					<li><router-link to="/listhome/mbstyle">面包</router-link></li>		
					<li><router-link to="/listhome/Wstyle">西餐</router-link></li>
					<li><router-link to="/listhome/Cstyle">中餐</router-link></li>
				</ul>

	    	<!-- <router-view></router-view> -->
	</div>
		</div>

		

	    	
	</div>
</template>

<script>

// import $ from '../../assets/common/jquery-2.1.1.min.js';
import VueRouter from "vue-router";
import './listhome.scss'
import './nav/listnav.scss';
import listlogin from './listlogin/listlogin.vue';
// import listnav from './nav/listnav.vue';
import tdlist from './list/tdlist.vue';
// import ypstyle from './list/ypstyle.vue';
// import mbstyle from './list/mbstyle.vue';
// import Wstyle from './list/Wstyle.vue';
// import Cstyle from './list/Cstyle.vue';
import axios from 'axios';

	export default {
		components: {
			'listlogin':listlogin,
			// 'listnav': listnav,
			'tdlist':tdlist
			// 'ypstyle':ypstyle,
			// 'mbstyle':mbstyle,
			// 'Wstyle':Wstyle,
			// 'Cstyle':Cstyle
		},
		data:function(){
			return{

			}
			},
		
	
		

	



		}
	
	
	
</script>