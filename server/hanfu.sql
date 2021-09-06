set names utf8;
drop database if exists hanfu;
create database hanfu charset=utf8;
use hanfu;
create table bly(
  admins varchar(32),
  mima varchar(32)
);
insert into bly values('别露洋','wobushi213R');
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
  class varchar(32)
);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg2/26656608_1596248795.jpg,img/userimg2/28338067_1596248795.jpg,img/userimg2/35856655_1596248795.jpg,img/userimg2/40333965_1596248795.jpg,img/userimg2/41126029_1596248795.jpg,img/userimg2/68617616_1596248795.jpg,img/userimg2/69075427_1596248795.jpg,img/userimg2/74135874_1596248795.jpg,img/userimg2/91844028_1596248795.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');


