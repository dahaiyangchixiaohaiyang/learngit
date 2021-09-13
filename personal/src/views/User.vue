<template>
  <div class="ursrS">
    <!-- 头部固定 -->
    <div class="faxianbar">
      <div></div>
      <div>我的</div>
      <div><i class="jinsom-icon jinsom-shezhi"></i></div>
    </div>
    <!-- 个人信息 -->
      <div class="users">
      
    <div class="user">
      <div class="userXinxi">
        <div><img src="img/userimg/50.png" alt="" /></div>
      </div>
      <div class="userRight">
        <p>大海洋吃小海洋</p>
        <p class="userId">用户ID: 10940</p>
      </div>
        <i class="jinsom-icon jinsom-arrow-right"></i>
    </div>
    <div class="Tpb">
        <van-progress pivot-text="" color="#dd565f" :percentage="25" />
        <p>25/100</p>
    </div>
    <div class="lists">
      <div><span>0</span><p>内容</p></div>
      <div><span>0</span><p>人气</p></div>
      <div><span>0</span><p>粉丝</p></div>
      <div><span>0</span><p>关注</p></div>
    </div>
  </div>

  <!-- 常用模块 -->
  <div class="cy">
    <p>常用</p>
  <div class="changYong">
    <div>
      <div><i class="jinsom-icon jinsom-qianbao"></i></div>
      <p>钱包</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-huiyuan"></i></div>
      <p>会员</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-qiandao1"></i></div>
      <p>签到</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-flag"></i></div>
      <p>任务</p>
    </div>
  </div>
  </div>
  <!-- 我的模块 -->
  <div class="cy cy2">
    <p>我的</p>
  <div class="changYong">
    <div>
      <div><i class="jinsom-icon jinsom-jiaoyin"></i></div>
      <p>访客</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-fensi"></i></div>
      <p>粉丝</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-guanzhu8"></i></div>
      <p>关注</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-shoucang"></i></div>
      <p>收藏</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-lishi"></i></div>
      <p>历史浏览</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-gexinghua"></i></div>
      <p>主题</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-goumai"></i></div>
      <p>订单</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-tuiguang"></i></div>
      <p>推广</p>
    </div>
  </div>
  </div>
  <!-- 常用模块 -->
  <div class="cy">
    <p>常用</p>
  <div class="changYong">
    <div>
      <div><i class="jinsom-icon jinsom-shezhi"></i></div>
      <p>资料设置</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-huifu1"></i></div>
      <p>在线客服</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-user"></i></div>
      <p>身份认证</p>
    </div>
    <div>
      <div><i class="jinsom-icon jinsom-tongzhi1"></i></div>
      <p>APP通知</p>
    </div>
  </div>
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
  <van-tabbar-item class="jinsom-icon jinsom-geren" @click="btna">
    <p>我的</p>
  </van-tabbar-item>
</van-tabbar>
  </div>
</template>
<script>
import login from './login.vue';
export default {
  components: { login },
  data(){
    return {
      active:4,
      visible2:{
        visible:false
      }
    }
  },
  methods:{
    btna(){
       this.visible2.visible=true
       console.log(this.visible2.visible)
       this.noScroll()
      },
  }
}
</script>

<style scoped lang="scss">
.cy{ 
  width: 96%;
  margin: 0 auto;
  margin-top: 0.2rem;
  background-color: #fff;
  height: 1.6rem;
  
  p{
    font-size: 0.3rem;
    padding-left: 0.15rem;
  }
}
.changYong{
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  margin-top: -0.4rem;
  
  div{
    height: 1rem;
    width: 25%;
    div{
      width: 100%;
      text-align: center;
      i{
        font-size: 0.45rem;
        color: transparent;
        -webkit-background-clip: text;
          background-image: linear-gradient(
45deg, #f20c00, 60%, #ffffff) !important;
      }
    }
    p{
      text-align: center;
      font-size: 0.2rem;
      padding-left: 0;
      margin-top: 0.05rem;
    }
  }
}
.cy2{
  height: 2.7rem;
}
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
.users{
  background-color: #fff;
  width: 96%;
  margin: 0 auto;
  padding: 0.2rem 0;
  border-radius: 0.1rem;
  .lists{
    margin-top: 0.2rem;
    width: 100%;
    display: flex;
    div{
      width: 25%;
      text-align: center;
      span{
        font-size: 0.3rem;
        display: block;
      }
      p{
        font-size: 0.25rem;
        color: #999;
      }
    }
  }
}
.user {
   width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 0.2rem;
    
    margin-top: 1rem;
    
  .userXinxi {
      width: 14%;
    div{
        width: 0.8rem;
        height: 0.8rem;
    overflow: hidden;
    img{
        display: block;
        width: 100%;
        border-radius: 50%;
    }
    }
  }
  .userRight{
      width: 81%;
      margin-left: 2%;

      p{
          font-size: 0.28rem;
          margin-bottom: 0.08rem;
          &:nth-child(2){
              font-size: 0.25rem;
              color: #999;
          }
      }
  }

      i{
          width: 5%;
          font-size: 0.05rem;
      }
  
}

.Tpb{
    width: 96%;
    display: flex;
    margin: 0 auto;
    align-items: center;
 .van-progress{
    width: 80%;
  }
  p{
      width: 10%;
      color: #999;
      font-size: 0.25rem;
      margin-left: 0.2rem;
  }
}
.footer{
  height: 0.85rem !important;
  .jinsom-icon {
    font-size: 0.4rem;
    p{
      font-size: 0.2rem;
    }
  }
}
.jinsom-fabu:before { content: "\e612"; font-size: 11vw;color: #dd565f;font-size: 0.85rem;}
</style>
<style>
.jinsom-flag{
 
        }
</style>