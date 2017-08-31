<template>
		<div id="listlogin-box">		    	
		    <!-- </div> -->
		
		<router-view></router-view>
	</div>	
</template>

<script>
// var socket = io.connect('ws://10.3.134.38:888');
import './listlogin.scss'
// import $ from 'jquery';
	export default {
		name: 'listlogin',
		methods: {
			goent: function(){
				// console.log(this.$store.dispatch)
				// console.log($('.tnumber').val())
				// this.$router.push({ path: '/listhome' })
				// console.log($pnumber.val())
				// this.$store.dispatch('actionsBtn');
			},

		}

	
	}
</script>