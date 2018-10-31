    /*搜索框*/
    $(".my_serch>input").click(function(){
        var $input = $(this);
        $input.css("border","1px solid #FF6B00")
        $(".d1").css("border","1px solid #FF6B00")
        .css("border-left","none")
        $(".my_resou").addClass("my_opacity")
        $(".my_p_input").removeClass("my_display")
    });
    $(".my_serch>input").parent().parent().parent().hover(function(){
       $(".my_serch>input").css("border","1px solid rgba(150, 149, 149, 0.212)")
       $(".my_resou").removeClass("my_opacity")
        $(".d1").css("border","1px solid rgba(150, 149, 149, 0.212)")
        $(".my_p_input").addClass("my_display")
    })


     /**商品**/
     $(".my_top_nav>li").mouseenter(function(){
         var li = $(this)
         if( $(li.attr('data-target')).is('.my_display')){
        $(li.attr('data-target')).removeClass("my_display").siblings(".hide_list").addClass("my_display")
      }
    
     });
     $(".my_title").parent().parent().mouseleave(function(){
           
       $('.hide_list').addClass('my_display')
       
      }
    )
   
  /*购物车**/
  $('.topbar-nav_right>ul>li:last-child').mouseenter(
         function(){
        var a=$(this)
        $('.topbar-nav_right>ul>li:last-child>a').css('background','white')
        .css('color','orange')
        $('.my_shopp_car').removeClass('my_display')
        a.children().children().removeClass('my_display')
    $('.topbar-nav_right>ul>li:last-child>a>img:first-child').addClass('my_display')           
  });

 $('.topbar-nav_right>ul>li:last-child').parent().parent().mouseleave(function(){
     var a=$(this)
     $('.topbar-nav_right>ul>li:last-child>a>img:first-child').removeClass('my_display')
     $('.topbar-nav_right>ul>li:last-child>a>img:nth-child(2)').toggleClass('my_display')
     $('.my_shopp_car').toggleClass('my_display')
     $('.topbar-nav_right>ul>li:last-child>a').css('background',' #424242')
     .css('color','#b0b0b0')
     console.log(1);
 })
 /*搜索图标*/
 $('.d1').mouseenter(function(){
     $(".search.icon").css("color","#fff")
 }).mouseleave(function(){
     $(".search.icon").css("color","#000")
 })
/* var welcome = document.getElementById('name');
var uname  = sessionStorage.getItem('uname');
if(uname){
    var html = `${uname}`;
   welcome.innerHTML=html;
}*/