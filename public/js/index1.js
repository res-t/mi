/****lunbo */
$(document).ready(function(){
    var i = 0 ;
    var timer;
  
   //用jquery方法设置第一张图片显示，其余隐藏
   $('.item').eq(0).show().siblings('.item').hide();
    
   //调用showTime()函数（轮播函数）
   showTime();
    
   //当鼠标经过下面的数字时，触发两个事件（鼠标悬停和鼠标离开）
   $('.tab').hover(function(){
     //获取当前i的值，并显示，同时还要清除定时器
     i = $(this).index();
     Show();
     clearInterval(timer);
   },function(){
     //
     showTime();
   });
    
   //鼠标点击左侧的箭头
   $('.prev').click(function(){
     clearInterval(timer);
     if(i == 0){
       i = 5;//注意此时i的值
     }
     i--;
     Show();
     showTime();
   });
    
   //鼠标点击右侧的箭头
   $('.next').click(function(){
     clearInterval(timer);
     if(i == 4){
       i = -1;//注意此时i的值
     }
     i++;
     Show();
     showTime();
   });
  
    
 //创建一个showTime函数
 function showTime(){
   //定时器
   timer = setInterval(function(){
     //调用一个Show()函数
     Show();
     i++;
     //当图片是最后一张的后面时，设置图片为第一张
     if(i==5){
       i=0;
     }
   },5000);
 }
  
  
 //创建一个Show函数
 function Show(){
   //在这里可以用其他jquery的动画
   $('.item').eq(i).fadeIn(300).siblings('.item').fadeOut(300);
    
   //给.tab创建一个新的Class为其添加一个新的样式，并且要在css代码中设置该样式
   $('.tab').eq(i).addClass('active').siblings('.tab').removeClass('active');
    
 }
   
 });
 /****lunbo end */
 /**商品**/

/**/

//热卖pin 抢购
$(".my_remai_title>a").click(function(){
  var li = $(this)
 
 $(li.attr('data-target')).removeClass("my_display").siblings('.my_Special_procduct').addClass("my_display")

    
})



 $(".appliances_title>div>ul>li").mouseenter(function(){
  var li = $(this)
  if( $(li.attr('data-target')).is('.my_display')){
 $(li.attr('data-target')).removeClass("my_display").siblings(".my_appliances_product").addClass("my_display")
 li.addClass('my_mouse').siblings('').removeClass("my_mouse")

}
li.children().addClass("my_mouse_a").parent().siblings().children().removeClass("my_mouse_a")
});
/*点击图片*/
$('.tubook').mouseenter(function(){
  var b =$(this);
  b.children(".my_left").removeClass("my_display");
 b.children('.my_right').removeClass("my_display")
}).mouseleave(function(){
  var b =$(this);
  b.children('.my_left').addClass("my_display");
  b.children('.my_right').addClass("my_display")
})
//li
for(var i =0;i<$(".ul_length").next().next().next().children('div').length/2-3;i++){
     var li = $("<li class=''></li>")
    // var a=i
    li.appendTo(".ul_length");
}
//you
var mg=0;w=240
$(".my_right").click(function(e){
  e.preventDefault();
  var rg =$(this);
  mg++;
  if(mg<rg.next().children('div').length){
      rg.next().css("left",-w*mg)
      //console.log(mg);
  }else{
      mg=-1
      rg.removeAttr("disabled");
  }
  rg.prev().prev().children(`:nth-child(${mg+1})`).addClass('li_bg').siblings().removeClass('li_bg')
  console.log(mg);
})

//zuo
//var ml=240;
$(".my_left").click(function(){
      mg--
  var rg =$(this);
  if(mg>=0){
      rg.next().next().css("left",-w*mg)
  }else{
      mg=0
  }
// $(`.ul_length>li:nth-child(${mg+1})`).addClass('li_bg').siblings().removeClass('li_bg')
  //console.log(mg);
  rg.prev().children(`:nth-child(${mg+1})`).addClass('li_bg').siblings().removeClass('li_bg')
})

//第一个li
$('.ul_length>li:first-child').addClass('li_bg')
//
$(".ul_length>li:first-child()").click(function(){
    var li=$(this)
    li.addClass('li_bg').siblings().removeClass('li_bg')
   li.parent().next().next().next().css("left","0px");
    
}).next().click(function(){
   var li=$(this)
   li.addClass('li_bg').siblings().removeClass('li_bg')
   li.parent().next().next().next().css("left","-240px")
}).next().click(function(){
  var li=$(this)
   li.addClass('li_bg').siblings().removeClass('li_bg')
   li.parent().next().next().next().css("left","-480px")
  
}) 


// $(`.ul_length>li:nth-child(${mg})`).addClass('li_bg')

$(".my_swipe_href>ul>li").mouseenter(function(){
  var li = $(this)
  if( $(li.attr('data-target')).is('.my_display')){
 $(li.attr('data-target')).removeClass("my_display").siblings().addClass("my_display")
 li.addClass('my_li_bg').siblings('').removeClass("my_li_bg")
  }
})
$('.my_swipe_href_xq').prev().parent().mouseleave(function(e){
  e.preventDefault();
   $(".my_swipe_href_xq").children("div").addClass("my_display");
   $(".my_swipe_href>ul>li").removeClass('my_li_bg')
})

  //视频播放
  $(".video_detail>ul>li>a").click(function(){
    var li = $(this)
    if( $(li.attr('data-target')).is('.my_display')){
   $(li.attr('data-target')).removeClass("my_display").parent().removeClass("my_display")
    }

})
var v3 = document.getElementById('v3');
var  myVideo =  document.querySelector('.my_video');
var  videoPlay = document.querySelector('.video_play');
for(var i =0;i<document.querySelectorAll("a[class='my_close']").length;i++){
   var close = document.querySelectorAll("a[class='my_close']");
   close[i].onclick = function(){
    v3.pause();
    videoPlay.classList.add('my_display');
    myVideo.classList.add('my_display');
    window.location.reload();
}
}
/****抢购 */
$(()=>{
  setInterval(function () {
    var date = new Date;
    // console.log(date.getHours())
    var nowHour = parseInt(date.getHours())
    // console.log(nowHour)
    var targetTime = nowHour +1
    // console.log(targetTime)
    $(".time-title").html(`${targetTime}:00场`)
    var nowMinutes = date.getMinutes()
    var minutes = 60-nowMinutes-1
    // console.log(60-nowMinutes-1)
    if(minutes<10){
      $(".minutes").html(`0${minutes}`)
    }else{
      $(".minutes").html(`${minutes}`)
    }
    var nowSeconds = date.getSeconds()
    var seconds = 60-nowSeconds-1
    if(seconds<10){
      $(".seconds").html(`0${seconds}`)
    }else{
      $(".seconds").html(`${seconds}`)
    }
  },1000);
})

/**返回的顶部鼠标悬停效果 */
$('.bar-sort').hover(function(){
     var li =$(this);
     li.children().children().children().toggleClass("my_display")
})
/**显示隐藏---滚动条事件*/
window.onscroll = function(){
  
   var docScroll = document.documentElement.scrollTop;
   console.log(docScroll,window.innerHeight);
    if(docScroll>window.innerHeight*2){
        console.log(12323);
        toptop.classList.remove("my_display")
    }else{
      toptop.className="my_display bar-sort"
    }
   
}