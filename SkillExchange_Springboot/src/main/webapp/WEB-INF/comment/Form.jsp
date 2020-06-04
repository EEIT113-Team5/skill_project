<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
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


<title>SkillExchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<style>
</style>

</head>
<body id="body">
	<jsp:include page="/fragment/top1.jsp" />
	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>交換心得表單</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="container" style="margin-top: 70px;margin-bottom:70px;" >
		<div
			class="container border border-info mt-3 p-3 rounded-lg w-75 bg-light shadow-sm">
			<h3>意見回饋表</h3>
			<p>為了提升網站的服務品質，麻煩填寫下列表單 謝謝!</p>
			<p>(1:非常不好, 10:非常好)</p>
			<form:form action="InsertComment" modelAttribute="feedbackform"
				method="POST" >
				<!-- radio button-->
				<form:hidden path="commentorNo" value="${memberBean.memberRegNo}" />
				<form:hidden path="memberName" value="${memberBean.memberName}" />
				<%-- 				<form:hidden path="memCommented" value="${feedbackform.memCommented}" /> --%>
				<div>
					<div>網站使用流暢度</div>
					<c:forEach var="n" begin="1" end="10" step="1">
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" id="speed${n}"
								value="${n}" path="webFluency" />
							<form:label path="webFluency" class="form-check-label"
								for="speed${n}">${n}</form:label>
						</div>
					</c:forEach>
				</div>
				<div>
					<div>推薦給他人意願</div>
					<c:forEach var="n" begin="1" end="10" step="1">
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" id="rec${n}"
								value="${n}" path="webRecommend" />
							<form:label class="form-check-label" for="rec${n}"
								path="webRecommend">${n}</form:label>
						</div>
					</c:forEach>
				</div>
				<div>
					<div>交換滿意度</div>
					<c:forEach var="n" begin="1" end="10" step="1">
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" id="ex${n}"
								value="${n}" path="webSatis" />
							<form:label class="form-check-label" for="ex${n}" path="webSatis">${n}</form:label>
						</div>
					</c:forEach>
				</div>
				<div>
					<div>對網站總體評分</div>
					<c:forEach var="n" begin="1" end="10" step="1">
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" id="rating${n}"
								value="${n}" path="webGrading" />
							<form:label class="form-check-label" for="rating${n}"
								path="webGrading">${n}</form:label>
						</div>
					</c:forEach>
				</div>
				<div>
					<div>對網站的建議(100字以內)</div>
					<form:textarea path="webSugg" cols="40" rows="5" id="susg"
						style="resize: none" />

				</div>
				<hr>

				<div>
					<div>給交換對方的評價</div>
					<c:forEach var="n" begin="1" end="10" step="1">
						<div class="form-check form-check-inline">
							<form:radiobutton class="form-check-input" path="exGrading"
								id="rat${n}" value="${n}" />
							<form:label class="form-check-label" for="rat${n}"
								path="exGrading">${n}</form:label>
						</div>
					</c:forEach>
					<div>
						<div>交換心得分享(100字以內)</div>
						<form:textarea cols="40" path="msgDetail" rows="5" id="susg1"
							style="resize: none" />

					</div>
				</div>
				<input type="submit" name="submit" class="btn btn-outline-success" id="submit" value="submit" />
			</form:form>
		</div>

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
	<script>
		document.addEventListener('keypress', autofill);
		function autofill() {
			   $("input[id*='speed10']").prop("checked", true);
			   $("input[id*='rec10']").prop("checked", true);
			   $("input[id*='ex10']").prop("checked", true);
			   $("input[id*='rating10']").prop("checked", true);
			   $("#susg").val("我覺得可以");
			   $("input[id*='rat10']").prop("checked", true);
			   $("#susg1").val("和對方相談甚歡，感謝這個技能交換平台讓我能夠有一個管道進行技能交換，以後還會再繼續用他!");
		}
	</script>
</body>
</html>