
 $(document).ready(function(){
    $(".uploadOut ").click(function(){
        $(".uploadIn").toggle("slow");
        $(this).toggleClass("active");
        return false;
    });
});