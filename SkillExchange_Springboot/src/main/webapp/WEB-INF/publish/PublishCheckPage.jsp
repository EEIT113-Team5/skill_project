<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zt-TW">
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>確認刊登-Skill Exchange</title>
<!-- ---------------------要加的部份-------------------- -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>SkillExchange</title>

<!-- Mobile Specific Meta
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<!-- ---------------------要加的部份-------------------- -->


<link href="css/styles.css" rel="stylesheet" />
<link href="css/pubcss.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<style>


* {
	font-family: 微軟正黑體;
}
</style>

</head>

<!-- ---------------------要加的部份-------------------- -->
<body id="body">
	<jsp:include page="/fragment/top1.jsp" />

	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>確認刊登內容</h2>
				</div>
			</div>
		</div>
	</section>
	<!--     <div class="container"> -->
	<div class="container">
		<caption>
			<h3>確認刊登內容</h3>
		</caption>

		<div class="resume" style="height: 900px;">
			<div class="publishleft" style="display: inline-block;height: 900px;"">
				<img src="${picNameString}" width=250px
					 style="display: block; margin: auto; margin-top: 25px; box-shadow: 2px 2px 5px #5D9DC7">

				<h2 class="pubtitle">${publishTitle}</h2>
				<hr style="border: 0; background-color: #009bdd; height: 1px">
				<p class="imformation">
					<b>刊登地區:${publishArea}</b><br> <br> <b>希望地點:${publishPlace}</b><br>
					<br> <br> <b>刊登地點:${City}</b><br> <br> <b>刊登鄉鎮:${district}</b><br>
					<br> <b>刊登路名:${road}</b><br> <br>
				</p>
				<div class="icon"></div>
			</div>
			<div class="publishright" style="display: inline-block;height: 900px;">
				<h3 class="about" style="padding-top: 20px;padding-bottom: 20px;">
					刊登內容
					<hr>
					<p>
					<h5>
						<b>▸內容</b>
					</h5>
					<br>
					<h6 style="font-family: 微軟正黑體;font-size: 16px;">&nbsp;&nbsp;&nbsp;${publishDetail}.</h6>
					</p>
				</h3>
				<h3 class="education">
					Skill
					<hr>
					<p>
					<h5>
						<b>▸自己的技能</b>
					</h5>
					<br>
					<h6 style="font-family: 微軟正黑體;font-size: 16px;">&nbsp;&nbsp;&nbsp;${ownSkill}</h6>
					</p>
					<p>
					<h5>
						<b>▸想學的技能</b>
					</h5>
					<br>
					<h6 style="font-family: 微軟正黑體;font-size: 16px;">&nbsp;&nbsp;&nbsp;${wantSkill}</h6>
					</p>
				</h3>
				<h3 class="esperience">
					備註
					<hr>
					<p>
					<h5>
						<b>▸備註</b>
					</h5>
					<br>
					<h6 style="font-family: 微軟正黑體;font-size: 16px;">&nbsp;&nbsp;&nbsp;${publishMark}</h6>
					</p>
				</h3>
			</div>
		</div>
		<form action="publishPrev" method="POST">
			<input type='submit' value='上一步'>
		</form>

		<form action="publishCheckPage" method="POST">
			<input type='submit' value='完成'>
		</form>
	</div>

	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/datatables-demo.js"></script>
	<!-- ---------------------要加的部份-------------------- -->
	<!-- 
    Essential Scripts
    =====================================-->
	<!-- Main jQuery -->
	<script src="pluginstemp/jquery/jquery.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="pluginstemp/google-map/gmap.js"></script>

	<!-- 	<!-- Form Validation -->
	<script src="pluginstemp/form-validation/jquery.form.js"></script>
	<script src="pluginstemp/form-validation/jquery.validate.min.js"></script>

	<!-- Bootstrap4 -->
	<script src="pluginstemp/bootstrap/js/bootstrap.min.js"></script>
	<!-- Parallax -->
	<script src="pluginstemp/parallax/jquery.parallax-1.1.3.js"></script>
	<!-- lightbox -->
	<script src="pluginstemp/lightbox2/dist/js/lightbox.min.js"></script>
	<!-- Owl Carousel -->
	<script src="pluginstemp/slick/slick.min.js"></script>
	<!-- filter -->
	<script src="pluginstemp/filterizr/jquery.filterizr.min.js"></script>
	<!-- Smooth Scroll js -->
	<script src="pluginstemp/smooth-scroll/smooth-scroll.min.js"></script>

	<!-- Custom js -->
	<script src="jstemp/script.js"></script>

	<!-- ---------------------要加的部份-------------------- -->



</body>

</html>