// pages/authorize/authorize.js
Page({
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
})