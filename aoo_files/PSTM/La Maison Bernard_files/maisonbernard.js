// JavaScript Document

(function ($, root, undefined) {
	
	
	var url = window.location.href;   
	var split_array = url.split ('/');
	var i = 0;
	var l = split_array.length;
	var str;
	var result;
	while (i<l){
		str = split_array[i];
		if (str.length == 2) result = str;
		i++;	
	}	
		
	var LANG = result;	
	var IS_MOBILE = (/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera);
	
	
		//*************************************************************************
 	// Highlight the Item selected in the menu
	function navHighlightItem () {		
		var url = window.location.href;   
		var split_array = url.split ('/');
		var target = $('.menu a[href*="'+split_array[split_array.length-2]+'"]');
									
		if (split_array.length > 6) {
			if ($(target.length) <= 1) {
				$(target).addClass('active');
			}
		}else {
			var item_selected = $('.menu a.active');
			if (typeof (item_selected) != 'undefined') {
				item_selected.removeClass('.active');
			}
		}	
	}
		
	//*************************************************************************
	function initVisitSlideshow () {
		var visit_wrapper = $( '#visit_image' );
		if (!!visit_wrapper.offset ()){ // vérification de l'existence du div
			visit_wrapper.cycle(); // init le slideshow			
			addKeyboardSupport ($('#visit_image'))
		}
	}
		
	//*************************************************************************	
	function resizeVideo (){
		// init le resize des vidéos (Viméo, Youtube)
		$("body").fitVids({'maxAspectRatio': 0.5625});
	}
		
	//*************************************************************************
	function initBtns(){
	
		// btns mailto
		$( ".email_infos" ).click(function(e) {
			e.preventDefault();
			document.location.href = "mailto:infos" + "@" + "fonds-maisonbernard" + ".com";
		});
				
		$( ".email_visite" ).click(function(e) {
			e.preventDefault();
			if ($("#form").length) {
				$("#form").fadeIn();	
				$("#content").css("z-index", 998);
			}
		});
		
		$( "#form .shadow_box_close" ).click(function(e) {
			e.preventDefault();
			if ($("#form").length) {
				$("#form").fadeOut();	
				$("#content").css("z-index", 1005);
				$("#msg").html("");
			}
		});
				
		$( ".email_residence" ).click(function(e) {
			e.preventDefault();
			document.location.href = "mailto:residence" + "@" + "fonds-maisonbernard" + ".com";
		});
		
		$("#btn-credits").click(function(e) {
			e.preventDefault();
			toggleFooterContent ($("#credits"), 1000, 500);
		});
	
		$("#btn-mentions").click(function(e) {
			e.preventDefault();
			toggleFooterContent ($("#mentions"), 1000, 500);
		});
		
		$("#btn-press").click(function(e) {
			e.preventDefault();
			toggleFooterContent ($("#press"), 1000, 500);
		});
		
		$("#btn-contacts").click(function(e) {
			e.preventDefault();
			toggleFooterContent ($("#contacts"), 1000, 500);
		});
		
		$(".btn-close").click(function(e) {
			e.preventDefault();
			toggleFooterContent ($(this).parent(), 1000, 500);
		});
		
		$(".nav-button").click(function(){
			if($(".nav").is(':hidden')) {
				$(".nav").slideDown (200, "easeOutCubic");
			} else {
				$(".nav").slideUp (200, "easeOutCubic");
			}
		});
	}
	
	//*************************************************************************
	var contentFooter, buttonFooterSelected;
	function toggleFooterContent ($content, speedOn, speedOff) {
				
		if (typeof (contentFooter) != 'undefined') {
			buttonFooterSelected = $(this);
			buttonFooterSelected.removeClass("active");
			contentFooter.slideToggle (speedOff, "easeOutCubic");
			
			if (contentFooter.attr ("id") == $content.attr ("id")) {
				contentFooter = $();
				return;
			}
		}
		
		if($content.css("display") == 'none') {
			$content.slideToggle (speedOn, "easeInOutExpo");
			var test = parseInt($content.css('padding-top'), 10);
			$("html, body").animate({ scrollTop: $content.offset().top + 100}, {duration:speedOn, easing:'easeInOutExpo'});
		}else{
			$content.slideToggle (speedOff, "easeOutCubic");
		}
		
		contentFooter = $content;
	}

	//*************************************************************************
	function initActorsMenu (){
		var menu_actors = $('#menu_actors');
		var actors = $('#actors');
				
		  if (!!menu_actors.offset()) { // make sure "#menu_actors" element exists

				last_id = "";
				// All list items
				menuItems = $('#menu_actors ul li').find("a");
				// Anchors corresponding to menu items
				scrollItems = menuItems.map(function(){
				  var item = $("#"+$(this).attr("id") + "_content");
				  if (item) { return item; }
				});
								
				$(window).scroll(function(){ // scroll event
					var stickyTop = $("#content").position().top;
				  	  var windowTop = $(window).scrollTop(); // returns number 
					  if (stickyTop < windowTop){
						menu_actors.css({ position: 'fixed', top: 0 });
					  }else {
						menu_actors.css('position','absolute');
					  }
					  
   					  var fromTop = $(this).scrollTop() + screen.height * .5;
					  
					  // Get id of current scroll item
					  var cur = scrollItems.map(function(){
						if ($(this).offset().top < fromTop) {
							return this;
						}
					  });
					  					  					  
					  // Get the id of the current element
					  cur = cur[cur.length-1];
					  var id = cur && cur.length ? cur[0].id : "";
					  					  
					  var btn_id = id.split ("_content")[0];
					  
					  // Set/remove active class
					  menuItems.removeClass("menu_actors_active");
					  					  
					  if (btn_id.length) {
						  $("#"+btn_id).addClass ("menu_actors_active");
					  }
				});
				
				var menu_post = $('#menu_actors ul');
				var children = menu_post.children("li");
				var child;
				
				for (var i = 0; i < children.length; i++){
					child = $(children[i]).children("a");
					child.click(function(e) {
						e.preventDefault ();
						navigateTo ($(this).attr("id"));
						$(this).addClass("active");
					});
				}
				
  		}
		  	
	}
	
	//*************************************************************************
	function navigateTo (dest_name){
		var $dest = $("#"+dest_name+"_content");
		console.log ("#"+dest_name+"_content");
		$("html, body").animate({ scrollTop: $dest.offset().top}, {duration:1000, easing:'easeInOutExpo'});
	}
		
	//*************************************************************************
	function initSlideshow () {
		
		var shadow_box = $( '.btn_shadow_box' );
		
		shadow_box.click(function(e) {
						
			e.preventDefault ();
				
			var className = $(this).attr ("class");
			var splitName = className.split (" ")[1];
										
			var slideshow = $( ".shadow_box."+splitName);
												
			slideshow.css ("width", "100%");
			slideshow.css ("height", "100%");
			slideshow.css ("top", "0");
			slideshow.cycle ();	
			slideshow.cycle ("play");
			$("#content").css("z-index", 1005);
			
			slideshow.fadeIn();
			
			$(".shadow_box_close").click(function(e) {
				e.preventDefault ();
				slideshow.cycle ("stop");
				slideshow.cycle('goto', 0);			
				slideshow.fadeOut();
				$("#content").css("z-index", 998);
			});
			
			$(".cycle-prev").click(function(e) {
				slideshow.cycle ("pause");	
			});
			
			$(".cycle-next").click(function(e) {
				slideshow.cycle ("pause");	
			});
			
			addKeyboardSupport (slideshow);
			
		});
	}
	
	//*************************************************************************
	function addKeyboardSupport (target){
		$('html').keydown(function (event){
			if (event.keyCode == 39) {
				event.preventDefault();
				target.cycle('next');
			}
			if (event.keyCode == 37) {
				event.preventDefault();
				target.cycle('prev');
			}
		});	
	}
	
	function initForm (){
		if ($("#datepicker").length) {			
			$.datepicker.setDefaults( $.datepicker.regional[ LANG ] );
			$( "#datepicker" ).datepicker({
					minDate: new Date(2014, 9, 1), 
					beforeShowDay: function(dt) { return(dt.getDay() == 2) ? [true, ""] : [false, ""]},
			});
		}
	}
	
	//*************************************************************************
	function init () {
		
		navHighlightItem ();	
		initVisitSlideshow ();
		initActorsMenu ();
		resizeVideo();
		initBtns();
		initSlideshow ();
		initForm ();
		//
		$(window).resize(function() {
			setResize ();
		});
		
		setResize ();
		
		$("#ban_image_image").ready (function () {
			setResize ();
		});
		
		if(!IS_MOBILE){
			skrollr.init({
				forceHeight: false
			});
		}else{
			$("#ban_image").css("position", "absolute");
			$("#ban_image").css("top", $(".header").position().top + $(".header").height ());
		}
	}
		
	//*************************************************************************
	function setResize (){
		
		var yPos;
		var content;
		if (!IS_MOBILE){
			yPos = ($("#ban_image").length) ? 50 + $("#ban_image_image").height () : $(".header").position().top + $(".header").height ();
		}else{
			yPos = $(".header").height() + $("#ban_image_image").height ();
		}
		$("#content").css("top", yPos);
		
		var w = window.innerWidth;
		if (w >960 && $(".nav").css("display") == "none"){
			$(".nav").css("display", "block");
		}else if (w <= 960 && $(".nav").css("display") == "block"){
			$(".nav").css("display", "none");
		}
		
	}
	
	//*************************************************************************	
	$(function(){ 
		init ();
	});

})(jQuery, this);
