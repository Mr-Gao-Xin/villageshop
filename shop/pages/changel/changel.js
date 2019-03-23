// pages/changel/changel.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    activeIndex:0,
    things_list: []
  },
  setChanel(e) {
    this.setData({
      activeIndex: e.target.dataset.index
    })
    var changel_id = e.target.dataset.index;
    wx.showLoading({
      title: '努加载中...',
    })
    wx.request({
      url: 'http://flyxin.com.cn/thing_list_changel.php',
      data: {
        changel_id: changel_id
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: res => {
        this.setData({
          things_list: res.data
        })
        wx.hideLoading();
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // 侧边导航的获取
    wx.request({
      url: 'http://flyxin.com.cn/top_list.php',
      data: {
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: res => {
        if (res.data instanceof Array) {
          this.setData({ list: res.data })
        }
      }
    }),
    // 进入页面初始化数据
    wx.request({
      url: 'http://flyxin.com.cn/thing_list.php',
      data: {
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: res => {
        console.log(res)
        if (res.data instanceof Array) {
          this.setData({
            things_list: res.data
          })
        }
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})