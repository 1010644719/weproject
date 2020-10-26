<template>
  <div>
    <Header></Header>
    <div class="containr">
      <el-row>
        <el-col :span="24" class="title">
          <div>
            <p >近日古镇排名榜</p>
          </div>
        </el-col>
      </el-row>

        <el-row class="top">
        <el-col :span="4">
            <p>排名</p>
        </el-col>
        <el-col :span="4">
          <span>关键字</span>
        </el-col>
        <el-col :span="12">
          <span>相关链接</span>
        </el-col>
        <el-col :span="4">
          <span>搜索指数</span>
        </el-col>
      </el-row>


      <div v-for="(file,index) of file" :key="index" class="d1">
        <router-link :to="`/guzhen/${file.uid}`"> 
        <el-row class="top1">
            <el-col :span="4">
                <button class="b1">{{file.uid}}</button>
            </el-col>
            <el-col :span="4">
            <a>{{file.subject}}</a>
            </el-col>
            <el-col :span="12">
            <a>图片/</a>
            <a>视频</a>
            </el-col>
            <el-col :span="4">
            <p>{{file.search}}<img :src="file.icon"></P>
            
            </el-col>
        </el-row>
        <hr>
        
        <el-row class="top2" id="top2">
            <el-col :span="8" v-if="file.image !=null">
                <img :src="file.image">
            </el-col>
            <el-col :span="16">
            <p>{{file.description}}</p>
            </el-col>
        </el-row>
        <hr class="hr">
        </router-link>
      </div>
    </div>
  </div>
</template>

<style scoped>
  hr{
    margin: 0;
  }
  .containr{
    margin:0 150px;
  }

  .title{
    padding:0px;
    font-size: 35px;
    font-family: STSong;
    text-align: center;
    font-weight: bold;
    color: rgb(77, 77, 77);
  }
  .top{
    background-color: #F7F7F7;
    
  }

  .top1 a{
    display: inline;
    text-decoration: none;
    color: #2464B2;
    margin-left: 2px;
    

  }

  .top1 button{
    color: #fff;
    text-align: center;
    display: inline;
    font-size: 10px;
    line-height: 10px;
    background: #F23D7C;
    border: 1px solid #DD2464;
  
  }
  
  .over a{
    display: inline;
    text-decoration: none;
    color: #2464B2;
    margin-left: 2px;
    

  }
  .over button{
    color: #fff;
    text-align: center;
    display: inline;
    font-size: 10px;
    line-height: 10px;
    background: #C0C1C3;
    border: 1px solid #ACAEB2;
  }
  /*.top1{
    background-image: linear-gradient(to bottom,white,rgb(77, 77, 77));
  }*/
  .top2 img{
    width: 250px;
    height: 150px;
    margin: 10px;
  }
  /* .top2{
    display: none;
  } */
  .d1:nth-child(n) .hr{
    display: none;
  }
  .d1:nth-child(3) .hr{
    display: block;
  }
  .d1:nth-child(4) .hr{
    display: block;
  }
  .d1:nth-child(5) .hr{
    display: block;
  }
  .d1:nth-child(n) .top2{
    display: none;
  }
  .d1:nth-child(3) .top2{
    display: block;
  }
  .d1:nth-child(4) .top2{
    display: block;
  }
  .d1:nth-child(5) .top2{
    display: block;
  }
  .d1:nth-child(n) .b1{
    background: #c0c1cc;
    border: 1px solid #ACAEB2;
  }
  .d1:nth-child(3) .b1{
    background: #F23D7C;
    border: 1px solid #DD2464;
  }
  .d1:nth-child(4) .b1{
    background: #F23D7C;
    border: 1px solid #DD2464;
  }
  .d1:nth-child(5) .b1{
    background: #F23D7C;
    border: 1px solid #DD2464;
  }
  .d1:nth-child(2n){
     background: #fffef9;
  }
  .d1:nth-child(2n+1){
    background-color:#f6f5ec; 

  }
  .el-col{
    text-align: center;
  } 
  .top2 p{
    line-height: 23px;
    font-size: 14px;
    color: dimgray;
    text-indent:2em;
    text-align: left;
  }
  .el-row{
    display: flex;
    justify-content: center;
    align-items: center;
  }
</style>
<script>
export default {
  data(){
    return{
      file:[]
    }
  },
  mounted(){

    this.axios.get('/Ranking').then((res)=>{
      this.file=res.data.results;
      let data =this.file;
      res.data.results.forEach(item=>{
        if(item.image!=null){
           item.image = require(`../../public/img`+item.image);
          }
            item.icon = require(`../../public/img`+item.icon);
      })
      
    })
    
  }
}
</script>