<template>
<div>
  <div class="detail" v-html="details">
    
    
  </div>
  </div>
</template>
<script>
import axios from "axios"
export default {
  data(){
    return {
      details:''
    }
  },
  mounted(){
        let id = this.$route.query.id;
        console.log(id)
        axios.get(`/detail?id=${id}`).then((res)=>{
            console.log(res)
            this.details=res.data.results[0].detail
            console.log(this.details)
        })
    }
}
</script>

<style lang="scss">
.contents { 
  margin-top: 0.2rem;
  padding: 0 0.3rem;
  h1{
    font-size: 0.33rem;
    font-weight: 400;
  }
  span{
    margin-top: 0.2rem;
    padding-bottom: 0.2rem;
    margin-bottom: 0.2rem;
    border-bottom:1px solid #f5f5f5;
    display: block;
    font-size: 0.03rem;
    color: #999;
  }
  p{
    font-size: 4vw;
  }
  img{
    margin-top: 0.2rem;
    width: 100%;
    border-radius: 50%;
    display: block;
  }
  .connt{
    margin-top: 0.2rem;
    text-align: center;
    img{
      margin-top: 0.2rem;
      border-radius: 0;
    }
    p{
      margin-top: 0.2rem;
    }
  }
}
.debar{
  height: 0.7rem;
  background-color: #DE575D;
  display: flex;
  justify-content: center;
  align-items: center;
  i{
    width: 20%;
    font-size: 0.3rem;
    color: #fff;
    margin-right: 0.5%;
  }
  .rightbar{
    position: relative;
    left: 4%;
    width: 15%;
    height: 0.4rem;
    line-height: 0.4rem;
    font-size: 0.25rem;
    border-radius: 0.2rem;
    background-color: #fff;
    color: #DE575D;
    i{
      color: #DE575D;
    }
  }
  .barimg{
    margin-right: 5%;
    width: 50%;
    display: flex;
    justify-content: center;
    img{
      border-radius: 50%;
    display: block;
    width: 0.6rem;
  }
  span{
    display: inline-block;
    height: 0.6rem;
    line-height: 0.6rem;
    font-size: 0.3rem;
  }
  }
}
</style>