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
  class varchar(32)
);
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg2/26656608_1596248795.jpg,img/userimg2/28338067_1596248795.jpg,img/userimg2/35856655_1596248795.jpg,img/userimg2/40333965_1596248795.jpg,img/userimg2/41126029_1596248795.jpg,img/userimg2/68617616_1596248795.jpg,img/userimg2/69075427_1596248795.jpg,img/userimg2/74135874_1596248795.jpg,img/userimg2/91844028_1596248795.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');
insert into other values(null,'img/userimg/91848884_1591506915.jpg,img/userimg/78312157_1591506915.jpg,img/userimg/87572819_1591506915.jpg,img/userimg/54371630_1591506915.jpg,img/userimg/43990629_1591506915.jpg,img/userimg/37684471_1591506914.jpg,img/userimg/26093575_1591506915.jpg,img/userimg/13250779_1591506915.jpg,img/userimg/9657860_1591506914.jpg','img/userimg/27.png','06-07 13:15','执酒共酌','古风女生头像|倾国倾城貌 惊为天下人',0,0,0,'全部');


