$(function(){
    $(`<link rel="stylesheet" href="css/footer.css">`)
    .appendTo("head");
    $.ajax({
        url:"../HeaderFooter/footer.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#footer")
        }
    })
})