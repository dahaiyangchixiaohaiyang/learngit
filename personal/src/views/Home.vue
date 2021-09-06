<template>
  <div class="home">
    <div class="nav">
      <img src="img/mr100.jpg" alt="">
      <input type="text" placeholder="搜索你感兴趣的内容">
      <i class="jinsom-icon jinsom-qiandao2"></i>
    </div>
    <!-- 滚动导航 -->
    <div class="bar">
    <van-tabs @click="onClick">
  <van-tab v-for="(index,i) in title"  type="card" :title="index" :key="i">
  </van-tab>
</van-tabs>
</div>
<!-- 推荐话题 -->
<div class="topic">
  <i class="jinsom-icon jinsom-huo"></i><p>推荐话题</p>
</div>

<!-- 图片滑动 -->
<div class="imgs">
  <div>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
<a href=""><img src="\img\barimg\1168034_1601959102.jpg" alt=""><span>#图片</span></a>
  </div>
</div>
<!-- 内容区域 -->
<div class="card">
<div class="userimg">
  <img src="img\userimg\27.png" alt="">
  <div>
    <h1>执酒共酌</h1>
    <p>06-07 13:15</p>
  </div>
</div>
<h2>古风女生头像|倾国倾城貌 惊为天下人</h2>
<div class="userimgs">
  <img src="img\userimg\37684471_1591506914.jpg" is-link @click="showPopup" alt="">
  <van-popup v-model="show"  :style="{width:'100%'}" @click="noPopup">
    <img src="img\userimg\37684471_1591506914.jpg" style="width:100%;margin:0;display: block" alt="">
</van-popup>
  <img src="img\userimg\37684471_1591506914.jpg" is-link @click="showPopup" alt="">
  <van-popup v-model="show"  :style="{width:'100%'}" @click="noPopup">
    <img src="img\userimg\37684471_1591506914.jpg" style="width:100%;margin:0;display: block" alt="">
</van-popup>
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
  <img src="img\userimg\37684471_1591506914.jpg" alt="">
</div>
<div class="footcard">
  <div>
  <i class="jinsom-icon jinsom-xihuan2"><span>0</span></i>
  <i class="jinsom-icon jinsom-pinglun2"><span>0</span></i>
  <i class="jinsom-icon jinsom-liulan1"><span>0</span></i>
  <i class="jinsom-icon jinsom-gengduo2"></i>
  </div>
</div>
</div>

<!-- 底部footer -->
<van-tabbar v-model="active" class="footer" active-color="#dd565f" flxed>
  <van-tabbar-item class="jinsom-icon jinsom-shouye">
    <p>首页</p>
  </van-tabbar-item>
  <van-tabbar-item class="jinsom-icon jinsom-shejiao">
    <p>发现</p>
  </van-tabbar-item>
  <van-tabbar-item class="jinsom-icon jinsom-fabu">
  </van-tabbar-item>
  <van-tabbar-item class="jinsom-icon jinsom-xinxi">
    <p>消息</p>
  </van-tabbar-item>
  <van-tabbar-item class="jinsom-icon jinsom-geren">
    <p>我的</p>
  </van-tabbar-item>
</van-tabbar>
  </div> 
</template>

<script>
export default {
  data(){
    return {
      title:["全部","动态","文章","视频","音乐","帖子","关注","推荐"],
      active:0,
      show:false
    }
  },
  methods:{
    onClick(name, title) {
      console.log(title,name)
    },
    showPopup() {
      this.show = true;
    },
    noPopup() {
      this.show = false;
    },
  
  }
}
</script>

<style scoped lang="scss">
*{
  padding: 0;
  margin: 0;
}
.card{
  background-color: #fff;
  width: 96vw;
  margin: 0 auto;
  margin-bottom: 0.85rem;
  margin-top: 0.45rem;
  .userimg{
    margin-left: 1vw;
    display: flex;
    img{
      
      width: 10vw;
      height: 10vw;
      border-radius: 100%;
    }
    div{
      height: 10vw;
      h1{
      font-weight: 400;
      margin-left: 3vw;
      font-size: 3.8vw;
      color: #333;
    }
    p{
      margin-top: 1vw;
      margin-left: 3vw;
      font-size: 3vw;
      color: #8e8e93;
    }
    }
  }
  h2{
    margin-top: 3vw;
    padding-left:3.5vw;
    font-size: 4vw;
    color: #333;
    font-weight: 400;
  }
  .userimgs{
    margin-top: 3vw;
    padding: 0 4vw 4vw;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    img{
      width: 33%;
      margin-top: 0.5vw;
    }
  }
  .footcard{
    width: 100%;
    color: #888;
    div{
      width: 88.5vw;
      margin: 0 auto;
      margin-top: 0.1rem;
      padding: 0.2rem 0;
      border-top: 1px solid #f5f5f5;
      i{
      font-size: 0.3rem;
      margin-left: 15vw;
      &:nth-child(4){
        color:#ef554a;
        background-color: rgb(254, 245, 245);
      }

      span{
        margin-left: 1vw;
      }
    }
    }
  }
  
}
.imgs{
  background-color: #fff;
  margin-top: 2vw;
  width: 100vw;
  overflow: auto;
  span{
    position: absolute;
    left: 35%;
    top: 45%;
    color: #fff;
    font-size: 3.5vw;
  }
  div{
  display: flex;
  width: 80vw;
  a{
    position: relative;
    &:nth-child(1){
      margin-left: 3vw;
    } 
    width: 28vw;
    height: 30vw;
    margin-left: 1vw;
    img{
    border-radius: 3vw;
    width: 28vw;
    height: 30vw;
    }
  }
  }
  
}
.topic{
  margin-top: 1.65rem;
  i{
    margin-left: 3vw;
    font-size: 5vw;
    color: #ffad2f;
  }
  p{
    display: inline-block;
    font-size: 4vw;
    color: #999;
  }
}
.nav{
  width: 100%;
  position: fixed;
  z-index: 10;
  top:0%;
  background-color: #dd565f;
  height: 0.85rem;
  display: flex;
  align-items: center;
  img{
    display: inline-block;
    border-radius: 100%;
    width: 8vw;
    // height: 4.4vh;
    margin-left: 5vw;
  }
  input{
    height: 0.5rem;
    display: inline-block;
    margin: 0 auto;
    width: 60%;
    text-align: center;
    border-radius: 20px;
    background:none;
     background:none; outline:none; border:none;
     background-color: #fff;
     background-image: url(https://b.yzcdn.cn/vant/icon-demo-1126.png);
     background-repeat: no-repeat;
     background-position: 10vw;
     background-size: 5vw;
     font-size: 3.1vw;
  }
  i{
    color: #fff;
    font-size: 6vw;
    margin-right: 5vw;
  }
}
.jinsom-fabu:before { content: "\e612"; font-size: 11vw;color: #dd565f;font-size: 0.8rem;}

.footer{
  height: 0.85rem !important;
  .jinsom-icon {
    font-size: 0.4rem;
    p{
      font-size: 0.2rem;
    }
  }
}
.bar{
  width: 100%;
  height: 0.85rem;
  position: fixed;
  top: 0.85rem;
  z-index: 10;
}



</style>

<style>
.van-tab{
  font-size: 0.25rem !important;
}
.bar{
  align-items: center;
}
.van-tabs__line {
  background-color: #dd565f !important;
  width: 0.8rem !important;
}
.van-tabs--line .van-tabs__wrap{
  height: 0.6rem !important;
}
</style>
