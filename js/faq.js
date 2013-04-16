(function($) {
	$(document).ready(function(){
		$('li.faq').bind('click',function(){
			if($('li.faq .content.active').is($(this).children('.content'))) {
				var h = $('li.faq .content.active').outerHeight();
				$('li.faq .content.active').slideUp('slow').removeClass('active').parent().animate({height : '-='+h},'slow');
			} else {
				that = this;
				if($('li.faq .content.active').length != 0) {
					$('li.faq .content.active').slideUp(
						'slow', function(){
							$(that).children('.content').slideDown('slow').addClass('active');
							var tmp = $(that).children('.content').clone().attr('style','position:absolute;top:0;left:0;width:888px;padding:10px;display:block').appendTo($('body'));
							var contentHeight = tmp.outerHeight();
							tmp.remove();
							$(that).animate({height : '+='+contentHeight},'slow');
						}
					).parent().animate({height: '-='+$('li.faq .content.active').outerHeight()}, 'slow');
					$('li.faq .content.active').removeClass('active')
				} else {
					$(that).children('.content').slideDown('slow').addClass('active');
					var tmp = $(that).children('.content').clone().attr('style','position:absolute;top:0;left:0;width:888px;padding:10px;display:block').appendTo($('body'));
					var contentHeight = tmp.outerHeight();
					tmp.remove();
					$(that).animate({height : '+='+contentHeight},'slow');
				}
			}
		});
	});
})(jQuery);