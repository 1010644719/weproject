<template>
    <div>
        <Header></Header>
        <!-- 轮播图 -->
        <el-carousel :interval="3000"  trigger="hover"  indicator-position="inside"  height="400px">
             <!-- <router-link v-for="(item,index) in lists" :key="(index)" :to="`/guzhen/${item.id}`"> -->
                <el-carousel-item v-for="(item,index) in imglight" :key="(index)">
                    <img :src="item.url">
                    <p class="text">{{item.text}}</p>
                </el-carousel-item> 
              <!-- </router-link> -->
        </el-carousel>
        <!-- 第二层景点介绍 -->
        <div class="container_bj">
            <!-- 经典景点 -->
            <el-row :getter="10">
                <el-col :span="24" >
                    <el-row>
                        <div class="gao"  v-for="(item,index) in lists"   :key="index">
                            <h1>{{item.utitle}}</h1>
                            <div class="more" >
                            <p></p>
                            <router-link to="/paihang">排行榜>></router-link>
                            <router-link  to="/paihang">更多>></router-link>
                            </div>
                            <router-link :to="`/guzhen/${item.uid}`">
                            <el-col :span="12" class="el-left"><img :src="item.image" id="rm"></el-col>
                            <el-col :span="12" class="fonts">
                            <h2>{{item.subject}}</h2>
                            <article>{{item.description}}</article>
                            </el-col>
                            </router-link>
                            
                        </div>
                        
                    </el-row>
                </el-col>
            </el-row>
        </div>
        <!-- 第三层民宿轮播图 -->
        <div class="banner2">
             <h1>民宿简介</h1>
            <el-carousel :interval="3000"  indicator-position="none" type="card" height="360px">
                <el-carousel-item v-for="(item,index) in imglight2" :key="index">
                    <img :src="item.url">
                </el-carousel-item>
            </el-carousel>
        </div>
       <Footer></Footer>
    </div>
    
    

</template>

<style>
/* 第一层轮播 */
    .el-carousel__container{
        height: 460px;
    } 
    .el-carousel__item{
        position: relative;
    }
    .el-carousel__item img{
       height: 400px;
       width: 100%;
    }
    #text{
        position: relative;
        bottom: 100px;
        color: #fafafa;
        font-size: 32px;
    }
        .text{
        position: relative;
        top:-137px;
        margin:0 auto;
        text-align: center;
        color: whitesmoke;
        font-size: 45px;
    }
/* section第二层 */
    .gao{
        display: inline-block;      
        height:367px;
    }
    .gao a{
        text-decoration: none;
        color:#293047;
    }
    .gao>h1{
        text-align: center;
        color: rgb(49, 47, 47);
    }
    .fonts>h2{
        color: rgb(68, 65, 65);
    }
    .el-col{
        padding-bottom:20px ;
    }
    .el-col>h1{
        text-align: center;
    }
    .el-left{
        text-align:left;
    }
    .el-left>img{
        float: center;
        height:216px;
        width:345px;
    }

    .container_bj{
        background: #f2eada;
        padding:31px 90px;
    }
    #rm{
        height: 221px;
        width: 541px;
        border-radius: 6px;
    }
    .more{
        display: flex;
        justify-content: flex-end;
    }
    .more p{
        width: 100% ;
        margin-top:11px ;
        border-top: 3px dashed rgb(134, 125, 125);
    }
    .more a{
        width: 100px;
        text-align: center;
        text-decoration: none;
        color:#333;
        font-weight: bold;
    }
    .rm{
        height:234px;
        width:353px;
    }
    .gao:nth-child(2),.gao:nth-child(3){
        width:50%;
    }
    .gao:nth-child(2) #rm{
       width: 333px;
    }
    .gao:nth-child(2) .fonts{
      padding:0 38px ;
    }
    .gao:nth-child(3) #rm{
       width: 333px;
    }
     .gao:nth-child(3) .fonts{
       padding:0 38px ;
    }
    /* 第三层 */
    .banner2{
        margin: 45px 0 60px;

    }
    .banner2>h1{
        text-align: center;
        color:rgb(49, 47, 47)
    }
    .banner2 .el-carousel {
        padding-top: 25px;
    }
</style>

<script>
export default {
    data(){
        return{
            imglight:[
                {
                    url:require('../../public/img/b1.jpg'),
                    text:'经典景点推荐',
                },
                {
                    url:require('../../public/img/b2.jpg'),
                     text:'热门景点推荐'
                },
                 {
                    url:require('../../public/img/b3.jpg'),
                     text:'冷门景点推荐'
                },
                 {
                    url:require('../../public/img/b4.jpg'),
                     text:'民宿风格鉴赏'
                },
            ],
            imglight2:[
                {
                    url:require('../../public/img/lb_1.jpeg'),
                 
                },
                {
                    url:require('../../public/img/lb_2.jpeg'),
                     
                },
                 {
                    url:require('../../public/img/lb_3.jpeg'),
                  
                },
                 {
                    url:require('../../public/img/lb_4.jpeg'),
                   
                },
            ],
            lists:[],
            catagory:[],
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