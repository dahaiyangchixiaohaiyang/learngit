import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    visible:false
  },
  mutations: {
    login(state,newvis){
      state.visible=newvis
    }
  },
  actions: {
  },
  modules: {
  }
})
