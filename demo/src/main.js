import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import VueAMap from 'vue-amap';
import axios from 'axios'
import HomeFooter from '../src/components/Footer.vue'
import HomeHeader from '../src/components/Header.vue'
//让myheader变成全局组件
Vue.component("Header",HomeHeader)
Vue.component("Footer",HomeFooter)
Vue.use(VueAMap);
// 初始化vue-amap
VueAMap.initAMapApiLoader({
    key: '633cee32c05e95522ff4e4974906a7bf'
});

Vue.use(ElementUI);
Vue.prototype.axios = axios;
axios.defaults.baseURL="http://127.0.0.1:3000";

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
