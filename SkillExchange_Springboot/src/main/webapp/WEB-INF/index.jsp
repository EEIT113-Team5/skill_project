<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- ---------------------上面要加的部份-------------------- -->
<!DOCTYPE html>

<html>
<!--<![endif]-->
<head>

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

<title>首頁-Skill Exchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>

<style>
<
style>.wrapper {
	position: relative;
	width: 100vw;
	height: 100vh;
	overflow: hidden;
	opacity: 0.6;
	z-index: auto;
	/* 把超出去的照片隱藏起來 */
}

.wrap-level1 {
	/* 	border: 1px black solid; */
	position: relative;
	width: 80%;
	margin: 140px auto;
}

.title {
	font-family: 微軟正黑體;
	border: none !important;
	font-weight: bold;
	padding: 0;
}

.wrap-level2 {
	margin-top: 15px;
	border-radius: 10px;
	background-color: #FFFFFF;
	padding: 0;
	/* 	border: 1px solid #E0E0E0; */
}

.wrap-level3 {
	width: 30%;
	border: 2px solid transparent;
	/* 	border-left: 1px solid #E0E0E0; */
	border-radius: 10px;
	transition: 0.5s;
	margin: 0;
	padding: 0;
}

.wrap-level3:hover {
	width: 30%;
	border: 2px solid #D0D0D0;
	/* 	border-left: 1px solid #E0E0E0; */
	border-radius: 10px;
	transition: 0.5s;
	margin: 0;
	padding: 0;
}

.wrap-level3:active {
	width: 30%;
	border: 2px solid #D0D0D0;
	background-color: #aaa;
	/* 	border-left: 1px solid #E0E0E0; */
	/* 	border-radius: 10px; */
	/* 	transition: 0.5s; */
	/* 	margin: 0; */
	/* 	padding: 0; */
}

.wrap-level4 {
	margin: 8px;
	/* 	padding: 10px 15px; */
}

.wrap-level5 {
	height: 25px;
	margin: 15px;
}

.wrap-level6 {
	width: 9.75%;
}

.wrap-level7 {
	width: 80%;
	margin-top: 12px;
	margin-left: 8px;
	font-size: 0.9em;
}

.div-bar {
	align-self: center !important;
	border-right: 0.8px solid #E0E0E0 !important;
	height: 35px;
}

.searchbar-bgcolor {
	background-color: #FFFFFF;
}

.searchbar-text {
	width: 350px;
	height: 40px;
}

