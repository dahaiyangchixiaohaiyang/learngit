<template>
    <div>
        <div class="faxianbar">
      <div><i class="jinsom-icon jinsom-fanhui2"></i></div>
      <div>上传头像</div>
      <div @click="queding">确定</div>
    </div>

    <div class="up">
    <van-uploader v-model="fileList" :after-read="afterRead" :max-count="1"/>
    </div>
    </div>
</template>
<script>
import axios from "axios";
import { mapState } from 'vuex';
export default {
  data(){
    return{
      fileList:[]
    }
  },
    computed:{...mapState(['userImg','userName','userJifen','userId'])},
    methods:{
        afterRead(file) {
          console.log(this.userName)
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
          this.fileList = [{url:imgss}]
          this.$store.commit("loginOk", { name: this.userName, img: imgss,jifen:this.userJifen,userid:this.userId });
            // 不仅需要存在vuex中,还需要存入sessionStorage
            window.sessionStorage.setItem("islogin", true);
            window.sessionStorage.setItem("name", this.userName);
            window.sessionStorage.setItem("imgs", imgss);
            window.sessionStorage.setItem("jifen", this.userJifen);
            window.sessionStorage.setItem("userid", this.userId);
          console.log(res.data.results)
           axios.post('http://localhost:3000/edit',`name=${this.userName}&userimgs=${imgss}`)

          .then( res=> {
           console.log(res);
            
      })

      });
    },
    queding(){
      let qiandao = true
      console.log(this.userName)
      axios.post('/renwutwo',`name=${this.userName}&renwutwo=${qiandao}`).then( res=> {
        console.log(res.data)
        this.$router.push("/users");
      })
      
      
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
  width: 3rem;
  height: 3rem;
  position: fixed;
  top: 20%;
  left: 30%;
  
}


</style>

<style>
.van-uploader__upload{
  width: 100% !important;
  height: 100% !important;
  

}
.up .van-icon{
  font-size: 2rem !important;
}
.van-uploader__preview-image{
  
  width: 2rem !important;
  height: 2rem !important;
}
.van-icon-cross::before{
  font-size: 0.5rem;
  position: absolute;
  top: 0.02rem;
  right: 0.02rem;
}
.van-uploader__wrapper{
 justify-content: center;
}

</style>