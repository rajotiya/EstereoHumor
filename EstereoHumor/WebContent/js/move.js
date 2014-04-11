$(document).ready(function(){
    
   
$("#left_butt").click(function(){
    /* var x=event.clientX;
var y=event.clientY;
    var z = '-'+x+'px'
    /*alert(z);*/
  $(".moving").animate({left:"100px"});
}); 
    
$("#right_butt").click(function(){
     /*var a=event.clientX;
var b=event.clientY;
    var c = '-'+a+'px'
   /* alert(c);*/
  $(".moving").animate({right:"100px"});
});     
});