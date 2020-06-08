<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>我的刊登-Skill Exchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/mypublishcard.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>

<style>
fieldset {
	width: 800px;
	border: 3px solid chocolate;
	border-radius: 30px;
	margin: 20px;
}

legend {
	font-size: 30px;
	font-family: fantasy;
	color: lightsteelblue;
}

/* body { */
/* 	margin: 100px; */
/* } */
.st1 {
	width: 450px;
	border-bottom: 1px solid cornflowerblue;
	margin: 10px;
	padding-bottom: 10px;
}

.st2 {
	width: 450px;
	text-align: center;
}

.l1 {
	width: 100px;
	float: left;
	text-align: right;
}
/* 讓意見表單不可以被拉大小 */
textarea {
	resize: none;
}

tr, td {
	border-bottom: 2px solid black;
	padding-top: 5px;
	width: 300px;
}

.d1 {
	text-align: right;
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
					<h2>我的刊登</h2>
				</div>
			</div>
		</div>
	</section>

	<div class="container">

		<div class="row">
			<!-- 						<th>刊登編號</th><th>刊登標題</th><th>刊登內容</th><th>刊登地區</th><th></th><th></th>			 -->
			<c:forEach var="my" items="${mypublish}" varStatus="mylist">
				<c:set var="myindex" scope="session" value="${mylist.index}" />
				<c:forEach var="dl" items="${dayList}" varStatus="dlist">
					<c:set var="dlindex" scope="session" value="${dlist.index}" />

					<c:if test="${dlindex == myindex}">

						<div class="col-sm-3"
							style="background-color: white; height: 580px; margin-top: 20px; margin-bottom: 20px">
							<div class="card" style="height: 585px; border: 1px solid black;">

								<img src="${my.publishPic}" class="card-img-top" alt="..."
									style="height: 180px">
								<div class="" style="height: 140px">
									<h5 class="card-title" style="margin-top: 10px">編號:${my.publishNo},${my.myTitle}</h5>
									<p class="card-text">${my.myDetail}.</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item"><a
										href='myPublishImfor?publishNo=${my.publishNo}'>刊登資料</a></li>
									<li class="list-group-item"><a
										href='myPublishUpdate?publishNo=${my.publishNo}'>修改</a></li>
									<li class="list-group-item"><a
										href='myPublishStatus?publishNo=${my.publishNo}'>下架</a></li>
									<c:choose>
										<c:when test="${dl < 0}">
											<li class="list-group-item" id="" style="height: 110px">刊登時間:${my.updateTime}<br>刊登時間已過期!!
											</li>
										</c:when>
										<c:otherwise>
											<li class="list-group-item" style="height: 110px">刊登時間:${my.updateTime}<br>剩餘天數:
												<h5 id="pad${myindex}"></h5></li>
										</c:otherwise>
									</c:choose>
									<span style="DISPLAY: none"><input type="button"
										value="按下" id="but${myindex}" onclick="timeDate(${myindex})" /></span>
									<input type="button" value=""
										onclick="location.href='myPublishAutoDel?publishNo=${my.publishNo}'"
										id="refresh${myindex}" style="VISIBILITY: hidden">
									<!-- 									<form class="form" -->
									<%-- 										action="myPublishStatus?publishNo=${my.publishNo}" --%>
									<!-- 										method="GET" enctype="multipart/form-data"> -->
									<!-- 										<input type="submit" value="" id=""> -->
									<!-- 									</form> -->
								</ul>
							</div>
						</div>

					</c:if>

				</c:forEach>

			</c:forEach>
		</div>
	</div>
	<!-- 					<form action="/skillExchange/PublishPage.jsp" method="POST"> -->
	<!-- 						<input type='submit' value='上一步' >  -->
	<!-- 					</form> -->
	<!-- 					<form action="http://localhost:8080/skillExchange/publishCheckPage.Controller/publishCheckPageServlet" method="POST"> -->
	<!-- 						<input type='submit' value='完成' >  -->
	<!-- 					</form> -->


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
	<script type="text/javascript">

	
	$(document).ready(function () {

		var mypubString = JSON.parse('${mypubString}');
		var count = 0;

		for(var js in mypubString){
			count++
		}
				
		for (var i = 0; i < count; i++) {
			$('#but'+i).get(0).click();			
		}

		
	});
		
	function timeDate(num) {			

		
		setTimeout("pad+num.click()", 2000);
		
// 			console.log(num);
			
			var timeStrings = JSON.parse('${timeStringsGson}');
// 			console.log(timeStrings[num]);

			<!-- 分割成日期與時間 -->
			var timeArray = new Array();
			timeArray = timeStrings[num].split(" ");
// 			console.log(timeArray);

			<!-- 分割成年月日-->
			var timeArray2 = timeArray[0].split("-");
// 			console.log(timeArray2);

			var timeArray3 = timeArray[1].split(":");


			var year = parseInt(timeArray2[0]);
			var month = parseInt(timeArray2[1]);
			var date = parseInt(timeArray2[2]);
			var hour = parseInt(timeArray3[0]);
			var min = parseInt(timeArray3[1]);
			var sec = parseInt(timeArray3[2]);

			var startDate = new Date();
			var endDate = new Date(year,month,date,hour,min,sec);
			var spantime = (endDate - startDate)/1000;

			spantime--;
			var d = Math.floor(spantime / (24 * 3600));
		    var h = Math.floor((spantime % (24*3600))/3600);
		    var m = Math.floor((spantime % 3600)/(60));
		    var s = Math.floor(spantime%60);
		    str = d + "天 " + h + "時 " + m + "分 " + s + "秒 ";

			if (d == 0 && h == 0 && m == 0 && s == 0) {																			
				$('#refresh'+num).click();	
			}
			
			
// 			console.log(str);
		    
		    document.getElementById("pad"+num).innerHTML = str;

		    setTimeout(function () {
		    	timeDate(num);
		    }, 1000)
		}
	
	</script>
</body>

</html>