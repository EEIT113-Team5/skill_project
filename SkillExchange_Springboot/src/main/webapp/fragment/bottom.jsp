<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<style>

.fixed-bottom {
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
<script src="pluginstemp/jquery/jquery.min.js"></script>


<footer id="footer" class="bg-one">
	<div class="footer-bottom">
		<h5>Copyright 2020. All rights reserved.</h5>
		<h6>
			Design and Developed by <a href="">SkillExchange team</a>
		</h6>
	</div>
</footer>


<script>
	$(function() {
		function footerPosition() {
			$("#footer").removeClass("fixed-bottom");
			var contentHeight = document.body.scrollHeight;
			var winHeight = window.innerHeight;//可視視窗高度，不包括瀏覽器頂部工具欄
			console.log(contentHeight);
			console.log(winHeight);
			
			if (!(contentHeight > winHeight)) {
				//當網頁正文高度小於可視視窗高度時，為footer新增類fixed-bottom
				$("#footer").addClass("fixed-bottom");
			}
		}
		footerPosition();
		$(window).resize(footerPosition);
	});
</script>
