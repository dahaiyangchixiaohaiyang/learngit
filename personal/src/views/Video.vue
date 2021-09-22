<template>
  <div class="home">
    <div class="nav">
      <img :src="userImg=='undefined' || userImg=='' ||userImg== null?src:userImg" alt="">
      <input type="text" placeholder="搜索你感兴趣的内容">
      <i class="jinsom-icon jinsom-qiandao2"></i>
    </div>
    <!-- 滚动导航 -->
    <div class="bar">
    <van-tabs @click="onClick" v-model="activeName">
  <van-tab v-for="(index,i) in title"  type="card" :title="index" :key="i" :name="index">
  </van-tab>
</van-tabs>
</div>
<!-- 视频区域 -->
<div class="video" 
v-infinite-scroll="loadmore"
        infinite-scroll-distance="70"
        infinite-scroll-disabled="busy"
        :infinite-scroll-immediate-check="true">
  <div class="left">
  <div class="videoCard" v-for="(item,i) in data" :key="i">
    <div class="videoImg">
      <img :src="item.img" alt="">
      <span>视频</span>
    </div>
    <p>{{item.title}}</p>
    <div class="videoUser">
      <img :src="item.userimg" alt="">
      <span>{{item.username}}</span>
      <span class="span2"><i class="jinsom-icon jinsom-xihuan2"></i>{{item.userAi}}</span>
    </div>
  </div>
  </div>
  <div class="right">
  <div class="videoCard" v-for="(item,i) in newData" :key="i">
    <div class="videoImg">
      <img :src="item.img" alt="">
      <span>视频</span>
    </div>
    <p>{{item.title}}</p>
    <div class="videoUser">
      <img :src="item.userimg" alt="">
      <span>{{item.username}}</span>
      <span class="span2"><i class="jinsom-icon jinsom-xihuan2"></i>{{item.userAi}}</span>
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
  <van-tabbar-item class="jinsom-icon jinsom-fabu" is-link @click="showPopup3($store.state.islogin)">
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


<!-- 动态弹窗 -->
<van-popup v-model="show3" position="bottom" :overlay-style="{ backgroundColor: 'rgba(255,255,255,0.92)' }" round :style="{ height: '40%' }" >
<dynamic></dynamic>
  </van-popup>
  </div> 
</template>

