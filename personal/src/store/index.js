import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    visible:false,
    islogin:sessionStorage.getItem('islogin'),  //保存是否已登陆
    userName:sessionStorage.getItem('name'),    //保存当前登陆用户名
    userImg:sessionStorage.getItem('imgs') ,     //保存当前登录用户头像
    userJifen:sessionStorage.getItem('jifen') ,     //保存当前登录用户积分
    userId:sessionStorage.getItem('userid') ,     //保存当前登录用户id
  },
  mutations: {
    login(state,newvis){
      state.visible=newvis
    },
    // 声明一个方法用于登陆成功后修改用户共享数据
    loginOk(state,newName){
      state.islogin = true;
      state.userName = newName.name;
      state.userImg=newName.img;
      state.userJifen=newName.jifen;
      state.userId=newName.userid
    },
    loginonOK(state,newLogin){
      state.islogin = newLogin.noLogin;
      state.userImg=newLogin.img
    },
    isjifen(state,newJifen){
      state.userJifen=newJifen
    }
  },
  actions: {
  },
  modules: {
  }
})
