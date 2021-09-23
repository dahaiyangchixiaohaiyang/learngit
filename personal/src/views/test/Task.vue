<template>
    <div class="Task">
        <!-- 顶部固定 -->
      <div class="faxianbar">
      <div><i class="jinsom-icon jinsom-fanhui2" @click="fanhui"></i></div>
      <div>积分任务</div>
      <div></div>
    </div>
    <!-- 头部 -->
    <div class="taskHeard">
        <p>做任务开宝箱</p>
        <p :v-model="sums">累计完成{{showok+show1ok}}个任务</p>
    </div>

    <!-- 宝箱 -->
    <div class="box">
        <div><img src="img/box/a1.png" alt=""><span>3个任务</span></div>
        <div><img src="img/box/b1.png" alt=""><span>6个任务</span></div>
        <div><img src="img/box/c1.png" alt=""><span>9个任务</span></div>
        <div><img src="img/box/d1.png" alt=""><span>12个任务</span></div>
    </div>

    <!-- 任务栏 -->

    <div class="tasks">
        <div class="tasks1">
            <p>新人签到</p>
            <div class="number">
                已完成:
                <span>{{shows || showok?1:0}}</span>
                /
                <span>1</span>
            </div>
        </div>
        <div class="tasks2">
            <p>坚持是一个过程,一个持续的过程</p>
            <a v-show="show==true" href="javascript:">未完成</a>
            <a v-show="shows==true" href="javascript:" @click="renwu1ok">可领取</a>
            <a v-show="showok==true" href="javascript:" >已领取</a>
        </div>
        <h1>普通奖励: 积分*5</h1>
        <h2>VIP奖励: 积分*10</h2>
    </div>
    <div class="tasks">
        <div class="tasks1">
            <p>更换一次头像</p>
            <div class="number">
                已完成:
                <span>{{show1ok || show1s?1:0}}</span>
                /
                <span>1</span>
            </div>
        </div>
        <div class="tasks2">
            <p>坚持是一个过程,一个持续的过程</p>
            <a v-show="show1==true" href="javascript:">未完成</a>
            <a v-show="show1s==true" href="javascript:" @click="renwu2ok">可领取</a> 
            <a v-show="show1ok==true" href="javascript:" >已领取</a>  
        </div>
        <h1>普通奖励: 积分*10</h1>
        <h2>VIP奖励: 积分*15</h2>
    </div>
    <div class="tasks">
        <div class="tasks1">
            <p>浏览视频</p>
            <div class="number">
                已完成:
                <span>0</span>
                /
                <span>1</span>
            </div>
        </div>
        <div class="tasks2">
            <p>坚持是一个过程,一个持续的过程</p>
            <a v-show="show2==false" href="javascript:">未完成</a>
            <a v-show="show2==true" href="javascript:">已完成</a>
        </div>
        <h1>普通奖励: 积分*15</h1>
        <h2>VIP奖励: 积分*20</h2>
    </div>
    </div>
</template>

