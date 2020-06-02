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
.wrapper {
	width: 100vw;
	height: 100vh;
	opacity: 0.6;
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

.wrap-level4 {
	margin: 8px;
	/* 	padding: 10px 15px; */
}

.wrap-level5 {
	height: 25px;
	margin: 15px;
}

.wrap-level6 {
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
	width: 100%;
	height: 40px;
	margin: 10px auto;
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

.li-bg0 {
	background-color: #FFFFFF !important;
	cursor: default;
}

.li-bg1 {
	width: 100%;
	height: 20%;
	background-color: #F0F0F0;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.active {
	background-color: #FFFFFF !important;
	cursor: default;
}

.active2 {
	/* 	background-color: #FFFFFF !important; */
	cursor: default !important;
}

.disabled {
	checked: checked;
}

.li-bg2 {
	width: 100%;
	height: 25%;
	background-color: #F0F0F0;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.li-bg3 {
	width: 100%;
	height: 25%;
	background-color: #FFFFFF;
	border-bottom: 1px solid #E0E0E0;
	cursor: pointer;
	list-style: none;
}

.li-bg3:hover {
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

.ctl-area1 {
	height: 100%;
}

.ctl-area2, .ctl-area3, .ctl-area4 {
	height: 100%;
	display: none;
}

.ctl-type1 {
	height: 100%;
}

.ctl-type2, .ctl-type3, .ctl-type4, .ctl-type5 {
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

form {
	width: 8%;
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
							<input type="text" id="typing-keyword"
								class="form-control wrap-level4 searchbar-bgcolor searchbar-text text-truncate"
								name="typing-keyword" placeholder="關鍵字...">
						</div>
						<div class="div-bar"></div>
						<!-- Area Button trigger modal -->
						<button id="iarea"
							class="input-group-append wrap-level3 searchbar-bgcolor"
							data-toggle="modal" data-target="#areaModal">
							<div class="wrap-level5 search-btn">地區</div>
						</button>
						<!-- Area Modal -->
						<div class="modal fade" id="areaModal" tabindex="-1" role="dialog"
							aria-labelledby="areaModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h6 class="modal-title title" id="areaModalTitle">地區選單</h6>
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
										<button id="areaClick" type="button" class="btn btn-secondary"
											data-dismiss="modal">確定</button>
									</div>
								</div>
							</div>
						</div>
						<div class="div-bar"></div>
						<!-- Skill Button trigger modal -->
						<button id="iskill"
							class="input-group-append wrap-level3 searchbar-bgcolor"
							data-toggle="modal" data-target="#skillModal">
							<div class="wrap-level5 search-btn">技能類別</div>
						</button>
						<!-- Skil Modal -->
						<div class="modal fade" id="skillModal" tabindex="-1"
							role="dialog" aria-labelledby="skillModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h6 class="modal-title title" id="skillModalTitle">技能類別選單</h6>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body input-group list-level1">
										<div id="skillL1List" class="input-group-prepend list-level2"></div>
										<div id="skillL2List" class="input-group-prepend list-level2"></div>
									</div>
									<div class="modal-footer">
										<button id="skillClick" type="button"
											class="btn btn-secondary" data-dismiss="modal">確定</button>
									</div>
								</div>
							</div>
						</div>
						<form method="GET" action="<c:url value='InsertKeyword1.do' />">
							<div id="container">
								<input type="hidden" id="keyword" name="keyword" value="">
								<input type="hidden" id="area1" name="area1" value=""> <input
									type="hidden" id="area2" name="area2" value=""> <input
									type="hidden" id="area3" name="area3" value=""> <input
									type="hidden" id="city1" name="city1" value=""> <input
									type="hidden" id="city2" name="city2" value=""> <input
									type="hidden" id="city3" name="city3" value=""> <input
									type="hidden" id="city4" name="city4" value=""> <input
									type="hidden" id="city5" name="city5" value=""> <input
									type="hidden" id="type1" name="type1" value=""> <input
									type="hidden" id="type2" name="type2" value=""> <input
									type="hidden" id="type3" name="type3" value=""> <input
									type="hidden" id="type4" name="type4" value=""> <input
									type="hidden" id="skill1" name="skill1" value=""> <input
									type="hidden" id="skill2" name="skill2" value=""> <input
									type="hidden" id="skill3" name="skill3" value=""> <input
									type="hidden" id="skill4" name="skill4" value=""> <input
									type="hidden" id="skill5" name="skill5" value="">
								<button type="submit" class="btn btn-secondary btn-sm last-btn">
									<i class="fa fa-search"></i>搜尋
								</button>
							</div>
						</form>
					</div>
					<div class="wrap-level6">
						<div class="k1">熱門關鍵字：</div>
						<div id='insert-keyword' class="k1"></div>
					</div>
					<!-- 					<form action="InsertKeyword1.do" method="GET"> -->
					<!-- 						<div class="input-group wrap"> -->
					<!-- 							<div class="input-group-prepend"> -->
					<!-- 								<input type="text" class="form-control searchbar-text" -->
					<!-- 									name="keyword" placeholder="關鍵字..."> -->
					<!-- 							</div> -->
					<!-- 							<div id="getarea" class="input-group-append"> -->
					<!-- 								<select name="area1" id="area" class="btn btn-light searchbar" -->
					<!-- 									style="text-align: center; text-align-last: center;"> -->
					<!-- 									<option value="地區" selected disabled>地區</option> -->
					<!-- 								</select> -->
					<!-- 							</div> -->
					<!-- 							<div id="getskill" class="input-group-append"> -->
					<!-- 								<select name="skill1" id="skill" class="btn btn-light searchbar" -->
					<!-- 									style="text-align: center; text-align-last: center;"> -->
					<!-- 									<option value="技能類別" selected disabled>技能類別</option> -->
					<!-- 								</select> -->
					<!-- 							</div> -->
					<!-- 							<div class="input-group-append"> -->
					<!-- 								<button type="submit" class="btn btn-secondary btn-sm searchbar"> -->
					<!-- 									<i class="fa fa-search"></i>搜尋 -->
					<!-- 								</button> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</form> -->
				</div>
			</div>
		</div>
	</section>
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
		<c:if test="${not empty MsgOK.message}">
			<script>
				let message = "${MsgOK.message}";
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
		$('#areaModal').on('shown.bs.modal', function() {
			$('#areaModal').modal('show');
		})

		$('#skillModal').on('shown.bs.modal', function() {
			$('#skillModal').modal('show');
		})
	</script>

	<script>
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='GetTopKeyword.do' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					// 					console.log(JSON.parse(xhr.responseText));
					var arr = JSON.parse(xhr.responseText);
					// 					console.log(arr[0][0][0]);
					// 					console.log(arr[0][1][0]);
					var content = "";
					for (var x = 0; x < 5; x++) {
						// 						console.log(arr[0][x][0]);
						var str = "<c:url value='InsertKeyword1.do?keyword="
								+ arr[0][x][0] + "' />";
						content += "<li class='k1 k2'><a href='" + str + "'>"
								+ arr[0][x][0] + "</a></li>"
								+ "<div class='div-bar2 k1'></div>";
					}
					content = content.substring(0, content.length - 32);
					document.getElementById("insert-keyword").innerHTML = content;
				}
			}
		}
	</script>

	<script>
		var xhr1 = new XMLHttpRequest();
		xhr1.open("GET", "<c:url value='GetIndexBtn.do' />", true);
		xhr1.send();
		xhr1.onreadystatechange = function() {
			if (xhr1.readyState == 4) {
				if (xhr1.status == 200) {
					// 						console.log(JSON.parse(xhr1.responseText));
					var arr = JSON.parse(xhr1.responseText);
					// 						console.log(arr[0][0].publishAreaCN);
					// 						-> for showing area A<-
					var contentA = "<div class='div-list1'>";
					contentA += "<li class='li-bg1 li-bg0'><div class='li-div li-div1'>"
							+ arr[0][0].publishAreaCN
							+ "</div><div class='li-div li-div2'><i class='fa fa-caret-right'></i></div></li>";

					for (var i = 1; i < arr[0].length; i++) {
						contentA += "<li class='li-bg1'><div class='li-div li-div1'>"
								+ arr[0][i].publishAreaCN
								+ "</div><div class='li-div li-div2'><i class='fa fa-caret-right'></i></div></li>";
					}
					contentA += "</div>";
					document.getElementById("areaList").innerHTML = contentA;
					// 						-> for showing area-city B<-
					var contentB = "";
					for (var i = 0; i < arr[0].length; i++) {
						contentB += "<div class='ctl-area"
								+ (i + 1)
								+ "'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='" + arr[0][i].publishAreaCN + "'></div><div class='li-div li-div1'>"
								+ arr[0][i].publishAreaCN + "</div></li></div>";
						contentB += "<div class='div-list2'>";
						for (var j = 0; j < arr[1].length; j++) {
							if (arr[0][i].publishAreaCN == arr[1][j].publishAreaCN) {
								contentB += "<li class='li-bg3'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[1][j].cityCN + "'></div><div class='li-div li-div4'>"
										+ arr[1][j].cityCN + "</div></li>";
							}
						}
						contentB += "</div></div>";
					}
					document.getElementById("cityList").innerHTML = contentB;
					// 						-> for showing skillType C <-
					var contentC = "<div class='div-list1'>";
					contentC += "<li class='li-bg1 li-bg0'><div class='li-div li-div1'>"
							+ arr[2][0]
							+ "</div><div class='li-div li-div2'><i class='fa fa-caret-right'></i></div></li>";

					for (var m = 1; m < arr[2].length; m++) {
						contentC += "<li class='li-bg1'><div class='li-div li-div1'>"
								+ arr[2][m]
								+ "</div><div class='li-div li-div2'><i class='fa fa-caret-right'></i></div></li>";
					}
					contentC += "</div>";
					document.getElementById("skillL1List").innerHTML = contentC;
					// 						-> for showing skills D<-
					var contentD = "";
					for (var m = 0; m < arr[2].length; m++) {
						contentD += "<div class='ctl-type"
								+ (m + 1)
								+ "'><div><li class='li-bg2'><div class='li-div li-div2'><input type='checkbox' class='checkbox-input' value='"+ arr[2][m] + "'></div><div class='li-div li-div1'>"
								+ arr[2][m] + "</div></li></div>";
						contentD += "<div class='div-list2'>";
						for (var n = 0; n < arr[3].length; n++) {
							if (arr[2][m] == arr[3][n].typeCN) {
								contentD += "<li class='li-bg3'><div class='li-div li-div3'><input type='checkbox' class='checkbox-input' value='" + arr[3][n].skillNameCN + "'></div><div class='li-div li-div4'>"
										+ arr[3][n].skillNameCN + "</div></li>";
							}
						}
						contentD += "</div></div>";
					}
					document.getElementById("skillL2List").innerHTML = contentD;
				}
			}
		}
	</script>


	<script>
		$(document).on(
				{
					mouseenter : function() {
						$(this).css("background-color", "#FFB5B5");
					},
					mouseleave : function() {
						$(this).css("background-color", "#F0F0F0");
					},
					click : function() {
						$(this).addClass('active').siblings().removeClass(
								'active li-bg0');
						i = $(this).index();
						// 						console.log(i);
						$("#cityList").children().eq(i).slideDown({
							duration : 10,
						}).siblings().slideUp({
							duration : 10,
						});
					}
				}, ".li-bg1");
	</script>

	<script>
		$(document).on(
				{
					mouseenter : function() {
						$(this).css("background-color", "#FFB5B5");
					},
					mouseleave : function() {
						$(this).css("background-color", "#F0F0F0");
					},
					click : function() {
						$(this).addClass('active').siblings().removeClass(
								'active li-bg0');
						i = $(this).index();
						// 						console.log(i);
						$("#skillL2List").children().eq(i).slideDown({
							duration : 10,
						}).siblings().slideUp({
							duration : 10,
						});
					}
				}, ".li-bg1");
	</script>

	<!-- 	<script> -->
	<!-- 		$(document).on("toggle", ".li-bg2:checkbox", function(){ -->
	<!-- 			$(this).parent("div").addClass("disabled"); -->
	<!-- 		}) -->
	<!-- 	</script> -->

	<!-- 	<script> -->
	<!-- 		$(document).on("toggle", ".li-bg3", function() { -->
	<!-- 			$(this).addClass('active2'); -->
	<!-- 		}, function() { -->
	<!-- 			$(this).removeClass('active2'); -->
	<!-- 		}) -->
	<!-- 	</script> -->

	<script>
		var north = [ "基隆", "台北", "新北", "桃園", "新竹" ];
		var center = [ "苗栗", "台中", "彰化", "南投", "雲林" ];
		var south = [ "嘉義", "台南", "高雄", "屏東" ];
		var east = [ "台東", "花蓮", "宜蘭" ];
		$(document).on(
				"change",
				'.checkbox-input[value*="北部"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < north.length; i++) {
							$('.checkbox-input[value*="' + north[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < north.length; i++) {
							$('.checkbox-input[value*="' + north[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="中部"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < center.length; i++) {
							$('.checkbox-input[value*="' + center[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < center.length; i++) {
							$('.checkbox-input[value*="' + center[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="東部"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < east.length; i++) {
							$('.checkbox-input[value*="' + east[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < east.length; i++) {
							$('.checkbox-input[value*="' + east[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="南部"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < south.length; i++) {
							$('.checkbox-input[value*="' + south[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < south.length; i++) {
							$('.checkbox-input[value*="' + south[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})
	</script>

	<script>
		var art = [ "歌唱", "跳舞", "繪畫", "演戲" ];
		var life = [ "化妝", "煮飯", "居家清潔" ];
		var sport = [ "足球", "羽毛球", "網球", "排球" ];
		var language = [ "法文", "日文", "韓文", "西班牙文" ];
		var pet = [ "養鸚鵡", "養狗", "養貓", "養魚" ]
		$(document).on(
				"change",
				'.checkbox-input[value*="才藝"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < art.length; i++) {
							$('.checkbox-input[value*="' + art[i] + '"]').prop(
									"checked", true).attr("disabled", true);
						}
					} else {
						for (i = 0; i < art.length; i++) {
							$('.checkbox-input[value*="' + art[i] + '"]').prop(
									"checked", false).attr("disabled", false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="生活"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < life.length; i++) {
							$('.checkbox-input[value*="' + life[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < life.length; i++) {
							$('.checkbox-input[value*="' + life[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="運動"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < sport.length; i++) {
							$('.checkbox-input[value*="' + sport[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < sport.length; i++) {
							$('.checkbox-input[value*="' + sport[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="語言"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < language.length; i++) {
							$('.checkbox-input[value*="' + language[i] + '"]')
									.prop("checked", true).attr("disabled",
											true);
						}
					} else {
						for (i = 0; i < language.length; i++) {
							$('.checkbox-input[value*="' + language[i] + '"]')
									.prop("checked", false).attr("disabled",
											false);
						}
					}
				})

		$(document).on(
				"change",
				'.checkbox-input[value*="寵物"]',
				function() {
					if ($(this).is(":checked")) {
						for (i = 0; i < pet.length; i++) {
							$('.checkbox-input[value*="' + pet[i] + '"]').prop(
									"checked", true).attr("disabled", true);
						}
					} else {
						for (i = 0; i < pet.length; i++) {
							$('.checkbox-input[value*="' + pet[i] + '"]').prop(
									"checked", false).attr("disabled", false);
						}
					}
				})
	</script>

	<script>
		var btn3 = document.getElementById("areaClick");
		btn3.onclick = function() {
			// 			console.log($("#cityList"));
			console
					.log($("#cityList >div div:first-child input:checkbox:checked")[0].value); //抓area+city
			var list = $("#cityList >div div:first-child input:checkbox:checked:not(:disabled)");
			//console.log($("#cityList >div div:last-child input:checkbox:checked")); //抓city
			var m = 1;
			var n = 1;
			for (var i = 0; i < list.length; i++) {
				if (list[i].value.includes("部")) {
					var id1 = "area" + m;
					var A = document.getElementById(id1);
					A.value = list[i].value;
					m++;
				} else {
					var id2 = "city" + n;
					var B = document.getElementById(id2);
					B.value = list[i].value;
					n++;
				}
			}
		}
	</script>

	<script>
		var btn4 = document.getElementById("skillClick");
		btn4.onclick = function() {
			// 			console.log($("#skillL2List >div div:first-child input:checkbox:checked"));
			console
					.log($("#skillL2List >div div:first-child input:checkbox:checked")[0].value);
			var list = $("#skillL2List >div div:first-child input:checkbox:checked:not(:disabled)");
			//console.log($("#skillL2List >div div:last-child input:checkbox:checked")); //抓city
			var m = 1;
			var n = 1;
			for (var i = 0; i < list.length; i++) {
				if (list[i].value.includes("才藝")
						|| list[i].value.includes("生活")
						|| list[i].value.includes("運動")
						|| list[i].value.includes("語言")
						|| list[i].value.includes("寵物")) {
					var id1 = "type" + m;
					var A = document.getElementById(id1);
					A.value = list[i].value;
					m++;
				} else {
					var id2 = "skill" + n;
					var B = document.getElementById(id2);
					B.value = list[i].value;
					n++;
				}
			}
		}
	</script>

	<script>
		$(function() {
			$("#typing-keyword").keyup(function() {
				var input = $(this).val();
				console.log(input);
				var A = document.getElementById("keyword");
				A.value = input;
			})
		})
	</script>
</body>
</html>