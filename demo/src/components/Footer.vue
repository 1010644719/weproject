<template>
    <div>
    <div class="footer">
        <el-row class="f1">
            <el-col :span="8"><router-link to="#"><img src="../../public/img/f1.jpg" alt=""></router-link></el-col>
            <el-col :span="8"><router-link to="#"><img src="../../public/img/f2.png" alt=""></router-link></el-col>
            <el-col :span="8"><router-link to="#"><img src="../../public/img/f3.png" alt=""></router-link></el-col>
           
        </el-row>
        <el-row  class="el-1"> 
            <div>
                <el-col :span="8">
                    <ul>
                        <h3>关于我们</h3>
                        <li><router-link to="#">服务指南</router-link></li>
                        <li><router-link to="#">关于古镇</router-link></li>
                        <li><router-link to="#">关于民宿</router-link></li>
                        <li></li>
                        
                    </ul>
                </el-col>
                <el-col :span="8">
                      <ul>
                        <h3><router-link to="#">网站帮助</router-link></h3>
                        <li><router-link to="#">古镇索引</router-link></li>
                        <li><router-link to="#">民宿索引</router-link></li>
                        <li><router-link to="#">攻略索引</router-link></li>
                        <li><router-link to="#">旅游索引</router-link></li>
                        
                    </ul>
                </el-col>
                <el-col :span="8">
                     <ul>
                        <h3><router-link to="#">加入我们</router-link></h3>
                        <li><router-link to="#">诚招英才</router-link></li>
                        <li><router-link to="#">联系我们</router-link></li>
                        <li><router-link to="#">加盟合作</router-link></li>
                        <li><router-link to="#">民宿加盟</router-link></li>
                        
                    </ul>
                </el-col>
                
            </div>
          </el-row>  
        </div>  
         <div id="copyright">
             版权所有©古镇民宿小组 | 地址：北京某牛逼的宿舍 | 邮编：100000 | 京ICP备16004030号 
         </div>
    </div>
</template>
<style scoped>
    .el-row{
        text-align: center;
        
    }
     .el-col{
      padding-bottom: 5px;
   
    }
    .el-1{
         background:#f5f9fa;
    }
    .f1{
       
        padding-top: 25px;
    }
    a{
        text-decoration: none;
        color:rgb(68, 65, 65);
    }
    ul{
         padding-left: 0;
    }
    ul li{
        font-size: 16px;
        font-weight: 500;
        color: #2f3031;
       list-style: none;
       margin: 10px;
    }
    .footer{
        margin-top:20px;
    }
    /* 黑底 */
    #copyright{
        background-color:#e7e7e7;
        color: #575757;
        font-size: 12px;
        text-align: center;
        line-height: 30px;
    }
</style>
<script>

export default {
   name:"Footer"
}
</script>