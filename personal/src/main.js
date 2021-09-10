import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from 'vant';
import 'vant/lib/index.css';
import './assets/font/iconfont2.css'
import './assets/font/iconfont.css'
import './assets/css/iphon.css'
import { ImagePreview } from 'vant';
import axios from 'axios';
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
// 弹出框禁止滑动
Vue.prototype.noScroll=function(){
  var mo = function(e){ e.preventDefault()}
    
  
  document.body.style.overflow = 'hidden'   //出现滚动条
  document.addEventListener('touchmove', mo, false)
}
// 弹出框可以滑动
Vue.prototype.canScroll=function(){
  var mo = function(e){
    e.preventDefault()
  }
  document.body.style.overflow = ''   //出现滚动条
  document.removeEventListener('touchmove',mo,false)
}

Vue.use(MintUI)
axios.defaults.baseURL="http://127.0.0.1:3000/"

//引入全局通用样式
import './assets/css/index.css'

//去除默认样式,移动端1px边框问题，移动端刘海屏
// import './assets/css/device/index.less'

//rem转换
// import './utils/lib-flexible'
// import { Icon } from 'vant';
// Vue.use(Icon);
Vue.use(Vant);
Vue.use(ImagePreview);


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
