set names utf8;
drop database if exists hanfu;
create database hanfu charset=utf8;
use hanfu;
create table bly(
  admins varchar(32),
  mima varchar(32)
);
insert into bly values('别露洋','wobushi213R');
create table other2(
  lid int primary key AUTO_INCREMENT,
  title varchar(16),
  img varchar(128)

);
insert into other2 values(null,'#图片','img/barimg/1168034_1601959102.jpg');
insert into other2 values(null,'#汉服','img/barimg/5384753_1601959102.jpg');
insert into other2 values(null,'#头像','img/barimg/15139103_1601959102.jpg');
insert into other2 values(null,'#句子','img/barimg/17701934_1601959102.jpg');
insert into other2 values(null,'#网名','img/barimg/24186122_1601959102.jpg');
insert into other2 values(null,'#摄影','img/barimg/33275291_1601959102.jpg');
insert into other2 values(null,'#音乐','img/barimg/44838007_1601959102.jpg');
insert into other2 values(null,'#更多话题','img/barimg/80799539_1601959102.jpg');
create table other(
  lid int primary key AUTO_INCREMENT,
  imgs varchar(640),
  headjmg varchar(64),
  ctime varchar(32),
  nid varchar(32),
  content varchar(128),
  zan int,
  comments int,
  look int,
  class varchar(32),
  detail varchar(5000)
);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2" id="d3"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg2/26656608_1596248795.jpg,img/userimg2/28338067_1596248795.jpg,img/userimg2/35856655_1596248795.jpg,img/userimg2/40333965_1596248795.jpg','img/userimg2/45.png','07-14 20:48','Cats','让全世界都领略到中国的文化.真的美绝了！由衷感叹！西方的油画,日本的漫画,真的希望国画也可以立足于世界',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg2/45.png" alt=""><span>Cats</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg2/26656608_1596248795.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg2/28338067_1596248795.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg3/26818714_1592977566.jpg,img/userimg3/27461302_1592977566.jpg,img/userimg3/22239368_1592977568.jpg,img/userimg3/28414407_1592977566.jpg,img/userimg3/30839284_1592977566.jpg,img/userimg3/51004505_1592977566.jpg,img/userimg3/55215122_1592977567.jpg,img/userimg3/81200043_1592977566.jpg,img/userimg3/91876865_1592977566.jpg','img/userimg3/11928110_1577345209.png','06-24 13:46','墨色','唯美彩绘古风头像',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg3/11928110_1577345209.png" alt=""><span>墨色</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg3/26818714_1592977566.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg3/27461302_1592977566.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg4/5949333_1591507016.jpg,img/userimg4/32473753_1582348976.jpg,img/userimg4/15542057_1591507016.jpg,img/userimg4/85422764_1591507016.jpg','img/userimg4/22.png','02-05 12:54','谪仙大人','古风壁纸图集，意境十足的古风图',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg2/41126029_1596248795.jpg,img/userimg2/68617616_1596248795.jpg,img/userimg2/69075427_1596248795.jpg,img/userimg2/74135874_1596248795.jpg,img/userimg2/91844028_1596248795.jpg','img/userimg4/23.png','06-07 13:15','潇湘雨夜','绿罗裙，飘在谁的心潮，吹起一池春水摇；心底事，醒也思醉也思，才知相思如山倒；怎么好，为你已病入膏肓，等你那一味解药；浮生梦，绿罗裙花影娇，只合与卿老。——《折枝花满衣》',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部','<div class="debar"><i class="jinsom-icon jinsom-fanhui2"></i><div class="barimg"><img src="img/userimg/27.png" alt=""><span>执酒共酌</span></div><div class="rightbar"><i class="jinsom-icon jinsom-guanzhu"></i>关注</div> </div> <div class="contents"><h1>容易热评的古风句子,适合发圈做书签</h1><span>2020-08-04 09:10</span><p>容易热评的古风句子,适合发圈做书签；今天古朴网小编为大家分享一组适合发朋友圈或者是拿来做书签的神仙古风句子，超级容易热评哟，有你心动的短句嘛，快来看看吧~</p>
<img src="img/userimg/37684471_1591506914.jpg" alt=""><div class="connt"><p>阳春二三月，草与水同色。<br>总之岁月漫长，然而值得等待。<br>你再不来，我就下雪了。<br>春水碧于天，画船听雨眠。<br>轻罗小扇扑流萤。<br>孤舟蓑笠翁，独钓寒江雪。<br>风雪夜归人<br>入月里我是瓶中的水，你是青天的云。<br>理想只不过是个葬送我们一生的口号。<br>然而人生辽阔，不要只活在爱恨里。<br></p><img src="img/userimg/37684471_1591506914.jpg" alt=""><p>你说你孤独，像很久以前长星照耀十三个州府，你那种孤独。<br>柳下闻瑶琴起舞和一曲，仿佛映当年翩若惊鸿影。<br>只要想起一生中后悔的事，梅花便落满了南山。<br>这世间的苦难不会比你的勇气多<br>书不成字，纸短情长。<br> 我是一个在黑暗中大雪纷飞的人啊。<br>这世上真话本就不多，一位女子的脸红胜过一大段对白。<br>他们紧挨着孤独，像世间疾苦，又不掩春黄香时，等人来敲门。而敲门的人走错时间，也在等黄香。<br>暮冬时烤雪，迟夏写长<br></p>
</div>');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部',null);