<script>
import { mapState } from 'vuex';
import axios from "axios";
export default {
    data(){
        return{
            show:false,
            shows:false,   //控制任务完成开关
            show1:false,
            show1s:false,
            show2:false,
            showok:false,
            show1ok:false,
            sums:0        }
    },
    computed:{...mapState(['userImg','userName','userJifen','userId'])},
    methods:{
        fanhui(){
           this.$router.push('/user') 
        },
        renwu1ok(){
      console.log(this.userName)
      axios.post('/isrenwuone',`username=${this.userName}&jifen=5`).then( res=> {
        console.log(res.data)
        this.$toast({
              message: "领取成功",
              position: "bottom",
              duration: "1000",
            });
            this.sums++
        let jifen = this.userJifen*1+5
        this.$store.commit("loginOk", { name: this.userName, img: this.userImg,jifen:jifen,userid:this.userId });
            // 不仅需要存在vuex中,还需要存入sessionStorage
            window.sessionStorage.setItem("islogin", true);
            window.sessionStorage.setItem("name", this.userName);
            window.sessionStorage.setItem("imgs", this.userImg);
            window.sessionStorage.setItem("jifen", jifen);
            window.sessionStorage.setItem("userid", this.userId);
      });
      let qiandao = true
      this.show=false
               this.shows=false
               this.showok=true
      console.log(this.userName)
      axios.post('/renwuones',`name=${this.userName}&renwuone=${qiandao}`).then( res=> {
        console.log(res.data)
      })
        },
        renwu2ok(){
      console.log(this.userName)
      axios.post('/isrenwutwo',`username=${this.userName}&jifen=10`).then( res=> {
        console.log(res.data)
        this.$toast({
              message: "领取成功",
              position: "bottom",
              duration: "1000",
            });
            this.sums++
        let jifen = this.userJifen*1+10
        this.$store.commit("loginOk", { name: this.userName, img: this.userImg,jifen:jifen,userid:this.userId });
            // 不仅需要存在vuex中,还需要存入sessionStorage
            window.sessionStorage.setItem("islogin", true);
            window.sessionStorage.setItem("name", this.userName);
            window.sessionStorage.setItem("imgs", this.userImg);
            window.sessionStorage.setItem("jifen", jifen);
            window.sessionStorage.setItem("userid", this.userId);
      });
      let qiandao = true
               this.show1=false
               this.show1s=false
               this.show1ok=true
      console.log(this.userName)
      axios.post('/renwutwos',`name=${this.userName}&renwutwo=${qiandao}`).then( res=> {
        console.log(res.data)
      })

        },
    },
    mounted(){
       let names = this.$route.query.name;
       console.log(names)
       axios.get(`/bly?name=${names}`).then((res)=>{
           console.log(res.data.results[0].renwu1)
           console.log(res.data.results[0].renwu1ok)
           if(res.data.results[0].renwu1ok=='true' && res.data.results[0].renwu1 =='true'){
               this.show=false
               this.shows=false
               this.showok=true
           } else if(res.data.results[0].renwu1ok !='true' && res.data.results[0].renwu1 =='true'){
               this.show=false
               this.shows=true
               this.showok=false
           }else{
               this.show=true
               this.shows=false
               this.showok=false
           }
           if(res.data.results[0].renwu2ok=='true' && res.data.results[0].renwu2 =='true'){
               this.show1=false
               this.show1s=false
               this.show1ok=true
           } else if(res.data.results[0].renwu2ok !='true' && res.data.results[0].renwu2 =='true'){
               this.show1=false
               this.show1s=true
               this.show1ok=false
           }else{
               this.show1=true
               this.show1s=false
               this.show1ok=false
           }



        //    if(res.data.results[0].renwu1=='true'){
        //        this.show=false
        //        this.shows=true
        //    }else{
        //        this.show1=false
        //    }
        //    if(res.data.results[0].renwu2=='true'){
        //        this.show1=true
        //    }else{
        //        this.show1=false
        //    }
        //    if(res.data.results[0].renwu3=='true'){
        //        this.show2=true
        //    }else{
        //        this.show2=false
        //    }
           
    //        if(this.shows==true && this.show1 != true && this.show2 !=true){
    //        this.sums = 1
    //    } else if(this.shows==true && this.show1 == true && this.show2 != true){
    //        this.sums = 2
    //    }else if(this.shows==true && this.show2 == true && this.show1 != true){
    //        this.sums = 2
    //    }else if(this.show || this.show1 || this.sow2){
    //        this.sums = 3
    //    }
       });
       
    }
}
</script>

<style scoped lang="scss">
.Task{
    touch-action: pan-y;
}
.tasks{
    width: 92%;
    margin: 0 auto;
    margin-top: 0.6rem;
    .tasks1{
        width: 100%;
        display: flex;
        p{
        font-size: 0.3rem;
        width: 70%;
    }
    .number{
        text-align: right;
        width: 30%;
        font-size: 0.3rem;
        span:nth-child(1){
            color: red;
        }
    }
    }
    .tasks2{
        width: 100%;
        height: 0.6rem;
        margin-top: 00.3rem;
        p{
            width: 73%;
            float: left;
            height: 0.6rem;
            line-height: 0.6rem;
            color: #999;
            font-size: 0.3rem;
        }
        a{
            float: right;
            display: block;
            width: 1.6rem;
            color: #dd565f;
            height: 0.6rem;
            line-height: 0.6rem;
            border: 1px solid #dd565f;
            border-radius: 0.3rem;
            font-size: 0.3rem;
            text-align: center;
            &:nth-child(3){
                color: #fff;
                background-color: #dd565f;
            }     
            &:nth-child(4){
                color: #fff;
                background-color: #cccccc;
                border: 0;
            }     
            }
    }
    h1{
        margin-top: 0.3rem;
        color: #999;
        font-size: 0.23rem;
        font-weight: 400;
        
    }
    h2{
            color: #e99d85;
            margin-top: 0.1rem;
            font-size: 0.23rem;
            font-weight: 400;
        }
}
.box{
    width: 92%;
    display: flex;
    margin: 0 auto;
    margin-top: 0.5rem;
    div{
        width: 25%;
        img{
            width: 50%;
            display: block; 
            margin: 0 auto;         
            }
            span{
                display: block;
                font-size: 0.25rem;
                color: #999;
                text-align: center;
            }
    }
}
.taskHeard{
    width: 92%;
    margin: 0 auto;
    display: flex;
    margin-top: 1rem;
    p{
        width: 50%;
        font-size: 0.28rem;
        &:nth-child(2){
            text-align: right;
        }
    }
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
</style>