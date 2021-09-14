import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    visible:false,
    islogin:sessionStorage.getItem('islogin'),  //保存是否已登陆
    username:sessionStorage.getItem('name')    //保存当前登陆用户名
  },
  mutations: {
    login(state,newvis){
      state.visible=newvis
    },
    // 声明一个方法用于登陆成功后修改用户共享数据
    loginOk(state,newName){
      state.islogin = true;
      state.username = newName;
    },
    loginonOK(state,newLogin){
      state.islogin = false;
    },
  },
  actions: {
  },
  modules: {
  }
})
