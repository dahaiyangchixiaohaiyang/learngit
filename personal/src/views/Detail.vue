<template>
<div>
  <!-- v-html="details" -->
  <div class="gongju" ></div>  
  <div class="detail"  v-html="detail" @click="btnd">   
  </div>
  <!-- 详情页底部 -->
  <div class="footDetail">
    <a href="javascript:"><i class="jinsom-icon jinsom-fabu7">写评论</i></a>
    <a href="javascript:"><i class="jinsom-icon jinsom-pinglun2"></i></a>
    <a href="javascript:"><i class="jinsom-icon jinsom-shoucang1"></i></a>
    <a href="javascript:"><i class="jinsom-icon jinsom-zhuanfa"></i></a>
  </div>
  </div>
</template>
<script>
import axios from "axios"
export default {
  props: {
    detail: '',
    visibles2:''
  },
  data(){
    return {
      details:''
    }
  },
  methods:{
    btnd(event){
     if(event.target.className === "debar"){
        console.log(`我是猪`)
        this.visibles2.visible=false
        this.canScroll()
      }
    }
    // btnd(){
    //   // console.log(`我是猪`)
    //   this.visibles2.visible=false
    //   this.canScroll()
    // }
  },
  mounted(){
    
        // let id = this.$route.query.id;
        // console.log(id)
        // axios.get(`/detail?id=${id}`).then((res)=>{
        //     console.log(res)
        //     this.details=res.data.results[0].detail
        //     console.log(this.details)
        // })
    }
}
</script>

<style lang="scss">
.footDetail{
  touch-action: pan-y;
  position: fixed;
  bottom: 0;
  height: 6vh;
  display: flex;
  width: 100%;
  a{
    text-decoration:none;
    display: block;
    width: 13%;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    color:#838383;
    font-weight: 600;

    i{
     font-size: 0.35rem;
    }
    &:nth-child(1){
      width: 61%;
      i{
        font-size: 0.3rem;
        color: #999;
        line-height: 5vh;
        height: 5vh;
        width: 90%;
        background-color: #f6f6f6;
        border-radius: 0.6rem;
        text-align: left;
        padding-left: 0.3rem;
        font-weight: 500;
      }
      
    }
  }
}

.contents { 
  touch-action: pan-y;
  // overflow: auto;
  // position: fixed;
  background-color:#fff;
  height: 87vh;
  overflow:auto;
  top: 0.7rem;
  margin-top: 0.7rem;
  margin-bottom: 0.7rem;
  padding: 0 0.3rem;
  h1{
    font-size: 0.33rem;
    font-weight: 400;
  }
  span{
    margin-top: 0.2rem;
    padding-bottom: 0.2rem;
    margin-bottom: 0.2rem;
    border-bottom:1px solid #f5f5f5;
    display: block;
    font-size: 0.03rem;
    color: #999;
  }
  p{
    font-size: 4vw;
  }
  img{
    margin-top: 0.2rem;
    width: 100%;
    border-radius: 50%;
    display: block;
  }
  .connt{
    margin-top: 0.2rem;
    text-align: center;
    img{
      margin-top: 0.2rem;
      border-radius: 0;
    }
    p{
      margin-top: 0.2rem;
    }
  }
}
.debar{
  // overflow: auto;
  width: 100%;
  position: fixed;
  top: 0;
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
    color: #fff;
  }
  }
}
</style>