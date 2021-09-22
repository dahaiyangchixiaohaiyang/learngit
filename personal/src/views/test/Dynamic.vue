<template>
    <div>
          <div class="share">
              <div class="chareItem">
                  <div class="item"><img src="img/dymainc/1.png" alt=""></div>
                  <div class="item2"><h3>动态</h3>
                  <h4>用图文动态分享生活,记录美好</h4>
                  </div>
              </div>
              <div class="chareItem">
                  <div class="item"><img src="img/dymainc/2.png" alt=""></div>
                  <div class="item2"><h3>视频</h3>
                  <h4>用视频展现国风汉服新风尚</h4>
                  </div>
              </div>
              <div class="chareItem">
                  <div class="item"><img src="img/dymainc/3.png" alt=""></div>
                  <div class="item2"><h3>音频</h3>
                  <h4>上传音频，用音乐倾听彼此</h4>
                  </div>
              </div>
              <i class="jinsom-icon jinsom-xiangxia2" @click="isDynamic"></i>
          </div>

    </div>
</template>

<script>
export default {
  props:['show3'],
  data() {
    return {
      show: false,
    };
  },

  methods: {
    showPopup() {
      this.show = true;
    },
    isDynamic(){
        this.show3.isShow=false
    }
  },
};
</script>

<style lang="scss" scoped>
.van-popup{
    background-color: rgba(255,255,255,0.92);
    touch-action: pan-y;
}
.share{
    width: 80%;
    margin: 0 auto;
    .chareItem{
        width: 100%;
        height: 1.07rem;
        display: flex;
        align-items: center;
        background-color: #eeeeee;
        border-radius: 0.2rem;
        margin-top: 0.15rem;
        .item{
            margin-left: 5%;
            width: 0.66rem;
            height: 0.66rem;
            img{
                display: block;
                width: 100%;
            }
        }
        .item2{
            margin-left: 5%;
            height: 0.66rem;
            h3{
                width: 100%;
                font-size: 0.25rem;
                height: 0.33rem;
                line-height: 0.33rem;
                font-weight: 500;
                
            }
            h4{
                font-size: 0.21rem;
                height: 0.33rem;
                line-height: 0.33rem;
                font-weight: 500;
            }
        }
    }
    i{
        display: block;
        text-align: center;
        margin: 0 auto;
        font-size: 8vw;
        color: #999;
        margin-top: 0.3rem;
    }
}
</style>
