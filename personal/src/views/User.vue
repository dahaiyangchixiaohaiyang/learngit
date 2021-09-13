<template>
  <div class="ursrS">
      <div>
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
  </div>
  </div>
</template>
<style scoped lang="scss">
.ursrS{
    width: 96%;
    margin: 0 auto;
    background-color: #fff;
}
.user {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 0.2rem;
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

</style>
<style>

</style>