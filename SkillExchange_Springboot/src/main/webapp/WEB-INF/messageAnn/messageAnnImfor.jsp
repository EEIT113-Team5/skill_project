<%@page import="messageAnn.model.messageAnnBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page language="java" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zt-TW">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>刊登資訊-Skill Exchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/pubcss.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>

<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Sierra</title>

<!-- Icon css link -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Rev slider css -->
<link href="vendors/revolution/css/settings.css" rel="stylesheet">
<link href="vendors/revolution/css/layers.css" rel="stylesheet">
<link href="vendors/revolution/css/navigation.css" rel="stylesheet">

<!-- Extra plugin css -->
<link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
<link href="vendors/magnify-popup/magnific-popup.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
#DIV1 {
	flex: 1;
	/* 	width: 600px; */
	/* 	line-height: 50px; */
	/* 	padding: 20px; */
	/* 	border: 2px blue solid; */
	/* 	margin-right: 10px; */
	/* 	float: left; */
}

.banner_inner_text {
	padding-top: 30px;
	position: relative;
	padding-bottom: 50px;
}

#DIV2 {
	flex: 1;
	/* 	width: 600px; */
	/* 	height:auto; */
	/* 	line-height: 50px; */
	/* 	padding: 20px; */
	/* 	border: 2px green solid; */
	/* 	float: left; */
}

.card-header1 {
	/*     padding: .75rem 1.25rem; */
	/*     margin-bottom: 0; */
	background-color: rgba(0, 0, 0, .03);
	border-bottom: 1px solid rgba(0, 0, 0, .125);
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
					<h2>公告資訊</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="container"
		style="display: flex; margin-top: 50px; margin-bottom: 50px;">

		<div id="DIV1" class="123">
			<!--================Banner Area =================-->
			<section class="banner_area">
				<div class="container">
					<div class="banner_inner_text">
						<h3 style="font-size: 40px">${msgtitle}</h3>
						<p>公告內容:${msgdetail}</p>
					</div>
				</div>
			</section>
		</div>
		<div id="DIV2">
			<div id="accordion">
				<div class="card" style="border: 1px solid transparent">
					<div>
						<h3>歷史公告:</h3>
					</div>
					<c:forEach items="${msgAnnList}" var="msgAl" varStatus="msg">
						<div class="card-header1" style="font-size: 25px">
							<a class="card-link" data-toggle="collapse"
								href="#collapse${msg.index}" id="messtitle">
								${msgAl.messtitle}(${msgAl.anntime})</a>
						</div>
						<div id="collapse${msg.index}" class="panel-collapse collapse"
							data-parent="#accordion">
							<div class="card-body" id="messmessage">${msgAl.message}</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 			<ul class="pagination"> -->
			<%-- 				<c:forEach items="${msgAnnList}" var="msgAl" varStatus="msg"> --%>
			<%-- 					<c:if test="${0 == (msg.index+1)%5 }"> --%>
			<%-- 						<li><a href="#" onclick="msgList(${msg.index})">${(msg.index+1)/5}</a></li> --%>
			<%-- 					</c:if> --%>
			<%-- 				</c:forEach> --%>
			<!-- 			</ul> -->
		</div>
	</div>

	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->
	<!-- 	<script src="https://code.jquery.com/jquery-3.4.1.min.js" -->
	<!-- 		crossorigin="anonymous"></script> -->
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

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- 	<script src="js/jquery-3.2.1.min.js"></script> -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Rev slider js -->
	<script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<!-- Extra plugin css -->
	<script src="vendors/counterup/jquery.waypoints.min.js"></script>
	<script src="vendors/counterup/jquery.counterup.min.js"></script>
	<script src="vendors/counterup/apear.js"></script>
	<script src="vendors/counterup/countto.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
	<script src="js/smoothscroll.js"></script>

	<script src="js/theme.js"></script>
	<!-- ---------------------要加的部份-------------------- -->
	<!-- 
    Essential Scripts
    =====================================-->
	<!-- Main jQuery -->
	<!-- 	<script src="pluginstemp/jquery/jquery.min.js"></script> -->
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
	<script type="text/javascript">
		<c:forEach items="${msgAnnList}" var="msgAl" varStatus="msg">
		$(function() {
			$('#collapse${msg.index}').collapse('hide')
		})
		</c:forEach>
	</script>

	<!-- ---------------------要加的部份-------------------- -->

</body>

</html>