<template>
  <div class="home">
    <div class="nav">
      <img src="img/mr100.jpg" alt="">
      <input type="text" placeholder="搜索你感兴趣的内容">
      <i class="jinsom-icon jinsom-qiandao2"></i>
    </div>
    <van-tabs>
  <van-tab v-for="(index,i) in title"  type="card" :title="index" :key="i" title-style="color:green">
    <i class="jinsom-icon jinsom-paixu2"></i>
  </van-tab>
</van-tabs>
  </div> 
</template>

<script>
export default {
  data(){
    return {
      title:["全部","动态","文章","视频","音乐","帖子","关注","推荐"]
    }
  }
}
</script>

<style scoped lang="scss">
*{
  padding: 0;
  margin: 0;
}
.nav{
  background-color: #dd565f;
  height: 10vw;
  display: flex;
  align-items: center;
  img{
    display: inline-block;
    border-radius: 100%;
    width: 8vw;
    height: 8vw;
    margin-left: 5vw;
  }
  input{
    height: 8vw;
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
.jinsom-fabu:before { content: "\e612"; }

</style>
