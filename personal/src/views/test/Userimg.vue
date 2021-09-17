<template>
    <div>
        <div class="faxianbar">
      <div><i class="jinsom-icon jinsom-fanhui2"></i></div>
      <div>上传头像</div>
      <div @click="queding">确定</div>
    </div>

    
    <van-uploader :after-read="afterRead" />
    <img :src="userImg" alt="">
    </div>
</template>
<script>
import axios from "axios";
import { mapState } from 'vuex';
export default {
    computed:mapState(['userImg','userName']),
    methods:{
        afterRead(file) {
      // 此时可以自行将文件上传至服务器
      console.log(file.file);
      let arr = [];
      arr[0]=file.file
      let files = arr;
      let formData = new FormData(); 
      for (let i=0; i<files.length; i++){
        formData.append('uploadFile', files[i]);
      }
      axios.post('http://localhost:3000/upload', formData).then(res=>{
          let imgss = `http://localhost:3000/${res.data.results}`
          this.$store.commit("loginOk", { name: '别露洋头像2', img: imgss });
            // 不仅需要存在vuex中,还需要存入sessionStorage
            window.sessionStorage.setItem("islogin", true);
            window.sessionStorage.setItem("name", '别露洋头像2');
            window.sessionStorage.setItem("imgs", imgss);
          console.log(res.data.results)
           axios.post('http://localhost:3000/edit',`name=别露洋头像2&userimgs=${imgss}`)

          .then( res=> {
           console.log(res);
            
      })

      });
    },
    queding(){
        this.$router.push("/users");
    }

    }
}
</script>
<style scoped lang="scss">
#div {
      width: 100%; height: 250px; 
      font-size: 40px; font-weight: bold; text-align: center;
      line-height: 250px; background-color: blanchedalmond;
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
.van-uploader{
    margin-top: 50%;
    margin-left: 40%;
}
img{
    display: block;
    margin: 0 auto;
}
</style>