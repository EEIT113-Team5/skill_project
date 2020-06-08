
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="zt-TW">

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
<title>修改會員-Skill Exchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous">
	
</script>

<!-- <script> 
	var sex = request.getElementsByName('gender');
 </script> -->

<!-- 卉加 -->

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- 卉加 -->

<style>
.red-font {
	color: red;
 	margin-left: 5px; 
}
</style>
</head>

<!-- ---------------------要加的部份-------------------- -->
<body id="body" background="./images/pattern2.jpg">
	<jsp:include page="/fragment/top1.jsp" />
	<jsp:include page="/fragment/modal.jsp" />
	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>修改會員</h2>
				</div>
			</div>
		</div>
	</section>
<!-- 	卉加 -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
        <div id="login-overlay" class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <h4 class="modal-title" id="myModalLabel"></h4>
              </div>
              
              <div class="modal-body">
              <form:form method="POST" id="registerForm" action="modifyMember" modelAttribute="memberBean" enctype='multipart/form-data'>
              <form:hidden path='memberRegNo'/>
              <div class="form-group">
              
              <div class="col-xs-6">
              	<label for="name">姓名</label>
              	<div class="input-group">
              		<form:input class="form-control" path="memberName" id="name" name="memberName"></form:input>
              	</div>
	        	<br/>
              	<label for="nicname">暱稱</label>
              	<div class="input-group">
	              	<form:input class="form-control" path="memberNic" id="nicname" name="memberNic"></form:input>
                </div>
              </div>

              <div class="col-xs-6">
              	<label for="memberAcc">帳號</label>
              	<div class="input-group">
              		<form:input class="form-control" path="memberAcc" id="memberAcc" name="memberAcc" readonly="true"></form:input>
              	</div>
	        	<br/>
              	<label for="memberMail">信箱</label>
              	<div class="input-group">
	              	<form:input class="form-control" path="memberMail" id="memberMail" name="memberMail" readonly="true"></form:input>
                </div>
              
              </div>
              <br>
              <div class="col-xs-6">
              </br>
              	<label for="memberPhone">電話</label>
              	<div class="input-group">
              		<form:input class="form-control" path="memberPhone" id="memberPhone" name="memberPhone"></form:input>
              	</div>
	        	<br/>
              </div>
              <br>             
              <div class="col-xs-6">
	        	<br/>
              	<label for="memberAddr">地址</label>
              	<div class="input-group">
	              	<form:input class="form-control" path="memberAddr" id="memberAddr" name="memberAddr"></form:input>
                </div>
                </br>
              </div>	
              </div>
              <div class="form-group">
	              <div style="text-align: center;">
              		<input type="submit" value="送出" class="btn btn-success">
              		<input type="button" value="取消" class="btn btn-danger" onclick="goToIndex()">
	              </div>	
              </div>
              </form:form>
              </div><!---modal-body--->
              
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
	<script src="../js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<!--<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var imageTagID = input.getAttribute("targetID");
				var reader = new FileReader();
				reader.onload = function(e) {
					var img = document.getElementById(imageTagID);
					img.setAttribute("src", e.target.result)
				}
				reader.readAsDataURL(input.files[0]);
				document.getElementById("prePic").style.display = "block";
			}
		}

		function goToIndex() {
			window.location.href = "${pageContext.request.contextPath}/";
		}
	</script> -->
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

	<!-- Form Validation -->
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
<!--一鍵加入會員 這裡 -->
<!--	<script>
		function oneKey() {
			$("#name").val("米老鼠");
			$("#nicname").val("小米");
			$("#acc").val("happy");
			$("#birthday").val("1993/07/27");
			$("#pwd").val("123456789");
			$("#checkpwd").val("123456789");
			$("#phone").val("0912345678");
			$("#mail").val("eeit11321@gmail.com");
			$("#addr").val("杉樹區北森花路6巷5號");

		}
	</script>-->
<!--一鍵加入會員 這裡 -->
	
</body>

</html>