/* Ação para aparecer '.menu-info-user' */

 var menuClick = $(".nav-user-logout"),
     menuShow = $(".menu-info-user");

$(document).ready(function(){
    
 $(menuClick).click(function(e){  
    $('.icon-menu').slideToggle();
    $(menuShow).slideToggle();
    $('.fa-chevron-circle-down').slideToggle();
    e.stopPropagation();
 });

$('body').click(function(e){
    //Esconder se a seleção for diferente de menu-info-user ou de qualquer descendente da div.
    if (!menuShow.is(e.target) && menuShow.has(e.target).length === 0){
            $('.icon-menu').slideUp("slow/400/fast");
            $(menuShow).slideUp("slow/400/fast");
            $('.fa-chevron-circle-down').slideDown("slow/400/fast");
        }
 });
 
});
  /* Fim da ação para aparecer '.menu-info-user' */   