	$(function(){
	$("#rgshow a").click(function(){
		var link = $(this).attr('href');
		$('#view').attr('src',link);
		var href = window.location.href;
		window.location.href = href.substr(0,href.indexOf('#'))+'#'+link;
		return false;
		})
	});