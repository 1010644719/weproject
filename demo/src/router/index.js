import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Index.vue'
import guzhen from '../views/guzhen.vue'
import minsu from '../views/minsu.vue'
import paihang from '../views/paihang'
import login from '../views/login.vue'
import register from '../views/register.vue'

// 解决ElementUI导航栏中的vue-router在3.0版本以上重复点菜单报错问题
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push (location) {
  return originalPush.call(this, location).catch(err => err)
}
Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    component: login
  },
  {
    path: '/register',
    component: register
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path:'/guzhen/:id',
    component: guzhen
  },
  {
    path:'/minsu/:id',
    component: minsu
  },
  {
    path:'/paihang',
    component: paihang
  }
  
]

const router = new VueRouter({
  routes
})

export default router
