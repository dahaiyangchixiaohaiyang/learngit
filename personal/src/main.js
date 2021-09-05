import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from 'vant';
import 'vant/lib/index.css';
import './assets/font/iconfont2.css'
import './assets/font/iconfont.css'
import './assets/css/iphon.css'

//引入全局通用样式
import './assets/css/index.css'

//去除默认样式,移动端1px边框问题，移动端刘海屏
// import './assets/css/device/index.less'

//rem转换
import './utils/lib-flexible'
// import { Icon } from 'vant';
// Vue.use(Icon);
Vue.use(Vant);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
