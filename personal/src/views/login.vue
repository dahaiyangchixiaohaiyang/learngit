<template>
  <div class="login">
    <nav class="bar"><i class="jinsom-icon jinsom-xiangxia2"></i><span>忘记密码</span></nav>
  <div class="card"><img src="img/loginimg/7c2c60506876716ccf0e706db13d4511.png" alt=""></div>
  <h1>携手让汉服成为一种流行的生活方式</h1>
  <div class="box"></div>
  </div>
</template>

<script>
export default {
  props:{
    visible2:{}
  },
  methods:{
    btns(){
      this.visible2.visible=false
    }
  }
}
</script>

<style scoped lang="scss">
.bar{
  width: 100%;
  color: #fff;
  i{
    font-size: 0.3rem;
    position: fixed;
    top: 0.1rem;
    left: 0.3rem;
    z-index: 10;
  }
  span{
    position: fixed;
    top: 0.1rem;
    right: 0.3rem;
    font-size: 0.3rem;
    z-index: 10;
  }
}
.card{
  width: 160%;
  height: 5rem;
  position: fixed;
  top: 0%;
  right: -30%;
  height: 4.5rem;
  display: flex;
  justify-content: center;
  background-image: url(../assets/d570806382a95074887de9e4c55a0ee0.png);
  background-repeat: no-repeat;
  background-size: 100%;
  border-radius: 0 0 100% 100%;
  img{
    display: block;
    width: 1.1rem;
    height: 1.1rem;
    border-radius: 50%;
    margin-top: 0.8rem;
    box-shadow: 0 0 20px rgb(255 255 255/50%);
    padding: 0.08rem;
  }
}
h1{
  width: 100%;
  text-align: center;
  color: #fff;
  font-size: 0.26rem;
  position: fixed;
  top: 2.2rem;
  font-weight: 400;
  text-shadow: 0 0 10px #fff;
}
.box{
  width: 90%;
  height: 4.5rem;
  background-color: red;
  position: fixed;
  top: 3.4rem;
  left: 5%;
}
</style>