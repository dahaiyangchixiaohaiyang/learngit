<template>
<div>
  <div class="userimgs" v-for="(item,index) in lisData" v-show="item" :key="index">
    <img v-if="item" class="img" :src="item" alt="" @click="getImg(lisData,index)">
  </div>

</div>
</template>

<script>
import {ImagePreview} from "vant"
export default {
  name:"ImagePreview",
  data(){
    return {
      lisData :["img/userimg/91848884_1591506915.jpg","img/userimg/78312157_1591506915.jpg"]
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
    }
  }
}
</script>

<style scoped>
img{
  width: 20%;
}
</style>
