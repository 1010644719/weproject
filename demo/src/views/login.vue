<template>
    <div>
    <div class="bgcolor">
       <el-form :model="form" :rules="rules"  label-position="right" label-width="100px" class="form" ref="form">
           <el-form-item>
               <p class="p1">用户登录</p>
           </el-form-item>
           <el-form-item class="item" prop="uname" label="账号:">
                   <el-input
               class="inp"
                type="text"
                placeholder="账号为6~10位字母或数字"
                v-model="form.uname"
               
                ></el-input>
             <span id="sp1"></span>
           </el-form-item>
           <el-form-item  class="item" label="密码:" prop="upwd">
               
               <el-input
                type="password"
                placeholder="请输入密码"
                v-model="form.upwd"
                
                ></el-input>
              
           </el-form-item>
           <el-form-item class="item">
              <el-button @click="login()" class="btn" size="medium" type="info" plain>登录</el-button>
              <router-link class="rou" to="/register">未注册？点击注册</router-link>
           </el-form-item>
       </el-form>
       
       </div>
      
    </div>
</template>
<script>
export default {
    data(){
        return {
            form:{
                uname:'',
                upwd:'',
            },
            // 表单验证，需要在 el-form-item 元素中增加 prop 属性
            rules:{
                uname:[
                    {required:true,message:'账号不可为空',trigger:'blur'},
                    { pattern: /^[0-9a-zA-Z]{6,10}$/, message: '格式不正确！账号为6~10位字母或数字' }
                ],
                upwd:[
                    {required:true,message:'密码不可为空',trigger:'blur'},
                    { pattern: /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/, message: '格式不正确!密码为8~16为字母与数字的组合体' }
                ],
                conupwd:[
                    {required:true,message:'确认密码不可为空',trigger:'blur'},
                    { pattern: /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/, message: '格式不正确!密码为8~16为字母与数字的组合体' }
                ],
            },
            
        }
    },
    methods:{
        
       login(){
          let obj = {
                username:this.form.uname,
                password:this.form.upwd
            };
            this.$store.dispatch('login',obj);
            // this.axios.post('/login',this.qs.stringify(obj)).then(res=>{
            //      if(res.data.code == 1){
            //          alert('登录成功');
            //          this.$router.push('/');
            //      }else{
            //          alert('输入信息有误');
            //      }
            // });
       }
    }
}
</script>

<style scoped>
    .form{
        width: 400px;
        margin: 100px auto;
        padding:70px 50px 40px 0;
        border-radius:2%;
        position:absolute;
        top:30px;
        left:35%;
        background-color:rgba(0,0,0,0.6);
        box-shadow: 0 0 40px gainsboro;
    }
    .p1{
        font-size: 30px;
        color:darkturquoise;
        margin:-30px 100px 0 0;
    }
    .rou{
        margin-left:30px;
        color:turquoise;
        text-decoration: none;
    }
    .btn{
        width:40%;
    }
    .bgcolor{
        background-image: url(../../public/img/scence.jpg); 
        background-size: 100%;
         width: 90%;
         margin:0 auto;
        height:950px;
    }
</style>