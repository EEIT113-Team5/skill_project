<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="imagestemp/SkillLogo2.png" />

<!-- CSS
  ================================================== -->
<!-- Themefisher Icon font -->
<link rel="stylesheet" href="pluginstemp/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="pluginstemp/bootstrap/css/bootstrap.min.css">
<!-- Lightbox.min css -->
<link rel="stylesheet"
	href="pluginstemp/lightbox2/dist/css/lightbox.min.css">
<!-- animation css -->
<link rel="stylesheet" href="pluginstemp/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="pluginstemp/slick/slick.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="csstemp/style.css">
<title>errorpage</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="modal fade bd-example-modal-sm" id="alertModal"
		tabindex="-1" role="dialog" aria-labelledby="alertModalLabel">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="alertModalLabel">Oops,有地方出錯了!!</h4>
				</div>
				<div class="modal-body">
					<p id="alertText">即將為您跳轉到首頁</p>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {

			$("#alertModal").modal('show');

		});
		setTimeout(returnpage, 1500);
		function returnpage() {
			window.location.href = "${pageContext.request.contextPath}/";
// 			${header['referer']}
		}
	</script>

</body>

</html>