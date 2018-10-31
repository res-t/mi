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
   },3000);
 }
  
  
 //创建一个Show函数
 function Show(){
   //在这里可以用其他jquery的动画
   $('.item').eq(i).fadeIn(300).siblings('.item').fadeOut(300);
    
   //给.tab创建一个新的Class为其添加一个新的样式，并且要在css代码中设置该样式
   $('.tab').eq(i).addClass('active').siblings('.tab').removeClass('active');
    
 }
   
 });
 $(".title_rigth>ul>li").click(function(){
  var li = $(this)
  li.children("a").addClass("font_color").parent().siblings().children().removeClass("font_color")
  $(li.attr('data-target')).removeClass("my_display").siblings().addClass("my_display")
  
})
/*点击*/
$(".next_span").click(function(){
    $(".gallery").removeClass("my_display").siblings().addClass("my_display");
      var speed=100;//滑动的速度
      $('body,html').animate({ scrollTop: 0 }, speed);
      $(".title_rigth>ul>li:nth-child(2)").children("a").addClass("font_color").parent().prev().children("a").removeClass("font_color")   
})
/*轮播*/
var  i = 0;
setInterval(function(){
        if(i<3){
            i++
        }else{
            i=1;
        }
  $(`.banner_img>div:nth-child(${i})`).removeClass("my_display").siblings().addClass("my_display")
  $(`.Summary_ul>li:nth-child(${i})`).addClass("bg_color").siblings().removeClass("bg_color")

},5000)
/*点击小点*/
  for(let i=0; i<$(".Summary_ul").children().length; i++){
      $(".Summary_ul").children()[i].onclick = function(){
      console.log('按钮被单击了：', i+1); 
      $(`.banner_img>div:nth-child(${i+1})`).removeClass("my_display").siblings().addClass("my_display") 
      $(`.Summary_ul>li:nth-child(${i+1})`).addClass("bg_color").siblings().removeClass("bg_color")   
    };
  }
var n=0;
setInterval(function(){
      if(n>$(".index-boedy-img").length){
         n++;
      }else{
         n=1;
      }
      $(`.index-boedy-img>div:nth-child(${i})`).removeClass("my_display").siblings().addClass("my_display")
      $(`#index_body_index>li:nth-child(${i})`).addClass("border_ff").siblings().removeClass("border_ff")  
 },5000)
 /*小点*/
 for(let i=0; i<$("#index_body_index").children().length; i++){
       $("#index_body_index").children()[i].onclick = function(){
      console.log('按钮被单击了：', i); 
      $(`.index-boedy-img>div:nth-child(${i+1})`).removeClass("my_display").siblings().addClass("my_display")
      $(`#index_body_index>li:nth-child(${i+1})`).addClass("border_ff").siblings().removeClass("border_ff")  
    };
  }

  /*视频显示*/
  $(".a_play").click(function(){
      $("#index_video_one").removeClass("my_display")
  })
  var close1 = document.getElementById("my_close1");
  var myvideo = document.getElementById("index_video_one");
  close1.onclick = function(){
      myvideo.classList.add('my_display');
      window.location.reload();
  }



  $("#play_ico").click(function(){
      $("#index_video_two").removeClass("my_display")
  })
  
  var qingchun = document.getElementById("my_close2");
  var v4 = document.getElementById("v4");
  qingchun.onclick = function(){
      v4.pause();
      $("#index_video_two").addClass("my_display")
  }

  $("#play_ico2").click(function(){
    $("#index_video_one").removeClass("my_display")
})
var close1 = document.getElementById("my_close1");
var myvideo = document.getElementById("index_video_one");
var v3 =document.getElementById("v3");
close1.onclick = function(){
    myvideo.classList.add('my_display');
    v3.pause();
}



$(".gallery_next_title").click(function(){
  $(".specs").removeClass("my_display").siblings().addClass("my_display");
    var speed=100;//滑动的速度
    $('body,html').animate({ scrollTop: 0 }, speed);
    $(".title_rigth>ul>li:nth-child(3)").children("a").addClass("font_color").parent().prev().children("a").removeClass("font_color")   
})


/**参数top 轮播 */

/*$(".acolor_button>li").click(function(){
  var li = $(this)
 
 $(li.attr('data-target')).removeClass("my_display")//.siblings('.my_Special_procduct').addClass("my_display")

    
})*/
for(let a=0; a<$("#btn_color").children().length; a++){
  $("#btn_color").children()[a].onclick = function(){
    $(`.my_top_img>div:nth-child(${a+1})`).removeClass("my_display").siblings("").addClass("my_display")
};
}
