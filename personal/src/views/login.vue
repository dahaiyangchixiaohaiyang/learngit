<template>
  <div class="login">
    <nav class="bar">
      <i class="jinsom-icon jinsom-xiangxia2" @click="btns"></i
      ><span>忘记密码</span>
    </nav>
    <div class="card">
      <img src="img/loginimg/7c2c60506876716ccf0e706db13d4511.png" alt="" />
    </div>
    <h1>携手让汉服成为一种流行的生活方式</h1>
    <div class="box">
      <li><span>密码登陆</span><span>短信登陆</span></li>
      <li>
        <van-icon name="contact" />
        <input type="text" placeholder="手机/邮箱/用户名" v-model="name" />
      </li>
      <li>
        <van-icon name="closed-eye" />
        <input type="password" placeholder="请输入密码" v-model="pwd" />
      </li>
      <li><a href="javascript:" @click="loginbtn">登陆</a></li>
      <li><a href="javascript:">注册</a></li>
    </div>
    <ul class="uls">
      <li>
        <i class="jinsom-icon jinsom-qq"></i>
        <p>QQ</p>
      </li>
      <li>
        <i class="jinsom-icon jinsom-weibo"></i>
        <p>微博</p>
      </li>
      <li>
        <i class="jinsom-icon jinsom-wenhao"></i>
        <p>忘记密码</p>
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";
export default {
  props: {
    visible2: {},
  },
  data() {
    return {
      active: "1",
      name: "",
      pwd: "",
    };
  },
  methods: {
    btns() {
      this.visible2.visible = false;
      this.canScroll();
    },
    onSubmit(values) {
      console.log("submit", values);
    },
    loginbtn() {
      console.log(this.name, this.pwd);
      axios
        .post("/login", `username=${this.name}&password=${this.pwd}`)
        .then((res) => {
          console.log(res);
          if (res.data.code == 200) {
            this.$toast({
              message: "登陆成功",
              position: "bottom",
              duration: "2000",
            });
            this.$store.commit("loginOk", this.name);
            // 不仅需要存在vuex中,还需要存入sessionStorage
            window.sessionStorage.setItem('islogin',true);
            window.sessionStorage.setItem('name',this.name);
            this.$router.push("/user");
            this.canScroll();
          } else {
            this.$toast({
              message: "登陆失败,账户密码输入错误",
              position: "bottom",
              duration: "2000",
            });
          }
        });
    },
  },
};
</script>

<style scoped lang="scss">
.login2 {
  margin-top: 0.5rem;
}
.login {
  touch-action: pan-y;
  position: relative;
  background-color: #fff;
  width: 100%;
  height: 100vh;
}
.bar {
  width: 100%;
  color: #fff;
  i {
    font-size: 0.3rem;
    position: fixed;
    top: 0.1rem;
    left: 0.3rem;
    z-index: 10;
  }
  span {
    position: fixed;
    top: 0.1rem;
    right: 0.3rem;
    font-size: 0.3rem;
    z-index: 10;
  }
}
.card {
  width: 160%;
  height: 5rem;
  position: absolute;
  top: 0%;
  right: -30%;
  height: 5rem;
  display: flex;
  justify-content: center;
  background-image: url(../assets/d570806382a95074887de9e4c55a0ee0.png);
  background-repeat: no-repeat;
  background-size: 100%;
  border-radius: 0 0 100% 100%;
  img {
    display: block;
    width: 1.1rem;
    height: 1.1rem;
    border-radius: 50%;
    margin-top: 0.8rem;
    box-shadow: 0 0 20px rgb(255 255 255/50%);
    padding: 0.08rem;
  }
}
h1 {
  width: 100%;
  text-align: center;
  color: #fff;
  font-size: 0.26rem;
  position: fixed;
  top: 2.2rem;
  font-weight: 400;
  text-shadow: 0 0 10px #fff;
}
.box {
  width: 90%;
  height: 45vh;
  background-color: #fff;
  position: fixed;
  top: 3.8rem;
  left: 5%;
  border-radius: 0.5rem;
  box-shadow: 0 1px 20px #888;
}
.box {
  li {
    list-style: none;
    margin: 0 auto;
    width: 90%;
    height: 12%;
    border-bottom: 1px solid #eee;
    display: flex;
    align-items: center;
    span {
      width: 50%;
      text-align: center;
      display: inline-block;
      font-size: 0.28rem;
      font-weight: 600;
      letter-spacing: 0.15rem;
    }
    &:nth-child(2) {
      height: 10%;
      margin-top: 5%;
      padding-bottom: 00.2rem;
      position: relative;
      .van-icon {
        font-size: 0.45rem;
        position: absolute;
        top: 0;
        left: 0.5rem;
        color: #888;
      }
      input {
        width: 65%;
        font-size: 0.3rem;
        border: 0;
        // border-bottom: 2px solid #888;
        position: absolute;
        top: 5%;
        left: 1.2rem;
      }
    }
    &:nth-child(3) {
      height: 15%;
      position: relative;
      margin-top: 5%;

      .van-icon {
        font-size: 0.45rem;
        position: absolute;
        top: 10%;
        left: 0.5rem;
        color: #888;
      }
      input {
        width: 65%;
        font-size: 0.3rem;
        border: 0;
        // border-bottom: 2px solid #888;
        position: absolute;
        top: 10%;
        left: 1.2rem;
        background-color: #fff;
      }
    }
    &:nth-child(4) {
      margin-top: 5%;
      border: 0;
      height: 15%;
      a {
        border-radius: 0.08rem;
        text-decoration: none;
        color: #fff;
        line-height: 0.7rem;
        height: 0.7rem;
        text-align: center;
        margin: 0 auto;
        display: block;
        width: 90%;
        background-color: #dd565f;
        border: 1px solid #dd565f;
        font-size: 0.3rem;
      }
    }
    &:nth-child(5) {
      margin-top: 2%;
      border: 0;
      height: 15%;
      a {
        border-radius: 0.08rem;
        text-decoration: none;
        color: #fff;
        line-height: 0.7rem;
        height: 0.7rem;
        text-align: center;
        margin: 0 auto;
        display: block;
        width: 90%;
        color: #dd565f;
        border: 1px solid #dd565f;
        font-size: 0.3rem;
      }
    }
  }
}
.uls {
  width: 100%;
  position: fixed;
  bottom: 0;
  height: 10vh;
  background-color: #e5e5e5;
  display: flex;
  align-items: center;
  justify-content: center;
  li {
    width: 20%;
    text-align: center;
    height: 10vh;
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    justify-content: center;
    i {
      display: block;
      width: 100%;
      font-size: 0.5rem;
      color: #2897f0;
    }
    p {
      font-size: 0.25rem;
    }
    &:nth-child(2) {
      width: 20%;
      text-align: center;
      i {
        width: 100%;
        font-size: 0.5rem;
        color: #dc3039;
      }
      p {
        font-size: 0.25rem;
      }
    }
    &:nth-child(3) {
      width: 20%;
      text-align: center;
      i {
        width: 100%;
        font-size: 0.5rem;
        color: #a0a0a0;
      }
      p {
        font-size: 0.25rem;
      }
    }
  }
}
</style>