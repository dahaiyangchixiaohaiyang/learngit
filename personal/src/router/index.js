import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Popup from "../views/test/Popup.vue"
import Login from "../views/login.vue"
import Detail from "../views/Detail"
import Faxian from "../views/Faxian.vue"
import User from "../views/User.vue"
import Users from "../views/Users.vue"
import Cs from "../views/test/Cs.vue"

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/detail',
    component: Detail
  },
  {
    path: '/faxian',
    component: Faxian
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/popup',
    component: Popup
  },
  {
    path: '/user',
    component: User
  },
  {
    path: '/users',
    component: Users
  },
  {
    path: '/cs',
    component: Cs
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
