// Where will we use the cufon for custom font usage
	Cufon.replace('.phone, legend, .dbcontent-title ', {hover: true, fontFamily: 'Pill Gothic 600mg Lt'});
	Cufon.replace('#content h1, .phone strong, .entry h3, .entry h4, .entry h5, .entry h6, #departure-menu, legend strong, .NFButton, .dbtitle, .dbcontent-title strong ', {hover: true, fontFamily: 'Pill Gothic 600mg Rg'});
	Cufon.replace('#departure-menu, .departure-description-text ', {textShadow: '#102223 0 1px', hover: true, fontFamily: 'Pill Gothic 600mg Rg'});



//DropDown LoginBox Plugin
	$(document).ready(function() {
		$(".menu-login-link").click(function(e) {
			e.preventDefault();
			$("ul#loginbox").slideDown('slow');
			$(".menu-login-link").toggleClass("menu-open");
		});

		$("ul#loginbox").mouseup(function() {
			return false
		});
		$(document).mouseup(function(e) {
			if($(e.target).parent("a.menu-login-link").length==0) {
				$(".menu-login-link").removeClass("menu-open");
				$("ul#loginbox").slideUp('slow');
			}
		});            
	});


	
//Select Every 3th "entry-box" and Remove It's Margin-Right
	$(document).ready(function() {
		$('.entry-box:nth-child(3n)').css({'margin-right' : '0px'});
		$('.home-entry-box:nth-child(3n)').css({'margin-right' : '0px'});
	});


// Input Default Value
	$(document).ready(function() {
		$('.NFText').click(
			function() {
				if (this.value == this.defaultValue) {
				this.value = '';
				}
			}
		);
		$('.NFText').blur(
			function() {
				if (this.value == '') {
				this.value = this.defaultValue;
				}
			}
		);
	});


// Tab System
	// When the document loads do everything inside here ...
	$(document).ready(function(){
		// When a link is clicked
		$("#departure-menu a").click(function () {
			// switch all tabs off
			$(".active").removeClass("active");
			// switch this tab on
			$(this).addClass("active");
			// slide all elements with the class 'content' up
			$(".departure-content").hide();
			// Now figure out what the 'title' attribute value is and find the element with that id.  Then slide that down.
			var content_show = $(this).attr("title");
			$("#"+content_show).show();
		});
	});