const state = {
	num:'1',
	title:'',
	price:'',
	img:'',
	tableNo:''
}

const actions = {
	actionsPush: (store) => {
		console.log(store)
		store.commit('mutationsPush')
	},
	
}
const mutations = {
	mutationsPush: (store) => {
		console.log('push',this)
		state.num
		
	}
}

export default {
	state,
	actions,
	mutations
}