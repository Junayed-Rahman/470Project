var modalBtn= document.querySelector('.working');
var modalBg= document.querySelector('.modal-bg');
var modalClose= document.querySelector('.modal-close', '.close-button');

modalBtn.addEventListener('click', function(){
    modalBg.classList.add('bg-active');



});

modalClose.addEventListener('click', function(){
    modalBg.classList.remove('bg-active');


});

var internalmodalBtn=document.querySelector('.modal-closepart');
var internalmodalBg= document.querySelector('.modal-bgs','modal-bg');
var internalmodalClose= document.querySelector('.modal-closes','modal-close');

internalmodalBtn.addEventListener('click', function(){
    internalmodalBg.classList.add('bgs-active');
    modalBg.classList.remove('bg-active');




});

internalmodalClose.addEventListener('click', function(){
    internalmodalBg.classList.remove('bgs-active','bg-active');


});


// repeat same code for different modal


var modalBtn2= document.querySelector('.working2');
var modalBg2= document.querySelector('.modal-bg2');
var modalClose2= document.querySelector('.modal-close2', '.close-button2');

modalBtn2.addEventListener('click', function(){
    modalBg2.classList.add('bg-active2');



});

modalClose2.addEventListener('click', function(){
    modalBg2.classList.remove('bg-active2');


});

var internalmodalBtn2=document.querySelector('.modal-closepart2');
var internalmodalBg2= document.querySelector('.modal-bgs2','modal-bg2');
var internalmodalClose2= document.querySelector('.modal-closes2','modal-close2');

internalmodalBtn2.addEventListener('click', function(){
    internalmodalBg2.classList.add('bgs-active2');
    modalBg2.classList.remove('bg-active2');




});

internalmodalClose2.addEventListener('click', function(){
    internalmodalBg2.classList.remove('bgs-active2','bg-active2');


});





/*owl carousel */
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    dots:false,
    autoplay:true,
    autoplayTimeout:4000,
    autoHeight:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:1
        }
    }
})



//repeat same code Again


var modalBtn4= document.querySelector('.working4');
var modalBg4= document.querySelector('.modal-bg4');
var modalClose4= document.querySelector('.modal-close4', '.close-button4');

modalBtn4.addEventListener('click', function(){
    modalBg4.classList.add('bg-active4');



});

modalClose4.addEventListener('click', function(){
    modalBg4.classList.remove('bg-active4');


});

var internalmodalBtn4=document.querySelector('.modal-closepart4');
var internalmodalBg4= document.querySelector('.modal-bgs4','modal-bg4');
var internalmodalClose4= document.querySelector('.modal-closes4','modal-close4');

internalmodalBtn4.addEventListener('click', function(){
    internalmodalBg4.classList.add('bgs-active4');
    modalBg4.classList.remove('bg-active4');




});

internalmodalClose4.addEventListener('click', function(){
    internalmodalBg4.classList.remove('bgs-active4','bg-active4');


});


//check part js
//repeat same code Again


var modalBtn6= document.querySelector('.checkwork1');
var modalBg6= document.querySelector('.modal-bgwork1');
var modalClose6= document.querySelector('.modal-close8');

modalBtn6.addEventListener('click', function(){
    modalBg6.classList.add('bgwork1-active');



});

modalClose6.addEventListener('click', function(){
    modalBg6.classList.remove('bgwork1-active');


});



//check part js
//repeat same code Again


var modalBtn8= document.querySelector('.checkwork2');
var modalBg8= document.querySelector('.modal-bgwork2');
var modalClose8= document.querySelector('.modal-close9');

modalBtn8.addEventListener('click', function(){
    modalBg8.classList.add('bgwork2-active');



});

modalClose8.addEventListener('click', function(){
    modalBg8.classList.remove('bgwork2-active');


});




//check part js
//repeat same code Again


var modalBtn10= document.querySelector('.checkwork4');
var modalBg10= document.querySelector('.modal-bgwork4');
var modalClose10= document.querySelector('.modal-close10');

modalBtn10.addEventListener('click', function(){
    modalBg10.classList.add('bgwork4-active');



});

modalClose10.addEventListener('click', function(){
    modalBg10.classList.remove('bgwork4-active');


});