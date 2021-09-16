<template>
  <div class="faxian">
    <!-- 顶部固定 -->
    <div class="faxianbar">
      <div>附近</div>
      <div>发现</div>
      <div><i class="jinsom-icon jinsom-sousuo1"></i></div>
    </div>
    <!-- 导航图片 -->
    <div class="faxianImg">
      <img src="img/faxian/67918103_1630134426.png" alt="">
      <img src="img/faxian/8948504_1630134426.png" alt="">
      <img src="img/faxian/3546580_1630136217.png" alt="">
      <img src="img/faxian/4419074_1630134426.png" alt="">
    </div>
    <!-- 导航话题 -->
    <ul class="faxianHt">
      <li><img src="img/faxian/001.png" alt=""><p>圈子</p></li>
      <li><img src="img/faxian/002.png" alt=""><p>话题</p></li>
      <li><img src="img/faxian/003.png" alt=""><p>视频</p></li>
      <li><img src="img/faxian/004.png" alt=""><p>图片</p></li>
      <li><img src="img/faxian/005.png" alt=""><p>商城</p></li>
      <li><img src="img/faxian/006.png" alt=""><p>宠物</p></li>
      <li><img src="img/faxian/007.png" alt=""><p>排行榜</p></li>
      <li><img src="img/faxian/008.png" alt=""><p>答题</p></li>
    </ul>

    <!-- 热门话题 -->
    <div class="faxianH">
      <div class="huoHead">
        <span>热门话题</span>
        <span>更多</span>
      </div>
      <ul class="faxianCon">
        <li><i>1</i><span>#古风句子#</span></li>
        <li><i>2</i><span>#汉服#</span></li>
        <li><i>3</i><span>#古风图片#</span></li>
        <li><i>4</i><span>#古风小说#</span></li>
        <li><i>5</i><span>#古风头像#</span></li>
        <li><i>6</i><span>#诗词#</span></li>
        <li><i>7</i><span>#古风网名#</span></li>
        <li><i>8</i><span>#古风体验馆#</span></li>
        <li><i>9</i><span>#古风专卖店#</span></li>
        <li><i>10</i><span>#手机壁纸#</span></li>
      </ul>
    </div>
    <!-- 底部footer -->
<van-tabbar v-model="active" class="footer" active-color="#dd565f" flxed>
  <van-tabbar-item class="jinsom-icon jinsom-shouye" to="/">
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
  <van-tabbar-item class="jinsom-icon jinsom-geren" @click="btna($store.state.islogin)">
    <p>我的</p>
  </van-tabbar-item>
</van-tabbar>

<!-- 上滑登录  -->
<transition name="van-slide-up">
  <div v-show="visible2.visible" class="di"><login :visible2="visible2"></login></div>
</transition>
  </div>

  
</template>
<script>
import login from './login.vue';
export default {
  components: { login },
  data(){
    return {
      active:1,
      visible2:{
        visible:false
      }
    }
  },
  methods:{
    btna(islogin){
        if(islogin==true || islogin=='true'){
          this.$router.push('/user')
        }else{
       this.visible2.visible=true
       console.log(this.visible2.visible)
       this.noScroll()
       }
      },
  }
}
</script>

<style scoped lang="scss">
.footer{
  height: 0.85rem !important;
  .jinsom-icon {
    font-size: 0.4rem;
    p{
      font-size: 0.2rem;
    }
  }
}
.di{
  width: 100%;
  position:fixed;
  top: 0%;
  z-index: 1000;
}
.jinsom-fabu:before { content: "\e612"; font-size: 11vw;color: #dd565f;font-size: 0.85rem;}

.faxianbar{
  position: fixed;
  top: 0%;
  width: 100%;
  height: 0.7rem;
  background-color: #dd565f;
  color: #fff;
  font-size: 0.3rem;
  display: flex;
  div{
    line-height: 0.7rem;
    text-align: center;
    &:nth-child(1){
      width: 15%;
    }
    &:nth-child(2){
      width: 70%;
    }
    &:nth-child(3){
      width: 15%;
      i{
        font-size: 0.4rem;
      }
    }
  }
}
.faxianImg{
  width: 96%;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  margin: 0 auto;
  margin-top: 0.8rem;
  img{
    width: 48%;
    margin: 0.05rem;
    border-radius: 0.1rem;
  }
}
.faxianHt{
  background-color: #fff;
  width: 96%;
  display: flex;
  flex-wrap: wrap;
  margin: 0 auto;
  

  li{
    width: 25%;
    transform: scale(0.5);
    &:nth-child(n+5){
      margin-top: -1rem;
    }
    img{
      width: 100%;
    }
    P{
      text-align: center;
      font-size: 0.45rem;
    }
  }
}
.faxianH{
  background-color: #fff;
  width: 96%;
  margin: 0 auto;
  .huoHead{
    width: 100%;
    height: 0.6rem;
    line-height: 0.6rem;
    background-image: url(../assets/bj.png);
    background-repeat: no-repeat;
    background-size: 10% 100%;
  span{
    font-size: 0.3rem;
    &:nth-child(1){
      float: left;
      margin-left: 0.52rem;
    }
    &:nth-child(2){
      float: right;
    }
  }
  }
  .faxianCon{
    margin: 0 auto;
    display: flex;
    width: 100%;
    flex-wrap: wrap;
    li{
      text-align: center;
      margin-top: 0.4rem;
      width: 40%;
      font-size: 0.27rem;
      display: flex;
      align-items: center;
      margin-left: 6%;
      i{
        line-height: 0.5rem;
        display: block;
        width: 0.5rem;
        height: 0.5rem;
        border: 2px solid rgba(244, 67, 54 ,0.5) !important;
        border-radius: 50%;
        border-right-color: transparent !important;
        transform: rotate(10deg);       
      }
      &:nth-child(2) i{
          border: 2px solid rgba(255, 193, 7 ,0.5) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(3) i{
          border: 2px solid rgba(33, 150, 243, 0.5) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(4) i{
          border: 2px solid rgba(76, 175, 80, 0.5) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(5) i{
          border: 2px solid rgba(189, 100, 204, 0.5) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(6) i{
          border: 2px solid rgba(72, 199, 187, 0.5) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(7) i{
          border: 2px solid rgb(200, 193, 193) !important;
          border-right-color: transparent !important;
        }
      &:nth-child(8) i{
          border: 2px solid rgb(200, 193, 193) !important;
          border-right-color: transparent !important;
        }
    }
  }
}
.faxian{
  touch-action: pan-y;
}
</style>