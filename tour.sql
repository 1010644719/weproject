SET NAMES UTF8;
DROP DATABASE IF EXISTS tour;
CREATE DATABASE tour CHARSET=UTF8;
USE tour;
#用户登录注册
CREATE TABLE tour_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(11) NOT NULL,
  password VARCHAR(32) NOT NULL,
  nickname VARCHAR(32) DEFAULT NULL
);
INSERT INTO tour_user VALUES(NULL,'dingding','qq1234567','撅腚的兔子');
#主页
CREATE TABLE tour_article(
	uid  INT(10)  NOT NULL,
	utitle VARCHAR(50) NOT NULL,
	subject VARCHAR(50) NOT NULL,
	description VARCHAR(255) NOT NULL,
	image VARCHAR(50) DEFAULT NULL
);

INSERT INTO tour_article(uid,utitle,subject,description,image) VALUES(1,'经典景点','安仁古镇',"安仁古镇地处成都平原西部，距成都41公里、双流国际机场38公里、大邑县城8公里，处于成温邛高速公路和川西旅游环线上。安仁古镇历史悠久，早在唐武德三年（公元620年）就建安仁县（早于大邑建县50多年），隶属于剑南道邛州，据《太平寰宇记》载由“取仁者安仁之意”而得名，当时的县治就在今天的安仁镇，因古为“安仁”县治，故得名。直至元朝二十一年（公元1284年），安仁县建置撤销，其区域划归大邑县。安仁镇是国家级重点镇、中国历史文化名镇、成都市十大魅力城镇和成都市十四个优先发展重点镇之一。","b1.jpg");
INSERT INTO tour_article(uid,utitle,subject,description,image) VALUES(3,'热门景点','芙蓉镇',"芙蓉镇，本名王村，是拥有两千多年历史的古镇，因宏伟瀑布穿梭其中，又称“挂在瀑布上的千年古镇”。","b2.jpg");
INSERT INTO tour_article(uid,utitle,subject,description,image) VALUES(2,'冷门景点','黄姚古镇',"黄姚古镇位于广西贺州昭平县东北部，距离贺州市区40公里，距桂林200公里。","b3.jpg");
#详情
CREATE TABLE tour_xiangqing(
	uid  INT(10)  NOT NULL,
	title VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	details VARCHAR(255) DEFAULT NULL,
	image VARCHAR(50) DEFAULT NULL,
	lng DECIMAL(10,6),
	lat DECIMAL(10,6),
	newprice INT(5),
	price INT(5),
	pricetitle VARCHAR(50)
);

INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat,newprice,price,pricetitle) VALUES(1,'成都平原，古朴安仁',"安仁古镇","安仁古镇地处成都平原西部，距成都41公里、双流国际机场38公里、大邑县城8公里，处于成温邛高速公路和川西旅游环线上。安仁古镇历史悠久，早在唐武德三年（公元620年）就建安仁县（早于大邑建县50多年），隶属于剑南道邛州，据《太平寰宇记》载由“取仁者安仁之意”而得名，当时的县治就在今天的安仁镇，因古为“安仁”县治，故得名。直至元朝二十一年（公元1284年），安仁县建置撤销，其区域划归大邑县。安仁镇是国家级重点镇、中国历史文化名镇、成都市十大魅力城镇和成都市十四个优先发展重点镇之一。","/b1.jpg",117.277314,40.654264,116,208,"今天12:00-24:00预订，享8.0折优惠");
INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat,newprice,price,pricetitle) VALUES(2,'中国历史文化名镇，4A级景区',"黄姚古镇","黄姚古镇位于广西贺州昭平县东北部，距离贺州市区40公里，距桂林200公里。","/b3.jpg",111.206917,24.248012,130,180,"今天12:00-24:00预订，享8.0折优惠");
INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat,newprice,price,pricetitle) VALUES(3,'芙蓉镇电影拍摄地',"芙蓉镇","芙蓉镇，本名王村，是拥有两千多年历史的古镇，因宏伟瀑布穿梭其中，又称“挂在瀑布上的千年古镇”。位于湘西土家族苗族自治州境内的永顺县，与龙山里耶镇、泸溪浦市镇、花垣茶峒镇并称“湘西四大名镇”，又有酉阳雄镇、“小南京”美誉。电影《芙蓉镇》在此拍摄，遂更名为“芙蓉镇”。国家AAAA级景区。
芙蓉镇地处武陵山区，永顺县南端51公里处，东与高坪乡、松柏镇相接，南与长官镇相邻，北与列夕乡、抚志乡交界，西与古丈县红石林镇、罗依溪镇隔河相望。","/furongzhen.jpg",109.946151,28.74283,160,190,"今天12:00-24:00预订，享8.0折优惠");
INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat,newprice,price,pricetitle) VALUES(4,'中国十大魅力名镇，5A级景区',"乌镇","乌镇位于浙江省嘉兴市桐乡市，地处江浙沪“金三角”之地、杭嘉湖平原腹地，距杭州、苏州均为60公里，距上海106公里。属太湖流域水系，河流纵横交织，京杭大运河依镇而过。乌镇原以市河为界，分为乌青二镇，河西为乌镇，属湖州府乌程县；河东为青镇，属嘉兴府桐乡县。解放后，市河以西的乌镇划归桐乡县，才统称乌镇。","/wuzhen.jpg",120.491983,30.747936,203,270,"今天12:00-24:00预订，享8.0折优惠");
INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat,newprice,price,pricetitle) VALUES(5,'美丽“瓷都”，四大名镇',"景德镇","景德镇市，别名 “瓷都”，江西省地级市，位于江西省东北部，西北与安徽省东至县交界，南与万年县为邻，西同鄱阳县接壤，东北倚安徽省祁门县，东南和婺源县毗连。介于东经116°57′—117°42′，北纬28°44′—29°56′之间，总面积5256平方千米。景德镇市是世界瓷都，中国直升机工业的摇篮。国务院首批公布的24座历史文化名城之一和国家甲类对外开放地区。民国时期曾与广东佛山、湖北汉口、河南朱仙并称全国四大名镇。","/jingdezhen.jpg",117.184495,29.284176,104,186,"今天12:00-24:00预订，享8.0折优惠");
#排行
CREATE TABLE tour_paihang(
	uid  INT(10)  NOT NULL,
	subject VARCHAR(50) NOT NULL,
	description VARCHAR(255) DEFAULT NULL,
	image VARCHAR(50) DEFAULT NULL,
	search INT(10) NOT NULL,
	icon VARCHAR(30) DEFAULT NULL
);

INSERT INTO tour_paihang(uid,subject,description,image,search,icon) VALUES(4,'乌镇',"乌镇位于浙江省嘉兴市桐乡市，地处江浙沪“金三角”之地、杭嘉湖平原腹地，距杭州、苏州均为60公里，距上海106公里。属太湖流域水系，河流纵横交织，京杭大运河依镇而过。乌镇原以市河为界，分为乌青二镇，河西为乌镇，属湖州府乌程县；河东为青镇，属嘉兴府桐乡县。解放后，市河以西的乌镇划归桐乡县，才统称乌镇。","/wuzhen.jpg",967,"/up.png");
INSERT INTO tour_paihang(uid,subject,description,image,search,icon) VALUES(5,'景德镇',"景德镇市，别名 “瓷都”，江西省地级市，位于江西省东北部，西北与安徽省东至县交界，南与万年县为邻，西同鄱阳县接壤，东北倚安徽省祁门县，东南和婺源县毗连。介于东经116°57′—117°42′，北纬28°44′—29°56′之间，总面积5256平方千米。景德镇市是世界瓷都，中国直升机工业的摇篮。国务院首批公布的24座历史文化名城之一和国家甲类对外开放地区。民国时期曾与广东佛山、湖北汉口、河南朱仙并称全国四大名镇。","/jingdezhen.jpg",911,"/down.png");
INSERT INTO tour_paihang(uid,subject,description,image,search,icon) VALUES(3,'芙蓉镇',"芙蓉镇，本名王村，是拥有两千多年历史的古镇，因宏伟瀑布穿梭其中，又称“挂在瀑布上的千年古镇”。位于湘西土家族苗族自治州境内的永顺县，与龙山里耶镇、泸溪浦市镇、花垣茶峒镇并称“湘西四大名镇”，又有酉阳雄镇、“小南京”美誉。电影《芙蓉镇》在此拍摄，遂更名为“芙蓉镇”。国家AAAA级景区。
芙蓉镇地处武陵山区，永顺县南端51公里处，东与高坪乡、松柏镇相接，南与长官镇相邻，北与列夕乡、抚志乡交界，西与古丈县红石林镇、罗依溪镇隔河相望。","/furongzhen.jpg",761,"/down.png");
INSERT INTO tour_paihang(uid,subject,description,image,search,icon) VALUES(6,'西塘古镇',null,null,439,"/up.png");
INSERT INTO tour_paihang(uid,subject,description,image,search,icon) VALUES(6,'西塘古镇',null,null,439,"/up.png");