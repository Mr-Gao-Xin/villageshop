// pages/authorize/authorize.js
Page({
  data:{
    img:'',
    pri:'',
    city:'',
    nickname:''
  },
  login(){
    wx.login({
      success:res=>{
        // 可以获取code
        console.log(res)
        wx.request({
          url: 'http://flyxin.com.cn/login.php', // 仅为示例，并非真实的接口地址
          data: {
            code:res.code
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            console.log(res)
          }
        })
      }
    })
  },
  checksession(){
    wx.checkSession({
      success:function(red){
        console.log(red,'未过期');
        wx.showToast({
          title: '登录未过期',
        })
      },
      fail:function(res){
        console.log(res)
        wx.showModal({
          title: '提示',
          content: '登录已过期',
        })
        // 再次调用login

      }
    })
  },
  // 获取用户信息
  info(){
    wx.getUserInfo({
      success:(res)=>{
        console.log(res)
        var json=res.userInfo;
        this.setData({
          nickname:json.nickName,
          pri: json.province,
          city:json.city,
          img:json.avatarUrl
        })
      }
    })
  }
})