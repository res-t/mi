$("#zh").click(function(e){
  e.preventDefault();
  $("#inpu").removeClass("dis");
  $("#sma").addClass("dis")
  $(this).addClass("now");
  $("#sm").removeClass("now");
})
$("#sm").click(function(e){
  e.preventDefault();
  $("#sma").removeClass("dis");
  $("#inpu").addClass("dis");
  $(this).addClass("now");
  $("#zh").removeClass("now");
})
$(".ico>a").click(function(e){
  e.preventDefault();
})


      /** 
       * 
       * 
       *  
          
       var btn= document.getElementById("btn_login");
      btn.onclick = function(){
          console.log(11111);
          //获取用户名保存
          var uname = document.getElementById("uname");
          sessionStorage.setItem('uname',uname.value);
          alert('3秒钟跳转到首页')
          setTimeout(function(){
              location.href="index.html"
          },3000)
      }
      */