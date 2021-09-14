<template>
  <div class="users">
    <div class="faxianbar">
      <div><i class="jinsom-icon jinsom-fanhui2"></i></div>
      <div>资料设置</div>
      <div></div>
    </div>
    <div class="onlogin"><a href="javascript:" @click="onlogin">退出登录</a></div>

  </div>
</template>

<script>
export default {
  methods:{
    onlogin(){
      this.$store.commit("loginonOK",false);
      window.sessionStorage.setItem('islogin',false);
      this.$router.push("/");
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
  margin-top: 2rem;
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
</style>