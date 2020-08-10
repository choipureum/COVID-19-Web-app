
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function() {

	var floatPosition = parseInt($("#floatMenu").css('top'));

	$(window).scroll(function() {
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		 $("#floatMenu").css('top', newPosition);

	}).scroll();

});

// Scroll to top button appear
$(document).scroll(function() {
  var scrollDistance = $(this).scrollTop();
  if (scrollDistance > 100) {
    $('.scroll-to-top').fadeIn();
  } else {
    $('.scroll-to-top').fadeOut();
  }
});
</script>

<div id="floatMenu">
<div id="floatCenter">

</div>
</div>

