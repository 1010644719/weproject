<template>
    <div>
        <div>
            <el-row>
                <el-col :span="24" class="header">
                    <img :src="file.image" alt="">    
                </el-col>
            </el-row>
            <el-row>
                <el-col :span="18" id="nav_class">
                    <div class="nav">
                        <el-row class="nav_left">
                            <el-col :span="4"><a href="#d1" class="maodian">房屋介绍</a></el-col>
                            <el-col :span="4"><a href="#d2" class="maodian">房屋位置</a></el-col>
                            <el-col :span="4"><a href="#d3" class="maodian">入住须知</a></el-col>
                            <el-col :span="4"><a href="#d4" class="maodian">额外费用</a></el-col>
                        </el-row>
                    </div>
                </el-col>
                <el-col :span="6" id="nav_class">
                    <el-row class="nav_right">
                        <el-col :span="4" class="nav_margin"><span class="nav_icon nav_position_1"></span><span>分享</span></el-col>
                        <el-col :span="4" class="nav_margin"><span class="nav_icon nav_position_2"></span><span>收藏</span></el-col>
                    </el-row>
                </el-col>       
            </el-row> 
            <el-row class="main"> 
                <el-col :span="24" class="main_body">
                    <el-row :gutter="5">
                        <el-col :span="12" class="main_floor">
                            <div class="main_floor_title">{{file.title}}</div>
                            <div class="main_floor_dizhi">地址：{{file.address}}<a href="#d2">查看地图</a></div>
                            <div style="margin: 45px 0">
                                <el-row :gutter="5">
                                    <el-col :span="3">
                                        <div class="icon_fwlx main_floor_icon"></div>
                                        <div class="house_font">loft复式</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_hx main_floor_icon"></div>
                                        <div class="house_font">2室1厅2卫</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_cx main_floor_icon"></div>
                                        <div class="house_font">2张床</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_yzjr main_floor_icon"></div>
                                        <div class="house_font">宜住4人</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_dlwy main_floor_icon"></div>
                                        <div class="house_font">独立卫浴</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_gjlt main_floor_icon"></div>
                                        <div class="house_font">观景露台</div>
                                    </el-col>
                                    <el-col :span="3">
                                        <div class="icon_sj main_floor_icon"></div>
                                        <div class="house_font">山景</div>
                                    </el-col>
                                </el-row>
                            </div>
                            <div class="main_fwms" id="d1"> 
                                <el-collapse v-model="activeNames">
                                    <el-collapse-item name="1">
                                        <template slot="title">
                                            <p class="main_fwms_title">房屋描述</p>
                                        </template>
                                        <div>{{file.details}}</div>
                                    </el-collapse-item>
                                    <el-collapse-item name="2">
                                        <template slot="title">
                                            <p class="main_fwms_title">设备服务</p>
                                        </template>
                                        <div class="main_sbfu">
                                            <ul>
                                                <li>
                                                    <h2 style="font-size: 14px">基础设施</h2>
                                                    <p><i class="iconserver icon1"></i>无线网络</p>
                                                    <p><i class="iconserver icon2"></i>空调</p>
                                                    <p><i class="iconserver icon3"></i>电视</p>
                                                    <p><i class="iconserver icon4"></i>洗衣机</p>
                                                    <p><i class="iconserver icon5"></i>冰箱</p>
                                                    <p><i class="iconserver icon6"></i>暖气</p>
                                                    <p><i class="iconserver icon7"></i>电热水壶</p>
                                                    <p><i class="iconserver icon8"></i>电吹风</p>
                                                    <p><i class="iconserver icon9"></i>洗衣粉</p>
                                                    <p><i class="iconserver icon10"></i>晾衣架</p>
                                                    <p><i class="iconserver icon11"></i>拖鞋</p>
                                                    <p><i class="iconserver icon12"></i>地毯</p>
                                                    <p><i class="iconserver icon13"></i>装饰字画</p>
                                                    <p><i class="iconserver icon14"></i>沙发</p>
                                                    <p><i class="iconserver icon15"></i>休闲椅</p>
                                                    <p><i class="iconserver icon16"></i>茶几</p>
                                                    <p><i class="iconserver icon17"></i>净水设备</p>
                                                </li>
                                                <li>
                                                    <h2 style="font-size: 14px">卫浴设施</h2>
                                                    <p><i class="iconserver icon18"></i>可洗热水澡</p>
                                                    <p><i class="iconserver icon19"></i>洗浴用具</p>
                                                    <p><i class="iconserver icon20"></i>毛巾</p>
                                                    <p><i class="iconserver icon21"></i>牙具</p>
                                                    <p><i class="iconserver icon22"></i>独立卫浴</p>
                                                    <p><i class="iconserver icon23"></i>浴巾</p>
                                                    <p><i class="iconserver icon24"></i>香皂</p>
                                                    <p><i class="iconserver icon25"></i>卫生纸</p>
                                                </li>
                                                <li>
                                                    <h2 style="font-size: 14px">厨房设施</h2>
                                                    <p><i class="iconserver icon26"></i>烹饪锅具</p>
                                                    <p><i class="iconserver icon27"></i>餐具</p>
                                                    <p><i class="iconserver icon28"></i>电磁炉</p>
                                                    <p><i class="iconserver icon29"></i>调料</p>
                                                    <p><i class="iconserver icon30"></i>刀具菜板</p>
                                                    <p><i class="iconserver icon31"></i>电饭煲</p>
                                                    <p><i class="iconserver icon32"></i>洗涤用具</p>
                                                </li>
                                                <li>
                                                    <h2 style="font-size: 14px">周边500米</h2>
                                                    <p><i class="iconserver icon33"></i>超市</p>
                                                    <p><i class="iconserver icon34"></i>餐厅</p>
                                                    <p><i class="iconserver icon35"></i>免费停车位</p>
                                                </li>
                                                <li>
                                                    <h2 style="font-size: 14px">特色及其他</h2>
                                                    <p><i class="iconserver icon36"></i>智能门锁</p>
                                                    <p><i class="iconserver icon37"></i>保安</p>
                                                    <p><i class="iconserver icon38"></i>灭火器</p>
                                                    <p><i class="iconserver icon39"></i>火灾警报器</p>
                                                    <p><i class="iconserver icon40"></i>电梯</p>
                                                    <p><i class="iconserver icon41"></i>窗户</p>
                                                </li>
                                                <li>
                                                    <h2 style="font-size: 14px">服务</h2>
                                                    <p><i class="iconserver icon42"></i>行李寄存</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </el-collapse-item>
                                </el-collapse>
                            </div>
                            <div class="main_fwwz">
                                <div class="main_fwms_title main_fwwz_title" id="d2">房屋位置</div>
                                <div class="main_map" id="container">
                                    <el-amap
                                    center=[file.lat,file.lng];
                                    :zoom='zoom'
                                    >
                                    <el-amap-marker 
                                        :position="center"
                                        :label="label"
                                    ></el-amap-marker>
                                    </el-amap>
                                </div>
                            </div>
                            <div class="main_rzxz" id="d3">
                                <div class="main_fwms_title">入住须知</div>
                                <div class="main_rzxz_text">
                                    <p>入住时间：14:00-24:00间入住</p>
                                    <p>退房时间：12:00前退房</p>
                                    <p>自助入住：通过智能门锁自助入住</p>
                                    <p>提供发票：开具发票请与房东协商</p>
                                    <p>卫生打扫：1客1扫</p>
                                    <p>被单更换：1客1换</p>
                                    <p>洗漱更换：1客1换</p>
                                    <p class="main_rzxz_div">毛巾更换：1客1换</p>
                                    <div>
                                        接待说明：<p class="main_rzxz_p"><i class="main_rzxz_icon"></i>接待老人</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>接待儿童</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>接待外宾</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>吸烟</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>做饭</p>
                                        <p class="main_rzxz_p" style="margin-left: 70px;"><i class="main_rzxz_icon"></i>聚会</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>带宠物</p>
                                        <p class="main_rzxz_p"><i class="main_rzxz_icon"></i>商业拍摄</p>
                                    </div>
                                </div>
                            </div>
                            <div class="main_ewfy" id="d4">
                                <div class="main_fwms_title">额外费用</div>
                                <p class="">标准入住4人，之后每加1人额外收取30元，最多可加2人。如需加人，请提前联系房东，方便房东做好接待准备。</p>
                            </div>
                        </el-col>
                        <el-col :span = "6" >
                            <div class="fixed" id="searchBar">
                                <div>
                                    <span class="unit_price">
                                        <span>￥</span>
                                        <span class="price_count">{{file.newprice}}</span>
                                    </span>
                                    <span class="unit_price_origin">￥{{file.price}}</span>
                                    <span class="unit_price_discount">今日甩卖已减{{file.price-file.newprice}}元</span>
                                </div>
                                <div>
                                    <span class="unit_price_title">{{file.pricetitle}}</span>
                                </div>
                                <div>
                                    <el-date-picker
                                    v-model="value1"
                                    type="datetime"
                                    placeholder="请您选择入住时间"
                                    style="width:100%;">
                                    </el-date-picker>
                                </div>
                                <div>
                                    <el-button type="warning" size="medium" @click="btn" style="width:100%;">
                                        <span class="aside_button_span"><i></i><span>立即预定(1晚￥{{file.newprice}})</span></span>
                                    </el-button>
                                </div>
                                <div>
                                    <el-button style="width:100%;" type="text">
                                        <a href="#" class="maodian">回到顶部</a>
                                    </el-button>
                                </div>
                            </div>
                        </el-col>
                    </el-row>
                </el-col>
            </el-row>
        </div>
    </div>
