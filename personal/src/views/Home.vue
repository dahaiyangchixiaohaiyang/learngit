<template>
  <div class="home">
    <div class="nav">
      <img src="img/mr100.jpg" alt="">
      <input type="text" placeholder="搜索你感兴趣的内容">
      <i class="jinsom-icon jinsom-qiandao2"></i>
    </div>
    <!-- 滚动导航 -->
    <div class="bar">
    <van-tabs @click="onClick" :v-model="activeName">
  <van-tab v-for="(index,i) in title"  type="card" :title="index" :key="i" :name="index">
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
<a href="" v-for="(item,i) of imgs"  :key="i"><img :src="item.img" alt=""><span>{{item.title}}</span></a>

  </div>
</div>
<!-- 内容区域 -->
<div  v-infinite-scroll="loadmore"
        infinite-scroll-distance="70"
        infinite-scroll-disabled="busy"
        :infinite-scroll-immediate-check="true">
<div class="card" v-for="(item,i) of data" :key="i">
<div class="userimg">
  <img :src="item.headjmg" alt="">
  <div>
    <h1>{{item.nid}}</h1>
    <p>{{item.ctime}}</p>
  </div>
</div>
<!-- <router-link :to="`/detail?id=${item.lid}`"> -->
<!-- <router-link> -->
  <van-cell is-link @click="showPopup2(item.lid)" ><h2>{{item.content}}</h2></van-cell>

<!-- </router-link> -->
<div class="userimgs">
<div  v-for="(item,index) in lisData[i].imgs.split(',')" v-show="item" :key="index">
    <img v-if="item" class="img" :src="item" alt="" @click="getImg(lisData,index,i)">
  </div>
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
</div>

<!-- 底部没数据后的提示 -->
<div class="foot" :class="hide" >
<i class="jinsom-icon jinsom-kong"></i>
<p>暂时没有数据了</p>
</div>

<!-- 底部footer -->
<van-tabbar v-model="active" class="footer" active-color="#dd565f" flxed>
  <van-tabbar-item class="jinsom-icon jinsom-shouye">
    <p>首页</p>
  </van-tabbar-item>
  <van-tabbar-item class="jinsom-icon jinsom-shejiao" to="/faxian">
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

<!-- 右滑详情页 -->
<!-- <transition name="van-slide-right">
  <div v-show="visibles2.visible"><detail :visibles2="visibles2" :detail="detail"></detail></div>
</transition> -->

<van-popup v-model="visibles2.visible"  position="right" :style="{ width:'100%',height: '100%',overflow:'auto'}" :lock-scroll="false"><detail :visibles2="visibles2" :detail="detail"></detail></van-popup>

<!-- 上滑登陆 -->
<transition name="van-slide-up">
  <div v-show="visible2.visible" class="di"><login :visible2="visible2"></login></div>
</transition>
  </div> 
</template>

