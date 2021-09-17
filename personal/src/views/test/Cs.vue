<template>
  <div class="yanzheng">
     
      <div class="yanzhengma"><img src="http://127.0.0.1:3000/getcode" alt=""></div>
      <input type="text" placeholder="输入验证码" v-model="isokInp">
      <a href="javascript:" @click="isOk">确定</a>
      </div>
</template>
<script>
import axios from "axios";
export default {
  data(){
    return {
      isokInp:''
    }
  },
  methods:{
    isOk(){
      axios.post(`/getlogin?code=${this.isokInp}`).then((res)=>{
        console.log(res)
      })
    },
  }
}
</script>
<style scoped lang="scss">
.yanzheng{
  width: 100%;
  
  .yanzhengma{
    text-align: center;
    font-size: 0.5rem;
    img{
      width: 100%;
    }
  }
  input{
    display: block;
    margin: 0 auto;
    width: 50%;
    height: 0.5rem;
    font-size: 0.3rem;
    border: 0;

  }
  a{
    width: 40%;
    color: #fff;
    display: block;
    margin: 0 auto;
    text-align: center;
    font-size: 0.3rem;
    background-color: #dd565f;
    border-radius: 3px;
  }

}
</style>