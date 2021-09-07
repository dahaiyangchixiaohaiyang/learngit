<template>
<div>
  <!-- <div class="userimgs" v-for="(item,index) in lisData" v-show="item" :key="index">
    <img v-if="item" class="img" :src="item" alt="" @click="getImg(lisData,index)">
  </div> -->
<button @click="btns">点我</button>
<transition name="van-slide-up">
  <div v-show="visible" class="di"><img src="img/loginimg/d570806382a95074887de9e4c55a0ee0.png" alt=""></div>
</transition>
</div>
</template>

<script>
import {ImagePreview} from "vant"
export default {
  name:"ImagePreview",
  data(){
    return {
      lisData :["img/userimg/91848884_1591506915.jpg","img/userimg/78312157_1591506915.jpg"],
      visible:false
    }
  },
  methods:{
    getImg(images,index){
      ImagePreview({
        images:this.lisData,
        showIndex:true,
        loop:false,
        startPosition:index
      })
    },
    btns(){
      this.visible=true
    }
  }
}


</script>

<style scoped>
.di{
  width: 100%;
  height: 100%;
}
img{
  width: 100%;
}
</style>
