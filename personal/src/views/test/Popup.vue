<template>
<div>
    <van-cell is-link @click="showPopup">展示弹出层</van-cell>
<van-popup v-model="show"  :style="{height:'30%',width:'50%'}">
    <img src="img\barimg\1168034_1601959102.jpg" alt="">
</van-popup>
    <van-cell is-link @click="showPopup">展示弹出层</van-cell>
<van-popup v-model="show"  position="bottom" :style="{height:'100%',width:'100%'}">
    <img src="img\userimg\37684471_1591506914.jpg" alt="">
</van-popup>
</div>
</template>

<script>
export default {
  data() {
    return {
      show: false,
    };
  },

  methods: {
    showPopup() {
      this.show = true;
    },
  },
};
</script>

