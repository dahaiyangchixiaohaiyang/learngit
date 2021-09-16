<template>
  <div class="users">
    <div class="faxianbar">
      <div><i class="jinsom-icon jinsom-fanhui2" @click="bti"></i></div>
      <div>资料设置</div>
      <div></div>
    </div>
    <!-- 个人信息展示页 -->
    <div class="myUser">
      <li><span>头像</span><span><img :src="userImg" alt=""></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>昵称</span><span>{{userName}}</span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>二维码</span><span class="jinsom-icon jinsom-erweima" style="font-size:0.5rem"></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>更多</span><span></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>手机号</span><span>15508930766</span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>邮箱</span><span></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>修改密码</span><span></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>安全问题</span><span></span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>QQ登陆</span><span>未绑定</span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
      <li><span>微博登陆</span><span>未绑定</span><span><i class="jinsom-icon jinsom-huaban"></i></span></li>
    </div>

    <!-- 登陆按钮 -->
    <div class="onlogin"><a href="javascript:" @click="onlogin">退出登录</a></div>

  </div>
</template>

<script>
import { mapState } from 'vuex';
export default {
  computed:mapState(['userImg','userName']),
  methods:{
    onlogin(){
      this.$store.commit("loginonOK",{noLogin:false,img:undefined});
      window.sessionStorage.setItem('islogin',false);
      window.sessionStorage.setItem('imgs',undefined);
      this.$router.push("/");
    },
    bti(){
      this.$router.push("/user");
    }
  }
}
</script>
<style scoped lang="scss">
.users{
  touch-action: pan-y;
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

.onlogin{
  
  width: 90%;
  margin: 0 auto;
  margin-top: 0.2rem;
  margin-bottom: 0.2rem;
  a{
    border-radius: 0.3rem;
    display: block;
    width: 100%;
    height: 0.6rem;
    line-height: 0.6rem;
    background-color: #dd565f;
    font-size: 0.3rem;
    color: #fff;
    text-align: center;
  }
}
.myUser{
  width: 96%;
  margin: 0 auto;
  margin-top: 0.8rem;
  background-color: #fff;
  
  li{
    
    width: 100%;
    display: flex;
    border-bottom: 1px solid #f5f5f5;
    span{
      font-size: 0.3rem;
      line-height: 1rem;
      &:nth-child(1){
        padding-left: 0.2rem;
      width: 53%;
      }
      &:nth-child(2){
      width: 38%;
      font-size: 0.3rem;
      text-align: right;
      color: #999;
      height: 1rem;
      line-height: 1rem;
      img{
        width: 50%;
      }
      }
      
      &:nth-child(3){
      width: 9%;
      text-align: center;
      i{
        font-size: 0.4rem;
        color: #999;
      }
      }
      display: block;
      
      
    }
    &:nth-child(1) span{
      line-height: 1.3rem;
    }
  }
}
</style>