</template>

<style>
    .header{
        height: 596px;
    }
    .header_font{
        margin-left: 164.6px;
        font-size: 14px;
    }
    .header_font a{
        color: #fff;
        text-decoration: none;
    }
    .header_font a:hover{
        text-decoration: underline;
    }
    #nav_class{
        background-color: #fff;
        height: 56px;
        line-height: 55px;
    }
    .nav{
        margin: 0 164.6px;
    }
    .nav_left{
        color: #333;
        font-size: 14px;
    }
    .nav_right{
        color: #333;
        font-size: 14px;
        line-height: 55px;
    }
    .nav_icon{
        display: inline-block;
        vertical-align: -3px;
        background-image: url(../../public/img/icon.png);
        width: 18px;
        height: 18px;
        margin-right: 3px;
    }
    .nav_margin{
        margin-left: 5px;
    }
    .nav_position_1{
        background-position: -218px -100px;
    }
    .nav_position_2{
        background-position: -170px -125px;
    }
    .main{
        background:#f5f5f5;
    }
    .main_body{
        padding: 20px 164.6px;
        margin: 0;
    }
    .main_floor{
        background-color: #fff;
        color: #333;
        padding: 40px 30px 50px;
    }
    .main_floor_title{
        font-size: 28px;
        margin-left: 30px;
    }
    .main_floor_dizhi{
        color: #9b9b9b;
        font-size: 14px;
        margin-left: 30px;
        margin-top: 15px;
        margin-bottom: 30px;
    }
    .main_floor_dizhi a{
        text-decoration: none;
        color: #3e97e2;
        margin-left: 5px;
    }
    .house_font{
        font-size: 14px;
        color: #666;
        text-align: center;
    }
    .main_floor_icon{
        width: 28px;
        height: 28px;
        background-image: url(../../public/img/house_icon.png);
        margin-left: 30px;
    }
    .icon_fwlx{
        background-position: -64px 0;
    }
    .icon_hx{
        background-position: 0 0;
    }
    .icon_cx{
        background-position: -64px -64px;
    }
    .icon_yzjr{
        background-position: -96px -96px;
    }
    .icon_dlwy{
        background-position: 32px -32px;
    }
    .icon_gjlt{
        background-position: -64px -32px;
    }
    .icon_sj{
        background-position: -96px -32px;
    }
    .main_fwms{
        margin: 20px 30px;
    }
    .main_fwms_title{
        font-size: 20px;
    }
    .main_sbfu{
        font-size: 14px;
        color: #666;
        line-height: 20px;
    }
    .main_sbfu ul{
        list-style: none;padding:0;
    }
    .main_sbfu ul li{
        padding:0;
    }
    .main_sbfu p{
        width: 20%;
        display: inline-block;
        margin-bottom: 15px;
    }
    .main_sbfu i{
        width: 20px;
        height: 20px;
        display: inline-block;
        background-repeat: no-repeat;
        margin-right: 13px;
        vertical-align: middle;
    }
    .iconserver{
        width: 20px;
        height: 20px;
        background-image:url(../../public/img/houseService-icon.png);
    }
    .icon1{
        background-position: -192px -216px;
    }
    .icon2{
        background-position: 0 -24px;
    }
    .icon3{
        background-position: -216px -192px;
    }
    .icon4{
        background-position: -96px -216px;
    }
    .icon5{
        background-position: -144px -120px;
    }
    .icon6{
        background-position: -144px -48px;
    }
    .icon7{
        background-position: -120px -144px;
    }
    .icon8{
        background-position: -144px -24px;
    }
    .icon9{
        background-position: -96px -48px;
    }
    .icon10{
        background-position: -24px -96px;
    }
    .icon11{
        background-position: -96px -192px;
    }
    .icon12{
        background-position: -72px -48px;
    }
    .icon13{
        background-position: -48px -216px;
    }
    .icon14{
        background-position: 0 0;
    }
    .icon15{
        background-position: -168px -48px;
    }
    .icon16{
        background-position: -216px -96px;
    }
    .icon17{
        background-position: -144px -216px;
    }
    .icon18{
        background-position: -48px -168px;
    }
    .icon19{
        background-position: -144px 0;
    }
    .icon20{
        background-position: -216px -168px;
    }
    .icon21{
        background-position: -216px -144px;
    }
    .icon22{
        background-position: 0 -144px;
    }
    .icon23{
        background-position: -48px -24px;
    }
    .icon24{
        background-position: -168px -192px;
    }
    .icon25{
        background-position: -216px -120px;
    }
    .icon26{
        background-position: -216px 0;
    }
    .icon27{
        background-position: -216px -72px;
    }
    .icon28{
        background-position: -24px -144px;
    }
    .icon29{
        background-position: -192px -168px;
    }
    .icon30{
        background-position: -96px -24px;
    }
    .icon31{
        background-position: -192px -96px;
    }
    .icon32{
        background-position: -72px -216px;
    }
    .icon33{
        background-position: -216px 0;
    }
    .icon34{
        background-position: -48px -72px;
    }
    .icon35{
        background-position: 0 -120px;
    }
    .icon36{
        background-position: -120px -192px;
    }
    .icon37{
        background-position: 0 -192px;
    }
    .icon38{
        background-position: -120px -48px;
    }
    .icon39{
        background-position: -120px -24px;
    }
    .icon40{
        background-position: -96px -96px;
    }
    .icon41{
        background-position: -216px -216px;
    }
    .icon42{
        background-position: -168px -96px;
    }
    .main_fwwz{
        margin-bottom: 50px;
    }
    .main_fwwz_title{
        margin-left: 30px;
        margin-top: 10px;
        margin-bottom: 20px;
    }
    .main_map{
        width: 100%;
        height: 488px;
    }
    .main_rzxz{
        margin-left: 30px;
        font-size: 14px;
        color: #333;
    }
    .main_rzxz_text{
        padding-top: 25px;
    }
    .main_rzxz_icon{
        width: 14px;
        height: 14px;
        display: inline-block;
        background-repeat: no-repeat;
        margin-right: 5px;
        vertical-align: middle;
        background-image:url(../../public/img/icon.png);
        background-position: -174px -176px;
    }
    .main_rzxz_p{
        width: 15%;
        display: inline-block;
        margin-bottom: 0px; 
    }
    .main_rzxz_div{
        margin-bottom: 0;
    }
    .main_ewfy{
        margin-top: 88px;
        margin-left: 30px;
        margin-right: 30px;
        padding: 15px 20px;
        background: rgba(255,144,47,.05);
        border-radius: 2px;
        font-size: 14px;
        color: #333;
    }
    .fixed{
        width: 400px;
        height: 325px;
        background: #fff;
        position: fixed;
        bottom: 100px;
        left: 870px;
        box-sizing: border-box;
        z-index: 2;
    }
    .aside_button_span{
        font-size: 18px;
        line-height: 18px;
        display: inline-block;
        font-family: PingFangSC-Medium;
        letter-spacing: 0;
    }
    .aside_button_span i{
        display: inline-block;
        background-image: url(../../public/img/icon.png);
        background-position: -130px -110px;
        width: 12px;
        height: 18px;
        vertical-align: text-bottom;
        position: relative;
        top: 1px;
        margin-right: 4px;
    }
    .unit_price{
        font-size: 14px;
        color: #333;
        line-height: 12px;
        letter-spacing: 0;
    }
    .price_count{
        font-family: tjFont;
        font-size: 36px;
        text-align: right;
        line-height: 34px;
        margin-right: 5px;
        font-weight: 600;
    }
    .unit_price_origin{
        font-size: 12px;
        color: #999;
        letter-spacing: 0;
        line-height: 12px;
        text-decoration: line-through;
        margin-left: 10px;
    }
    .unit_price_discount{
        margin-left: 7px;
        font-size: 12px;
        color: #fd8238;
        letter-spacing: 0;
        line-height: 12px;
    }
    .unit_price_title{
        text-align: justify;
        font-size: 12px;
        color: #666;

    }
    #searchBar{
        display: none;
    }
    #searchBar div{
        margin: 20px 0;
        padding: 0 10px
    }
    .maodian{
        text-decoration: none;
        color: #333;
    }
    .maodian:hover{
        color: #fd8238;
    }
</style> 
<script>
    export default {
    data() {
      return {
        activeNames: ['1'],
        center: [],
        zoom: 15,
        label:{
            content: '自定义标题',
            offset:[10,12]
        },
        value1: '',
        file:{}
       
      };
    },mounted(){
        let id = this.$route.params.id;
        this.axios.get('/details?id=?'+id).then((res)=>{
            let results = res.data.results;
            this.file = results;
            console.log(this.file);
            results.image = require(`../../public/img`+results.image); 
            this.center = [results.lng,results.lat];
         })
        window.addEventListener('scroll',this.handleScroll)
    }
    ,methods: {
        handleScroll(){
            let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
            let offsetTop = document.querySelector('#searchBar').offsetTop;

            if(scrollTop<=530){
                offsetTop = 1200 - Number(scrollTop);
                document.querySelector('#searchBar').style.top = offsetTop + 'px';
            }else{
                document.querySelector('#searchBar').style.top = '50px';
                document.querySelector("#searchBar").style.display="block"
            }
        },
        btn(){
            alert("功能有待开发")
        }
    },
    destroyed(){
        window.removeEventListener('scroll',this.handleScroll)
    }
  }
</script>