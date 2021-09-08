<template>
  <div class="detail">
    <div class="debar">
      <i class="jinsom-icon jinsom-fanhui2"></i>
      <div class="barimg">
        <img src="img/userimg4/22.png" alt="">
        <span>我是名字</span>
      </div>
      <div class="rightbar">
        <i class="jinsom-icon jinsom-guanzhu"></i>
        关注
      </div>     
    </div>

  </div>
</template>

<style scoped lang="scss">
.debar{
  height: 0.7rem;
  background-color: #DE575D;
  display: flex;
  justify-content: center;
  align-items: center;
  i{
    width: 20%;
    font-size: 0.3rem;
    color: #fff;
    margin-right: 0.5%;
  }
  .rightbar{
    position: relative;
    left: 4%;
    width: 15%;
    text-align: center;
    height: 0.4rem;
    line-height: 0.4rem;
    font-size: 0.25rem;
    border-radius: 0.2rem;
    background-color: #fff;
    color: #DE575D;
    i{
      color: #DE575D;
    }
  }
  .barimg{
    margin-right: 5%;
    width: 50%;
    display: flex;
    justify-content: center;
    img{
      border-radius: 50%;
    display: block;
    width: 0.6rem;
  }
  span{
    display: inline-block;
    height: 0.6rem;
    line-height: 0.6rem;
    font-size: 0.3rem;
  }
  }
}
</style>