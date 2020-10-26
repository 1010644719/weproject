<template>
    <div>
    <div class="bgcolor">
       <el-form :model="form" :rules="rules"  label-position="right" label-width="100px" class="form" ref="form">
           <el-form-item>
               <p class="p1">用户注册</p>
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
            <el-form-item class="item" label="确认密码:" prop="conupwd">
                
               <el-input
                type="password"
                placeholder="请再次输入密码"
                v-model="form.conupwd"
                
                ></el-input>
                
           </el-form-item>
           <el-form-item class="item">
              <el-button @click="submit('form')" class="btn" size="medium" type="primary">注册</el-button>
              <router-link class="rou" to="/login">已注册？点击登录</router-link>
           </el-form-item>
       </el-form>
       <el-dialog
        title="用户注册信息"
        :visible.sync="dialogVisible"
        width="20%"
       >
       <span id="prompt">请输入您的用户注册信息</span>
           <span slot="footer">
    <el-button @click="dialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
  </span>
       </el-dialog>
       </div>
    
       </div>
</template>
<script>
    import HomeFooter from "../components/Footer"
export default {
    name:'login',
    data(){
        var validataPass2 = (rule,value,callback)=>{
            if(value != this.form.upwd){
                callback(new Error('两次输入密码不一致!'));
            }
        }
        return {
            dialogVisible:true,
            form:{
                uname:'',
                upwd:'',
                conupwd:''
            },
            // 表单验证，需要在 el-form-item 元素中增加 prop 属性
            rules:{
                uname:[
                    {required:true,message:'账号不可为空',trigger:'blur'},
                    { pattern: /^[0-9a-zA-Z]{6,10}$/, message: '格式不正确！账号为6~10位字母或数字'},
                    {message:true}
                ],
                upwd:[
                    {required:true,message:'密码不可为空',trigger:'blur'},
                    { pattern: /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/, message: '格式不正确!密码为8~16为字母与数字的组合体' }
                ],
                conupwd:[
                    {required:true,message:'确认密码不可为空',trigger:'blur'},
                    { pattern: /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/, message: '格式不正确!密码为8~16为字母与数字的组合体' },
                    { required: true, validator:validataPass2, trigger: 'blur' }
                ],
            },
            
        }
    },
    methods:{
       submit(form){
           
           if(this.rules.uname[1].pattern.test(this.form.uname) && 
              this.rules.upwd[1].pattern.test(this.form.upwd)  &&
              this.rules.conupwd[1].pattern.test(this.form.conupwd) &&
              this.form.upwd == this.form.conupwd
           ){
               this.axios.post('/register','username='+this.form.uname+'&password='+this.form.upwd).then(res=>{
                   if(res.data.code==0){
                       let span = document.getElementById('prompt');
                       span.innerHTML = '您输入的用户已存在，请重新输入';
                       this.dialogVisible=true;
                   }else{
                        let span = document.getElementById('prompt');
                        span.innerHTML = '注册成功';
                        this.dialogVisible=true;
                       this.$router.push('/login');
                   }
               })
           }else{
               let span = document.getElementById('prompt');
               span.innerHTML = '您注册的信息有误，请重新输入';
            
               this.dialogVisible=true;
               this.$router.push('/register');
           }
         
       }
    }
}
</script>

<style scoped>
    .form{
        width: 400px;
        margin: 100px auto 0;
        padding: 70px;
        border-radius:2%;
        position:absolute;
        top:30px;
        left:35%;
        background-color:rgba(0,0,0,0.6);
        box-shadow: 0 0 40px gainsboro;
    }
    .p1{
        font-size: 30px;
        color:turquoise;
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
         background-size:100%;
         width: 90%;
         margin:0 auto;
        height:950px;
    }
</style>