<script>
import { Toast } from 'vant';
import {ImagePreview} from "vant"
import axios from "axios";
import login from './login.vue';
import detail from './Detail.vue';
import dynamic from './test/Dynamic.vue';
Toast.setDefaultOptions({ duration: 500 });
import { mapState } from 'vuex';
export default {
  components: { login ,detail,dynamic},
  name:"ImagePreview",
  data(){
    return {
      title:["全部","动态","文章","视频","音乐","帖子","关注","推荐"],
      activeName:'视频',
      active:0,
      show:false,
      data:[],
      newData:'',
      visible2:{visible:false},
      imgs:[],
      lisData :[],
      fenye:1,
      busy:false,
      hide:'hide',
      visibles2:{visible:false},
      lid: 50,
      detail:'',
      src:'img/mr100.jpg',
      show3:false
    }
  },
  computed:mapState(['userImg','userName']),
  methods:{
    // 判断动态页是否显示
    showPopup3(islogin){
      console.log(islogin)
        if(islogin==true || islogin=='true'){
          // this.$router.push('/dynamic')
          this.show3=true
        }else{
       this.visible2.visible=true
       console.log(this.visible2.visible)
       this.noScroll()
       this.active=0
       }
    },
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
    onClick(name) {
      if(name=="全部"){
        this.$router.push('/')
      }else{
      this.busy=false;
      this.hide='hide'
      console.log(name)
      window.scrollTo(0, 0);
      this.fenye=1
      axios.get(`/video?cid=${name}&page=1`).then((result)=>{
      console.log(result.data.results)
      this.data=result.data.results 
      let [...data] = this.data
    let [...newData] = [[],[],[]]
    data.forEach((el,i)=>{
      switch(i%2){
        case 0 : newData[0].push(el)
        break
        case 1 : newData[1].push(el)
        break
      }
    })
    this.data=newData[0]
    this.newData  = newData[1]
    console.log(this.newData,this.data)
    })
    }
    },
    
    // 监听触底事件
    loadmore(){
      console.log('我触发了video页面的监听')
      this.busy=true;  //防止重复调用loadmore
      // let cid = this.navactive
      this.fenye++; 
      console.log(`${this.activeName}:${this.fenye}`)
      axios.get(`/video?cid=${this.activeName}&page=${this.fenye}`).then((res)=>{
        console.log(res.data.results)
        // this.data.push(...res.data.results)
        this.busy=false;
        let [...data] = res.data.results
        let [...newData] = [[],[],[]]
        data.forEach((el,i)=>{
        switch(i%2){
        case 0 : newData[0].push(el)
        break
        case 1 : newData[1].push(el)
        break
        // case 2 : newData[2].push(el)
        // break
      }
    })
    this.data.push(...newData[0])
    this.newData.push(...newData[1])
    console.log(newData[0],newData[1])
        if(res.data.results.length==0){
          console.log(`到底了`)
          this.hide='appear'
          this.busy=true;
        }else{
          this.hide='hide'
          Toast.loading({
      message: '加载中...',
      forbidClick: false,
      loadingType: 'spinner',
      
      });
        }
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
        console.log(islogin)
        if(islogin==true || islogin=='true'){
          this.$router.push('/user')
        }else{
       this.visible2.visible=true
       console.log(this.visible2.visible)
       this.noScroll()
       this.active=0
       }
      },
      
    
  
  },
  mounted(){
      this.busy=true;  
      this.fenye=1
      axios.get(`/video?cid=视频&page=1`).then((result)=>{
      this.busy=false
      console.log(result.data.results)
      this.data=result.data.results 
      let [...data] = this.data
    let [...newData] = [[],[],[]]
    data.forEach((el,i)=>{
      switch(i%2){
        case 0 : newData[0].push(el)
        break
        case 1 : newData[1].push(el)
        break
      }
    })
    this.data=newData[0]
    this.newData  = newData[1]
    console.log(this.newData,this.data)
    })
  }
}
</script>

<style scoped lang="scss">

*{
  padding: 0;
  margin: 0;
}
.video{
  touch-action: pan-y;
  width: 96%;
  margin: 0 auto;
  margin-top: 1.4rem;
  display: flex;
  flex-wrap: wrap;
  background-color: #fff;
  .left{
    width: 49%;
    .videoCard{
    width: 100%;
    margin-top: 0.2rem;
    margin-bottom: 0.3rem;
    .videoImg{
      width: 100%;
      position: relative;
      border-radius: 0.08rem;
      overflow: hidden;
      img{
        display: block;
        width: 100%;
      }
      span{
      font-size: 0.3rem;
      color: #fff;
      background-color: rgb(0 0 0 / 50%);
      position: absolute;
      top: 2vw;
      right: 2vw;
      font-size: 3vw;
      padding: 0 1vw;
      border-radius: 1vw;
    }
    }
    p{
      font-size: 0.24rem;
      margin-top: 0.1rem;
    }
    .videoUser{
      display: flex;
      margin-top: 0.1rem;
      height: 0.39rem;
      width: 100%;
      position: relative;
      img{
        display: block;
        width: 0.39rem;
        border-radius: 50%;
      }
      span{
        display: block;
        height: 0.39rem;
        font-size: 0.22rem;
        line-height: 0.39rem;
        margin-left: 5%;
      }
      .span2{
        position: absolute;
        color: #888;
        right: 0;
        i{
          margin-right: 0.06rem;
        }
      }
    }
    
  }
  }
  .right{
    width: 49%;
    margin-left: 2%;
    .videoCard{
    width: 100%;
    margin-top: 0.2rem;
    margin-bottom: 0.3rem;
    .videoImg{
      width: 100%;
      position: relative;
      border-radius: 0.08rem;
      overflow: hidden;
      img{
        display: block;
        width: 100%;
      }
      span{
      font-size: 0.3rem;
      color: #fff;
      background-color: rgb(0 0 0 / 50%);
      position: absolute;
      top: 2vw;
      right: 2vw;
      font-size: 3vw;
      padding: 0 1vw;
      border-radius: 1vw;
    }
    }
    p{
      font-size: 0.24rem;
      margin-top: 0.1rem;
    }
    .videoUser{
      display: flex;
      margin-top: 0.1rem;
      height: 0.39rem;
      width: 100%;
      position: relative;
      img{
        display: block;
        width: 0.39rem;
        border-radius: 50%;
      }
      span{
        display: block;
        height: 0.39rem;
        font-size: 0.22rem;
        line-height: 0.39rem;
        margin-left: 5%;
      }
      .span2{
        position: absolute;
        color: #888;
        right: 0;
        i{
          margin-right: 0.06rem;
        }
      }
    }
    
  }
  }
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
  background-color: #ffffff;
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
      
      width: 0.7rem;
      height: 0.7rem;
      border-radius: 100%;
    }
    div{
      height: 0.7rem;
      width: 2rem;
      position: relative;
      h1{
      position: absolute;
      top: 0;
      font-weight: 400;
      margin-left: 3vw;
      font-size: 3.8vw;
      color: #333;
      text-align: center;
    }
    p{
      position: absolute;
      bottom: 0;
      text-align: center;
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
  touch-action: pan-y;
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
.van-toast {
  touch-action: pan-y;
}
.van-image-preview__swipe-item{
  touch-action: pan-y;
}
.van-image-preview__index{
  font-size: 0.26rem !important;
}
</style>
