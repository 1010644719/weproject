<template>
  <div>
            <el-row :getter="10">
                  <el-menu
                        :default-active="activeIndex2"
                        class="el-menu-demo"
                        mode="horizontal"
                        @select="handleSelect"
                        background-color="#d3d7d4"
                        text-color="#56452d"
                        active-text-color="#11264f">
                    <el-col :span="3">
                        <el-menu-item index="1" id="leader"><img src="../../public/img/logo.png" alt=""></el-menu-item>
                    </el-col>

                    <el-col :span="3">
                        <router-link to="/"><el-menu-item index="1" id="leader">首页</el-menu-item></router-link>
                    </el-col>
                  <div  v-for="(item,index) in lists"   :key="index">
                     <el-col :span="3">
                        <el-submenu index="2">
                        <template slot="title">{{item.utitle}}</template>
                        <router-link :to="`/guzhen/${item.uid}`">
                          <el-menu-item class="top_el" index="2-1">{{item.subject}}</el-menu-item>
                        </router-link>
                        </el-submenu> 
                     </el-col>
                  </div>
                    <!-- <el-col :span="3">
                    <el-submenu index="3">
                        <template slot="title">热门景点</template>
                         <router-link to=""><el-menu-item index="2-1">选项1</el-menu-item></router-link>
                         <router-link to=""><el-menu-item index="2-2">选项2</el-menu-item></router-link>
                         <router-link to=""><el-menu-item index="2-3">选项3</el-menu-item></router-link>
                    </el-submenu>
                     </el-col>
                    <el-col :span="3">
                    <el-submenu index="4">
                        <template slot="title">冷门景点</template>
                         <router-link to=""><el-menu-item index="2-1">选项1</el-menu-item></router-link>
                         <router-link to=""><el-menu-item index="2-2">选项2</el-menu-item></router-link>
                         <router-link to=""><el-menu-item index="2-3">选项3</el-menu-item></router-link>
                    </el-submenu>  
                    </el-col> -->
                    
                    
                        <router-link to="/paihang"><el-col :span="3"><el-menu-item index="5" >排行榜</el-menu-item></el-col></router-link> 
                         <router-link to="/"><el-col :span="3"> <el-menu-item index="6" >民宿推荐</el-menu-item></el-col></router-link>
                       <div v-if="this.$store.state.isLogined == 0 ">
                         <el-col :span="1.2">
                             <el-menu-item index="7" >
                                <router-link to="/login">登录</router-link>
                            </el-menu-item>
                         </el-col>

                          <el-col :span="1.2">
                             <el-menu-item index="7" >
                                 <router-link to="/register">注册</router-link>
                            </el-menu-item>
                         </el-col>
                        </div>

                        <div v-else>
                          <!-- <el-col :span="1.5">
                             <el-menu-item index="8" >
                                <div style="color:orange">
                                  <img class="imgHeader" src="../../public/img/iconImage.png" alt="">
                                  
                                  </div>
                            </el-menu-item>
                         </el-col> -->
                            <el-col :span="1.5">
                             <el-menu-item index="8">
                               
                                 <div @click="logout()" >
                                   {{this.$store.state.username}},注销</div>
                            </el-menu-item>
                         </el-col>
                        </div>
                  </el-menu>
            </el-row>
    </div>
</template>
<style  scoped>
    .top_el{
      display: block;
    }
     a{
        text-align: center;
        text-decoration: none;
    }
    .imgHeader{
      height: 30px;
      width:30px;
      margin-right:-20px;
    }
    #leader{
      font-size: 18px;
    }
    .el-row{
      background-color: rgb(127 138 149);
    }
   .el-col{
        text-align: center;
        padding-bottom:0px;
    }
     .el-col li{
        font-size:15px;
    }
    img{
        height:38px;
        width: 116px;
    }
    .el-menu-item:nth-child(1){
      font-size: 15px;
    }
    .el-menu-item>a{
        text-decoration:none;
        color:#56452d;
    }
</style>
<script>
    
  export default {
    name:"Header",
    data() {
      return {
       
        activeIndex: '1',
        activeIndex2: '1',
        lists:[],
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      //用户注销
        logout(){
          console.log(this.$store.state.username);
          this.$store.commit('logout');
        }
    },
    mounted(){
        this.axios.get('/lists').then(res=>{
            let data = res.data.results;
            this.lists = res.data.results;
            this.lists.forEach(item => {
               item.image=require('../../public/img/'+item.image);
            }); 
         })
    }
       
    
  }
</script>