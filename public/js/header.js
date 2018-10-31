$(function(){
    $(`<link rel="stylesheet" href="css/header.css">`)
    .appendTo("head");
    $.ajax({
        url:"../HeaderFooter/header1.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#header")
        }
    })
})
