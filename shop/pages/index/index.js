//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    dot: true,
    list: [],
    activeIndex: 0,
    bannerUrl: [
      { url: '/img/banner.jpg' },
      { url: '/img/banner.jpg' },
      { url: '/img/banner.jpg' },
      { url: '/img/banner.jpg' }
      ],
      things_list:[]
  },
  setChanel(e) {
    this.setData({
      activeIndex: e.target.dataset.index
    })
    var changel_id=e.target.dataset.index;
    wx.showLoading({
      title: '努加载中...',
    })
    wx.request({
      url: 'http://flyxin.com.cn/thing_list_changel.php',
      data:{
        changel_id: changel_id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success:res=>{
        this.setData({
          things_list:res.data
        })
        wx.hideLoading();
      }
    })
  },
  onLoad: function() {
    wx.login({
      success: res => {
        // 可以获取code
        wx.request({
          url: 'http://flyxin.com.cn/login.php', // 仅为示例，并非真实的接口地址
          data: {
            code: res.code
          },
          header: {
            'content-type': 'application/json' // 默认值
          },
          success(res) {
            // 设置openid
            wx.setStorageSync('openid', res.data.openid);
            wx.setStorageSync('session_key', res.data.session_key);
          }
        })
      }
    }),
    wx.checkSession({
      success: function(red) {
        // console.log(red, '未过期');
        // wx.showToast({
        //   title: '登录未过期',
        // })
      },
      fail: function(res) {
        wx.showModal({
          title: '提示',
          content: '登录已过期',
        })
      }
    }),
    // 获取顶部的导航
    wx.request({
      url: 'http://flyxin.com.cn/top_list.php',
      data:{
      },
       header: {
        'content-type': 'application/json' // 默认值
      },
      success:res=>{
        if(res.data instanceof Array){
          this.setData({list:res.data})
        }
      }
    }),
    // 初始化首页数据的加载
      wx.request({
        url: 'http://flyxin.com.cn/thing_list.php',
        data: {
        },
        header: {
          'content-type': 'application/json' // 默认值
        },
        success: res => {
          if (res.data instanceof Array) {
            this.setData({
              things_list:res.data
            })
          }
        }
      })
  }
})