// import Vue from 'vue';
// import Axios from 'axios';
// const state = {
// 	   listh:[],
//             qty:'1',
//             title:'',
//             img:'',
//             tableNo:'',
//             price:'',
//             datalist:[]
//             }
// }

// const actions = {
// 	actionsBtn: (store) => {
// 		console.log(store)
// 		store.commit('mutationsBtn')
// 	},
// 	actionsPost: (store) => {
		
// 		Axios.post('http://localhost:1212/getuser', 'name=abc&psw=123',{
// 			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
// 		})
// 		    .then(function(res){
// 		        store.commit('mutationsPost', res.data)
// 		        console.log(res.data);
// 		    })
// 		}
// }
// const mutations = {
// 	mutationsBtn: (store) => {
// 		// console.log(666)
		
// 	},
// 	mutationsPost: (store, res) => {
// 		console.log('mutations', res)
// 	}
// }

// export default {
// 	state,
// 	actions,
// 	mutations
// }