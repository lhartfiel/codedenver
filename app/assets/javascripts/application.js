// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$('#posts_link').on('click', function(){
	var buttonValue = $(this).attr('id')
})

$(document).ready(function(){
	// function homeHeight(){
	// 	$(window).on('load resize', function(){
	// 		var $headHeight = $('nav').outerHeight(),
	// 			$footHeight = $('footer').outerHeight(),
	// 			$docHeight = $(window).height(),
	// 			$bodyHeight = $docHeight - ($headHeight + $footHeight);
	// 		$('.home-body').css('height', $bodyHeight);
	// 	})
	// }
	// homeHeight();

	function formClick(){
		$('input').on('click', function(){
			$(this).parent().find('label').toggleClass('active');
		})
	}
	formClick();

	function dropdownMenu(){
		$(document).on('click', '.dropdown-menu--title', function(e){
			e.preventDefault();
			$(this).next('.dropdown-menu').toggleClass('active');
		})
	}
	dropdownMenu();

	function MoreTags(){
		$('.more-tag').on('click', function(e){
			e.preventDefault();
			$(this).prev().append($('.partial').html());
		});
	}
	MoreTags();

	// $('.remove-tag').on('click', function(){
	// 	e.preventDefault();
	// 	console.log($(this));
	// 	$(this).prev('.post_tags').remove();
	// 	$(this).remove();
	// });
	
})
