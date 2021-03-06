// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
window.addEventListener('page:load', setup, false);
window.addEventListener('load', setup, false);
function setup()
{				
	$('#cityBodyShow').hide();	
	$(".txt-pt").css('display', 'none');
	$(".txt-en").css('display', 'inline');

	$( "#indexImg" ).click(function() {
	    $('#header').hide(300);
		$('#cityBodyShow').show(300);
	});

	$( ".select-en" ).click(function() {
	    $(".txt-pt").css('display', 'none');
		$(".txt-en").css('display', 'inline');
		return false;
	});

	$( ".select-pt" ).click(function() {
	    $('.txt-pt').css('display', 'inline');
		$('.txt-en').css('display', 'none');
		return false;
	});

	$(function() {

    //settings for slider
    var width = 640;
    var animationSpeed = 1000;
    var pause = 4000;
    var currentSlide = 1;

    //cache DOM elements
    var $slider = $('#slider');
    var $slideContainer = $('.slides', $slider);
    var $slides = $('.slide', $slider);
    var $width = $('#slider .slides').css('width', ($slides.length * 640) + 640);

    var interval;

    function startSlider() {
        interval = setInterval(function() {
            $slideContainer.animate({'margin-left': '-='+width}, animationSpeed, function() {
                if (++currentSlide === $slides.length) {
                    currentSlide = 1;
                    $slideContainer.css('margin-left', 0);
                }
            });
        }, pause);
    }
    function pauseSlider() {
        clearInterval(interval);
    }

    $slideContainer
        .on('mouseenter', pauseSlider)
        .on('mouseleave', startSlider);

    startSlider();


	});
}







