import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import qs from 'qs'
import router from '../router'
Vue.use(Vuex)

export default new Vuex.Store({
  //物品
  state:{
    //标识用户是否登录
    isLogined:localStorage.getItem('islogined')?localStorage.getItem('islogined'):0,
    username:localStorage.getItem('username')?localStorage.getItem('username'):''
    
  },
  //记账员
  getters:{

  },
  //搬运工
  mutations: {
    logined(state,payload){
      state.isLogined=1;
      state.username = payload.username;
      localStorage.setItem('username',payload.username);
    },
    logout(state){
      state.isLogined=0;
      state.username='';
      localStorage.removeItem('islogined');
    }
  },
  //拉货的汽车
  actions: {
     login(context,payload){
      axios.post('/login',qs.stringify(payload)).then(res=>{
        if(res.data.code == 1){
          //提交mutations
          res.data.info.username = payload.username;
          context.commit('logined',res.data.info);
          localStorage.setItem('isLogin','1');
          localStorage.setItem('username',payload.username);
          console.log(this.state.islogined);
          router.push('/');
        }else{
          alert('用户登录失败');
        }
      }
      );
     }
  },
  modules: {
  }
})
