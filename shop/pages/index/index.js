//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    dot:true,
    list:[
      {
        id:0,
        info:"全部"
      }, {
        id: 1,
        info: "新鲜果蔬"
      }, {
        id: 2,
        info: "零食百货"
      }, {
        id: 3,
        info: "粮油干杂"
      }, {
        id: 4,
        info: "肉类水产"
      }, {
        id: 5,
        info: "火锅专区"
      }, {
        id: 6,
        info: "新人专享"
      }
    ],
    bannerUrl:[
      {url:'/img/banner.jpg'},
      {url:'/img/banner.jpg'},
      {url:'/img/banner.jpg'},
      {url:'/img/banner.jpg'}
    ],
    activeIndex:0
  },
  setChanel(e) {
    this.setData({
      activeIndex:e.target.dataset.index
    })
  } 
})