<script>
import { Toast } from 'vant';
import {ImagePreview} from "vant"
import axios from "axios";
import login from './login.vue';
import detail from './Detail.vue';
Toast.setDefaultOptions({ duration: 500 });
export default {
  components: { login ,detail},
  name:"ImagePreview",
  data(){
    return {
      title:["全部","动态","文章","视频","音乐","帖子","关注","推荐"],
      activeName:'全部',
      active:0,
      show:false,
      data:[],
      visible2:{visible:false},
      imgs:[],
      lisData :[],
      fenye:1,
      busy:false,
      hide:'hide',
      visibles2:{visible:false},
      lid: 50,
      detail:''
    }
  },
  methods:{
    // 鼠标点击传参给详情页
    showPopup2(a){
      this.lid=a-1
      console.log(this.lid)
      this.detail=this.lisData[this.lid].detail
      this.visibles2.visible=true
      console.log(this.detail)
      this.noScroll()
      // this.canScroll()

    },
    
    // 监听触底事件
    loadmore(){
      this.busy=true;  //防止重复调用loadmore
      // let cid = this.navactive
      this.fenye++;
      
      console.log(`${this.activeName}:${this.fenye}`)
      axios.get(`/fenye?cid=${this.activeName}&page=${this.fenye}`).then((res)=>{
        console.log(res.data.results)
        this.lisData.push(...res.data.results)
        this.busy=false;
        if(res.data.results.length==0){
          console.log(`到底了`)
          this.hide='appear'
        }else{
          this.hide='hide'
          Toast.loading({
      message: '加载中...',
      forbidClick: true,
      loadingType: 'spinner',
      
      });
        }
      })
    },
    onClick(name) {
      console.log(name)
      window.scrollTo(0, 0);
      this.fenye=1
      axios.get(`/fenye?cid=${name}&page=1`).then((result)=>{
      console.log(result.data.results)
      this.data=result.data.results 
      var arr =result.data.results
      this.lisData=arr
    })
    },
    showPopup(event) {
      console.log(event)
      this.show = true;
    },
    noPopup() {
      this.show = false;
    },
    getImg(images,index,i){
      console.log(index)
      ImagePreview({
        images:this.lisData[i].imgs.split(','),
        showIndex:true,
        loop:false,
        startPosition:index
      })
      
    },
      btna(islogin){
        if(islogin==true){
          this.$router.push('/user')
        }else{
       this.visible2.visible=true
       console.log(this.visible2.visible)
       this.noScroll()
       }
      },
      
    
  
  },
  mounted(){     
      axios.get(`/fenye?cid=${this.activeName}&page=${this.fenye}`).then((result)=>{
      console.log(result.data.results)
      this.data=result.data.results 
      var arr =result.data.results
      this.lisData=arr
    })
    axios.get('/other2').then((result)=>{
      console.log(result.data.results)
      this.imgs=result.data.results
    })
  }
}
</script>

<style scoped lang="scss">

*{
  padding: 0;
  margin: 0;
}
.hide{
  display: none;
}
.appear{
  display: block;
}
.foot{
  margin-bottom: 0.85rem;
  text-align: center;
  color: #888;
  i{
    margin: 0 auto;
    font-size: 0.6rem;
    &::before{
      content:"\e900"
    }
    
  }
  p{
      font-size: 0.25rem;
    }
}
.di{
  width: 100%;
  position:fixed;
  top: 0%;
  z-index: 1000;
}
.card{
  touch-action: pan-y;
  background-color: #fff;
  width: 96vw;
  margin: 0 auto;
  margin-bottom: 0.2rem;
  margin-top: 0.2rem;
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
    
     &::after{
      content: "";
      width: 33%;
    }
     div{
       width: 33%;
     img{
      width: 100%;
      float: left;
      margin-top: 0.5vw;
      
    }
    }
  }
  .footcard{
    width: 100%;
    color: #888;
    div{
      width: 88.5vw;
      margin: 0 auto;
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
  touch-action: pan-x;
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
  
  margin-top: 1.2rem;
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
    width: 4.2rem;
    text-align: center;
    border-radius: 20px;
    background:none;
     background:none; outline:none; border:none;
     background-color: #fff;
     background-image: url(https://b.yzcdn.cn/vant/icon-demo-1126.png);
     background-repeat: no-repeat;
     background-position: 0.5rem;
     background-size: 0.35rem;
     font-size: 0.25rem;
  }
  i{
    color: #fff;
    font-size: 6vw;
    margin-right: 5vw;
  }
}
.jinsom-fabu:before { content: "\e612"; font-size: 11vw;color: #dd565f;font-size: 0.85rem;}

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
  touch-action: pan-y;
}
.van-tabs__line {
  background-color: #dd565f !important;
  width: 0.8rem !important;
}
.van-tabs--line .van-tabs__wrap{
  height: 0.6rem !important;
}
.van-cell{
  line-height: 0.4rem !important;
}
.van-icon-arrow::before{
  content: '' !important;
}
</style>
