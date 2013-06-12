// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery.webticker
//= require jquery.slides
//= require twitter/bootstrap
//= require mousewheel
//= require fancybox
//= require ckeditor/init
//= require ckeditor/config
//= require ckeditor/ckeditor
//= require datepicker-ru
//= require_tree .

$(document).ready(function(){
  $('input[data-datepicker=datepicker]').datepicker({
    // inline: true,
    //nextText: '&rarr;',
    //prevText: '&larr;',
    showOtherMonths: true,
    //dateFormat: 'dd MM yy',
    dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чтв', 'Пт', 'Сб'],
    regional: "ru-RU",
    dateFormat: "DD, d MM, yy",
    //showOn: "button",
    //buttonImage: "img/calendar-blue.png",
    //buttonImageOnly: true,
  }, $.datepicker.regional['ru']);
  
  $('.item-badge').tooltip();

  $('#webtricker').liMarquee({
      direction: 'left',
      //Указывает направление движения содержимого контейнера (left | up)
      loop: -1,
      //Задает, сколько раз будет прокручиваться содержимое. "-1" для бесконечного воспроизведения движения
      scrolldelay: 0,
      //Величина задержки в миллисекундах между движениями
      scrollamount: 50,
      //Скорость движения контента (px/sec)
      circular: true,
      //Если "true" - строка непрерывная 
      drag: false //Если "true" - включено перетаскивание строки
  });
	$("#slides").slidesjs({
    width: 1024,
    height: 310,
    navigation: {
      active: false,
        // [boolean] Generates next and previous buttons.
        // You can set to false and use your own buttons.
        // User defined buttons must have the following:
        // previous button: class="slidesjs-previous slidesjs-navigation"
        // next button: class="slidesjs-next slidesjs-navigation"
      effect: "slide"
        // [string] Can be either "slide" or "fade".
    },
    pagination: {
      active: false
    },
    play: {
      active: true,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      interval: 5000,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: true,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: true,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 0
        // [number] restart delay on inactive slideshow
    }
  });

  $('.box-media').fancybox({
    openEffect  : 'none',
    closeEffect : 'none',
    helpers : {
      media : {}
    }
  });

  $("a.original-image-link").fancybox({
    openEffect  : 'elastic',
    closeEffect : 'elastic',
    helpers : {
      title : {
        type : 'over'
      },
      thumbs  : {
        width : 50,
        height  : 50
      }
    }
  });

  $('.box-media').hover(function(){
    console.log('On');
    $('.overlay', this).stop().fadeIn('fast');
    $('.duration', this).stop().animate({ 'backgroundColor': 'transparent' }, "fast");
  }, function(){
    $('.overlay', this).stop().fadeOut('fast');
    $('.duration', this).stop().animate({ 'backgroundColor': 'rgba(0, 0, 0, 0.7)' }, "fast");
  });

  var a = 'Sd';
  // Weather informer text
  var weather = $('.gsCity span');
  weather.text('Погода в "Озерках"');
});

