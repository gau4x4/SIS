var wow = new WOW(
  {
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       false,       // trigger animations on mobile devices (default is true)
    live:         true,       // act on asynchronously loaded content (default is true)
    callback:     function(box) {
      // the callback is fired every time an animation is started
      // the argument that is passed in is the DOM node being animated
    }
  }
);
wow.init();

jQuery(document).ready(function($){
	$('#splitlayout a').click(function(event){
		var w = window.innerWidth;
		console.log(w);
		if (w >= 380) {
    		event.preventDefault();
    	}
	});
});
/*-----------------------------------------------------------------------------------
 	Script - SVG Color Fill http://stackoverflow.com/questions/11978995/how-to-change-color-of-svg-image-using-css-jquery-svg-image-replacement/11978996#11978996
-----------------------------------------------------------------------------------*/

            jQuery(document).ready(function() {
                /*
                 * Replace all SVG images with inline SVG
                 */
                    jQuery('img.svg').each(function(){
                        var $img = jQuery(this);
                        var imgID = $img.attr('id');
                        var imgClass = $img.attr('class');
                        var imgURL = $img.attr('src');

                        jQuery.get(imgURL, function(data) {
                            // Get the SVG tag, ignore the rest
                            var $svg = jQuery(data).find('svg');

                            // Add replaced image's ID to the new SVG
                            if(typeof imgID !== 'undefined') {
                                $svg = $svg.attr('id', imgID);
                            }
                            // Add replaced image's classes to the new SVG
                            if(typeof imgClass !== 'undefined') {
                                $svg = $svg.attr('class', imgClass+' replaced-svg');
                            }

                            // Remove any invalid XML tags as per http://validator.w3.org
                            $svg = $svg.removeAttr('xmlns:a');

                            // Replace image with new SVG
                            $img.replaceWith($svg);
                        });

                    });
            });

/*-----------------------------------------------------------------------------------
 	END Script - SVG Color Fill http://stackoverflow.com/questions/11978995/how-to-change-color-of-svg-image-using-css-jquery-svg-image-replacement/11978996#11978996
-----------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------
 	Script - Full Height Sections
-----------------------------------------------------------------------------------*/


jQuery(window).resize(function(){

	var ws = winSize();



	jQuery(".home_section, .renters_block, .history_block_main, .retailers_block").css("height",(ws[1]- jQuery(".header_wapper").innerHeight() )+"px");

});

jQuery(window).load(function(){

   var ws = winSize();



	jQuery(".home_section, .renters_block, .history_block_main, .retailers_block").css("height",(ws[1]- jQuery(".header_wapper").innerHeight())+"px");

});



function winSize()