.text-truncate {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.search-btn {
	display: block;
	cursor: pointer;
	width: 100%;
	text-align: center;
	line-height: 25px;
}

.last-btn {
	width: 75%;
	height: 80%;
	margin: 6px auto;
	/*  	border: 1px solid gray; */
}

.list-level1 {
	margin: 0;
	padding: 0;
	height: 250px;
	width: 100%;
	/* 	border: 1px solid black; */
}

.list-level2 {
	display: block;
	width: 50%;
	height: 100%;
	/* 	border: 1px solid gray; */
}

.div-list1 {
	width: 100%;
	height: 100%;
	overflow: auto;
	/* 	border: 1px solid red; */
}

.div-list2 {
	width: 100%;
	height: 80%;
	overflow: auto;
	/* 	border: 1px solid red; */
}

.li-bg1 {
	width: 100%;
	height: 20%;
	background-color: #F0F0F0;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.li-bg1:hover {
	width: 100%;
	height: 20%;
	background-color: #FFB5B5;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.li-bg2 {
	width: 100%;
	height: 25%;
	background-color: #F0F0F0;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

div.div-list2 li.li-bg2:hover {
	width: 100%;
	height: 25%;
	background-color: #FFB5B5;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.li-div {
	display: inline-block;
}

.li-div1 {
	width: 80%;
	padding: 12.5px;
}

.li-div2 {
	width: 20%;
	text-align: center;
}

.li-div3 {
	width: 35%;
	text-align: center;
}

.li-div4 {
	width: 65%;
	padding-top: 12px;
	padding-bottom: 12px;
}

.ctl-areaN, .ctl-areaC, .ctl-areaS, .ctl-areaE {
	height: 100%;
	display: none;
}

.k1 {
	display: inline-block;
}

.k2 {
	padding-left: 15px;
	padding-right: 15px;
}

.div-bar2 {
	align-self: center !important;
	border-right: 1px solid #8E8E8E !important;
	height: 12px;
}
</style>
</head>

<body id="body">
	<jsp:include page="/fragment/top.jsp" />
	<jsp:include page="/fragment/modal.jsp" />
	<section class="hero-area">
		<!-- 			輪播 			-->
		<div id="carouselExampleSlidesOnly" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active wrapper">
					<img class="d-block w-100" src="images/home1.jpg" alt="First slide">
				</div>
				<div class="carousel-item wrapper">
					<img class="d-block w-100" src="images/home3.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item wrapper">
					<img class="d-block w-100" src="images/home4.jpg" alt="Third slide">
				</div>
				<div class="wrap-level1">
					<h2 class="title input-group">想學什麼技能嗎?</h2>
					<div class="input-group wrap-level2">
						<div class="input-group-prepend wrap-level3">
							<input type="text"
								class="form-control wrap-level4 searchbar-bgcolor searchbar-text text-truncate"
								name="keyword" placeholder="關鍵字...">
						</div>
						<div class="div-bar"></div>
						<!-- Area Button trigger modal -->
						<button id="iarea"
							class="input-group-append wrap-level3 searchbar-bgcolor"
							data-toggle="modal" data-target="#exampleModalCenter">
							<div class="wrap-level5 search-btn">地區</div>
						</button>
						<!-- Area Modal -->
						<div class="modal fade" id="exampleModalCenter" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h6 class="modal-title title" id="exampleModalLongTitle">地區選單</h6>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body input-group list-level1">
										<div id="areaList" class="input-group-prepend list-level2"></div>
										<div id="cityList" class="input-group-prepend list-level2"></div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">確定</button>
									</div>
								</div>
							</div>
						</div>
						<div class="div-bar"></div>
						<!-- Skill Button trigger modal -->
						<button id="iarea"
							class="input-group-append wrap-level3 searchbar-bgcolor"
							data-toggle="modal" data-target="#exampleModalCenter">
							<div class="wrap-level5 search-btn">技能類別</div>
						</button>
						<!-- Skil Modal -->
						<div class="modal fade" id="exampleModalCenter" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h6 class="modal-title title" id="exampleModalLongTitle">技能類別選單</h6>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
						<div class="input-group-append wrap-level6">
							<button type="submit" class="btn btn-secondary btn-sm last-btn">
								<i class="fa fa-search"></i>搜尋
							</button>
						</div>
					</div>
					<div class="wrap-level7">
						<div class="k1">熱門關鍵字：</div>
						<div id='insert-keyword' class="k1"></div>
					</div>
					<form action="InsertKeyword1.do" method="GET">
						<div class="input-group wrap">
							<div class="input-group-prepend">
								<input type="text" class="form-control searchbar-text"
									name="keyword" placeholder="關鍵字...">
							</div>
							<div id="getarea" class="input-group-append">
								<select name="area1" id="area" class="btn btn-light searchbar"
									style="text-align: center; text-align-last: center;">
									<option value="地區" selected disabled>地區</option>
								</select>
							</div>
							<div id="getskill" class="input-group-append">
								<select name="skill1" id="skill" class="btn btn-light searchbar"
									style="text-align: center; text-align-last: center;">
									<option value="技能類別" selected disabled>技能類別</option>
								</select>
							</div>
							<div class="input-group-append">
								<button type="submit" class="btn btn-secondary btn-sm searchbar">
									<i class="fa fa-search"></i>搜尋
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


	<!-- 	<section class="hero-area"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-12"> -->
	<!-- 					<div class="block"> -->
	<!-- 						<h3 class="wow fadeInUp" data-wow-duration=".5s" -->
	<!-- 							data-wow-delay=".3s">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;想學什麼技能嗎?</h3> -->
	<!-- 						<form action="InsertKeyword1.do" method="GET"> -->
	<!-- 							<div class="input-group wrap"> -->
	<!-- 								<div class="input-group-prepend"> -->
	<!-- 									<input type="text" class="form-control searchbar-text" -->
	<!-- 										name="keyword" placeholder="關鍵字..."> -->
	<!-- 								</div> -->
	<!-- 								<div id="getarea" class="input-group-append"> -->
	<!-- 									<select name="area1" id="area" class="btn btn-light searchbar" -->
	<!-- 										style="text-align: center; text-align-last: center;"> -->
	<!-- 										<option value="地區" selected disabled>地區</option> -->
	<!-- 									</select> -->
	<!-- 								</div> -->
	<!-- 								<div id="getskill" class="input-group-append"> -->
	<!-- 									<select name="skill1" id="skill" -->
	<!-- 										class="btn btn-light searchbar" -->
	<!-- 										style="text-align: center; text-align-last: center;"> -->
	<!-- 										<option value="技能類別" selected disabled>技能類別</option> -->
	<!-- 									</select> -->
	<!-- 								</div> -->
	<!-- 								<div class="input-group-append"> -->
	<!-- 									<button type="submit" -->
	<!-- 										class="btn btn-secondary btn-sm searchbar"> -->
	<!-- 										<i class="fa fa-search"></i>搜尋 -->
	<!-- 									</button> -->
	<!-- 								</div> -->
	<!-- 							</div> -->
	<!-- 						</form> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</section> -->
	<section class="buy-pro" style="padding: 100px 0;"></section>

	<jsp:include page="/fragment/bottom.jsp" />
	<!-- end footer -->

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

	<!-- Form Validation
	 -->
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
		$('.carousel').carousel();
	</script>

	<c:if test="${not empty MsgOK}">
		<c:if test="${not empty MsgOK.massage}">
			<script>
				let message = "${MsgOK.massage}";
				$("#alertText").text(message);
				$("#alertModal").modal('show');
				// 				alert(message);
			</script>
		</c:if>
	</c:if>

	<%
		session.removeAttribute("MsgOK");
	%>

	<script>
		$('#exampleModalCenter').on('shown.bs.modal', function() {
			$('#exampleModalCenter').modal('show');
		})
	</script>

	<script>
		window.onload = function() {
			var xhr1 = new XMLHttpRequest();
			xhr1.open("GET", "<c:url value='GetTopKeyword.do' />", true);
			xhr1.send();
			xhr1.onreadystatechange = function() {
				if (xhr1.readyState == 4) {
					if (xhr1.status == 200) {
						console.log(JSON.parse(xhr1.responseText));
						var arr = JSON.parse(xhr1.responseText);
						console.log(arr[0][0][0]);
						console.log(arr[0][1][0]);

						var content = "";
						for (var x = 0; x < 10; x++) {
							var str = "<c:url value='InsertKeyword1.do?keyword="
									+ arr[0][x][0] + "' />"
							content += "<li class='k1 k2'><a href='" + str + "'>"
									+ arr[0][x][0]
									+ "</a></li>"
									+ "<div class='div-bar2 k1'></div>";
						}

						content = content.substring(0, content.length - 32);
						document.getElementById("insert-keyword").innerHTML = content;
					}
				}
			}
			var xhr2 = new XMLHttpRequest();
			xhr2.open("GET", "<c:url value='GetIndexBtn.do' />", true);
			xhr2.send();
			xhr2.onreadystatechange = function() {
				if (xhr2.readyState == 4) {
					if (xhr2.status == 200) {
						console.log(JSON.parse(xhr2.responseText));
						var arr = JSON.parse(xhr2.responseText);
						console.log(arr[0][0].publishAreaCN);

						// 						-> for showing area <-
						var contentA1 = "<div class='div-list1'>";
						for (var i = 0; i < arr[0].length; i++) {
							contentA1 += "<li class='li-bg1'><div class='li-div li-div1'>"
									+ arr[0][i].publishAreaCN
									+ "</div><div class='li-div li-div2'><i class='fa fa-caret-right'></i></div></li>";
						}
						contentA1 += "</div>";
						document.getElementById("areaList").innerHTML = contentA1;

						// 						-> for showing area-city <-
						var contentB1 = "<div class='ctl-areaN'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='北部'></div><div class='li-div li-div1'>北部</div></li></div>";
						contentB1 += "<div class='div-list2'>";
						for (var j = 0; j < arr[1].length; j++) {
							if (arr[1][j].publishAreaID == 'N') {
								contentB1 += "<li class='li-bg2'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[1][j].cityCN + "'></div><div class='li-div li-div4'>"
										+ arr[1][j].cityCN + "</div></li>";
							}
						}
						contentB1 += "</div></div>";

						var contentB2 = "<div class='ctl-areaC'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='中部'></div><div class='li-div li-div1'>中部</div></li></div>";
						contentB2 += "<div class='div-list2'>";
						for (var j = 0; j < arr[1].length; j++) {
							if (arr[1][j].publishAreaID == 'C') {
								contentB2 += "<li class='li-bg2'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[1][j].cityCN + "'></div><div class='li-div li-div4'>"
										+ arr[1][j].cityCN + "</div></li>";
							}
						}
						contentB2 += "</div></div>";

						var contentB3 = "<div class='ctl-areaS'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='南部'></div><div class='li-div li-div1'>南部</div></li></div>";
						contentB3 += "<div class='div-list2'>";
						for (var j = 0; j < arr[1].length; j++) {
							if (arr[1][j].publishAreaID == 'S') {
								contentB3 += "<li class='li-bg2'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[1][j].cityCN + "'></div><div class='li-div li-div4'>"
										+ arr[1][j].cityCN + "</div></li>";
							}
						}
						contentB3 += "</div></div>";

						var contentB4 = "<div class='ctl-areaE'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='東部'></div><div class='li-div li-div1'>東部</div></li></div>";
						contentB4 += "<div class='div-list2'>";
						for (var j = 0; j < arr[1].length; j++) {
							if (arr[1][j].publishAreaID == 'E') {
								contentB4 += "<li class='li-bg2'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[1][j].cityCN + "'></div><div class='li-div li-div4'>"
										+ arr[1][j].cityCN + "</div></li>";
							}
						}
						contentB4 += "</div></div>";

						document.getElementById("cityList").innerHTML = contentB1
								+ contentB2 + contentB3 + contentB4;
					}
				}
			}
		}
	</script>

	<!-- 	<script> -->
	// $(document).on({ // mouseenter: function () { //
	$(this).css("background-color", "#FFB5B5"); // }, // mouseleave:
	function () { // $(this).css("background-color", "#F0F0F0"); // }, //
	click: function(){ //
	$(this).siblings(".li-bg1").css("background-color", "#F0F0F0"); //
	$(this).css("background-color", "#FFFFFF"); // } // }, ".li-bg1");
	<!-- 	</script> -->

	<script>
		$(document).on("click", ".li-bg1", function() {
			$(this).siblings(".li-bg1").css("background-color", "#F0F0F0");
			$(this).css("background-color", "#FFFFFF");
			var area = $(this).text();
			console.log("area=" + area);

			// 		if(area == "北部"){
			// 			$(".ctl-areaN").css("display", "block");
			// 			$(".ctl-areaN+div").css("display", "none");
			// 		} else if(area == "中部"){
			// 			$(".ctl-areaC").css("display", "block");
			// 			$(".ctl-areaC+div").css("display", "none");
			// 		}

		})
	</script>

</body>
</html>