{

    var myWidth = 0, myHeight = 0;

    if(typeof(window.innerWidth) == 'number') {

        // Non-IE

        myWidth = window.innerWidth;

        myHeight = window.innerHeight;

    }

    else if(document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {

        // IE 6+ in 'standards compliant mode'

        myWidth = document.documentElement.clientWidth;

        myHeight = document.documentElement.clientHeight;

    }

    else if(document.body && (document.body.clientWidth || document.body.clientHeight)) {

        // IE 4 compatible

        myWidth = document.body.clientWidth;

        myHeight = document.body.clientHeight;

    }

return [myWidth,myHeight];


}

/*-----------------------------------------------------------------------------------
 	END Script - All Custom frontend jQuery scripts & functions
-----------------------------------------------------------------------------------*/



/*-----------------------------------------------------------------------------------
 	Script - All Custom frontend jQuery scripts & functions
-----------------------------------------------------------------------------------*/


function splitSection() {



	var borderWidthHeight = parseInt(jQuery("#bodyborder-top").height());



	/*----------------------------------------------
			S P L I T   S E C T I O N
	------------------------------------------------*/


	if (jQuery(window).width() < 861) {

		jQuery(".split-left, .split-right").each(function(index, element) {

			var thisHeight = jQuery(this).height();

			if (thisHeight < 50) {

				jQuery(this).css({"min-height": "300px"});

			}

		});

	}



}


function smoothtransistion(url) {

	jQuery("#page-loader").slideDown(800, 'easeInOutExpo', function() {

		setTimeout(function() { window.location = url; }, 300);

	});

	setTimeout(function() { jQuery("body").removeClass("loading-end"); }, 500);

}


function hideResponsiveNav(){

	jQuery('.open-nav span.hamburger').toggleClass('is-clicked');

	jQuery('.main-nav').removeClass("nav-visible");

	jQuery('.nav-inner').animate({marginTop: '0px', opacity: 0}, 700, 'easeInOutExpo', function(){ });

	jQuery(".main-nav").delay(100).slideUp(700,'easeInOutExpo');



}


(function(jQuery){

'use strict';

setTimeout(function() { jQuery("body").addClass("loading"); },200); // Start loading animation


jQuery(window).load(function() {



	splitSection();

	jQuery(window).resize(function() {

		splitSection();

	});



	/*----------------------------------------------
        DROP DOWN NAV   (Mobile) + SHARE CLICK
	------------------------------------------------*/

	jQuery('nav.main-nav ul').on("click", "li", function() {

		if (jQuery(window).width() < 1025) {

			if (jQuery(this).find("ul").length > 0) {

				if (jQuery(this).find("ul").css('visibility') == 'hidden') {

					jQuery(this).addClass("hovered");

					return false;

				} else {

					jQuery(this).removeClass("hovered");

					return false;

				}

			}

		}

		var href = jQuery(this).find('a').attr('href');

		var target = jQuery(this).find('a').attr('target');

		if (href.charAt(0) !== '#' && target !== '_blank') {

			if (jQuery('#page-loader').length > 0) {

				smoothtransistion(href);

				return false;

			}

		} else {

			hideResponsiveNav();

			return true;

		}

	});


	/*----------------------------------------------
					OPEN NAV
	------------------------------------------------*/

	jQuery('.header').on("click", ".open-nav", function() {

		var hidden = jQuery('.main-nav').css('display');

		var borderWidthHeight = parseInt(jQuery("#page-content").css("padding-top"));

		var fullheight = jQuery(window).height()-(borderWidthHeight*2);



		if (hidden == 'block') {

			hideResponsiveNav();

		} else {

			jQuery('.open-nav span.hamburger').toggleClass('is-clicked');

			jQuery('.main-nav').slideDown(700,'easeInOutExpo',function(){

				jQuery('.main-nav').addClass("nav-visible");

				var menuHeight = jQuery(".nav-inner").height();

				jQuery(".nav-inner").css({'max-height':menuHeight+'px'});

				if(menuHeight < fullheight) {

					var marginTop = parseInt((fullheight-menuHeight)/2);

				} else {

					var marginTop = 0;

				}

				jQuery(".nav-inner").animate({"marginTop": marginTop+'px', opacity: 1}, 700, 'easeInOutQuart');

				jQuery('.close-menu a').click(function(){
					hideResponsiveNav();
					jQuery('.open-nav span.hamburger').removeClass('is-clicked');
				});
			});

		}

		return false;

	});


	/*----------------------------------------------
		    RESPONSIVE JPLAYER
	------------------------------------------------*/

	if(jQuery().jPlayer && jQuery('.jp-interface').length){

		jQuery('.jp-interface').each(function(){

			var playerwidth = jQuery(this).width();

			var newwidth = playerwidth - 175;

			jQuery(this).find('.jp-progress-container').css({ width: newwidth+'px' });

		});

	}


	//smoothShow();



});



jQuery( window ).scroll(function() {

	//smoothShow();

});


})(jQuery)



/*-----------------------------------------------------------------------------------
 	Page Loading effect js
-----------------------------------------------------------------------------------*/

;(function(){

  function id(v){ return document.getElementById(v); }

  function loadbar() {

    var ovrl = id("overlay"),

        prog = id("progress"),

        stat = id("progstat"),

        simg = id("progimg"),

        img = document.images,

        c = 0,

        tot = img.length;

    if(tot == 0) return doneLoading();



    function imgLoaded(){

      c += 1;

      var perc = ((100/tot*c) << 0) +"%";
      if( prog ) {
      prog.style.width = perc;
  	}

     // stat.innerHTML = "One moment... "+ perc;
     if (stat) {
      stat.innerHTML = "";
  	}

      if(c===tot) return doneLoading();

    }

    function doneLoading(){
    	if (ovrl) {
      ovrl.style.opacity = 0;

      setTimeout(function(){

        ovrl.style.display = "none";

      }, 1200);
  	}

    }

    for(var i=0; i<tot; i++) {

      var tImg     = new Image();

      tImg.onload  = imgLoaded;

      tImg.onerror = imgLoaded;

      tImg.src     = img[i].src;

    }

  }

  document.addEventListener('DOMContentLoaded', loadbar, false);

}());

//Scripting for inner page fades//
