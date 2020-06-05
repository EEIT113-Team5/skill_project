<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<title>查詢</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<style>
/* old css */
#searchbar {
	margin: 0;
	padding: 0;
}

.wrap {
	width: 70%;
	margin-left: 50px;
	margin-top: 30px;
	margin-bottom: 30px;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 30px;
	padding-right: 25px;
	border: 1.5px solid #5B5B5B;
	border-radius: 10px;
}

.searchbar-text {
	width: 350px;
}

.searchbar {
	width: 150px;
	text-align: center;
}

.otext {
	text-align: center;
}

.fixed_div {
	position: fixed;
	top: 55px;
	width: 85%;
	background-color: #FFFFFF;
	border-bottom: 1.5px solid #F0F0F0;
}

.post {
	display: inline-block;
	background-color: #F0F0F0;
	vertical-align: top;
	width: 30%;
	height: 25em;
	margin: 10px;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border: 10px solid #F0F0F0;
	border-radius: 10px;
}

a {
	color: #000000;
}

.poster {
	font-size: 1.2em;
	margin-top: 1em;
}

.area {
	font-size: 0.8em
}

.updatetime {
	text-align: right;
	font-size: 0.8em;
	color: #9D9D9D;
}
/* old css */

/* new css */
body {
	font-family: 微軟正黑體 !important;
}

h2, h6 {
	font-family: 微軟正黑體;
}

h4 {
	font-family: 微軟正黑體;
	height: 2.4em;
}

.wrap-level1 {
	background-color: #FFFFFF;
	border-botton: 1px solid #BEBEBE;
	position: relative;
	width: 100%;
	/* 	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.06); */
}

.wrap-level1-2 {
	background-color: #FFFFFF;
	border: 1px black solid;
	position: relative;
	width: 100%;
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.06);
}

.title {
	font-family: 微軟正黑體;
	border: none !important;
	font-weight: bold;
	padding: 0;
}

.wrap-level2 {
	width: 80%;
	border-radius: 10px;
	background-color: #FFFFFF;
	padding: 0;
	border: 0.8px solid #BEBEBE;
	margin: 20px auto;
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
	border: 2px solid #ADADAD;
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

.search-btn {
	display: block;
	cursor: pointer;
	width: 100%;
	text-align: center;
	line-height: 25px;
}

.last-btn {
	width: 90%;
	height: 40px;
	margin: 10px 7.5px;
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
	width: 9.5%;
}

.container2 {
	width: 90%;
	margin: 30px auto;
	padding: 0;
	/* 	border: 1px solid black; */
}

.result {
	width: 25%;
	height: 40em;
}

.img {
	text-align: center;
	height: 13em;
}

.detail {
	font-size: 1em;
	height: 5em;
	vertical-align: top;
	margin-bottom: 0.75rem;
}

.text-truncate {
	overflow:hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.line-clamp2 {
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	white-space: normal;
}

.line-clamp3 {
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	white-space: normal;
}

.last-part {
	display: inline-block;
/* 	width: 50%; */
	text-align: center;
}

.btn-o {
	margin-left: 10x;
	margin-right: 10px;
}

/* new css */
</style>
</head>

<!-- ---------------------要加的部份-------------------- -->
<body id="body">
	<jsp:include page="/fragment/top1.jsp" />

	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>進階搜尋</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="wrap-level1">
		<div class="input-group wrap-level2">
			<div class="input-group-prepend wrap-level3">
				<c:choose>
					<c:when test="${not empty keyword1}">
						<input type="text" id="typing-keyword"
							class="form-control wrap-level4 searchbar-bgcolor searchbar-text text-truncate"
							name="typing-keyword" value="${keyword1}">
					</c:when>
					<c:otherwise>
						<input type="text" id="typing-keyword"
							class="form-control wrap-level4 searchbar-bgcolor searchbar-text text-truncate"
							name="typing-keyword" placeholder="關鍵字...">
					</c:otherwise>
				</c:choose>
			</div>
			<div class="div-bar"></div>
			<!-- Area Button trigger modal -->
			<button id="iarea"
				class="input-group-append wrap-level3 searchbar-bgcolor"
				data-toggle="modal" data-target="#areaModal">
				<%-- 				<c:choose> --%>
				<%-- 					<c:when test="${not empty area1 || not empty area2}"> --%>

				<%-- 					</c:when> --%>
				<%-- 				</c:choose> --%>
				<div id="inputArea" class="wrap-level5 search-btn">地區</div>
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
				<div id="inputSkill" class="wrap-level5 search-btn">技能類別</div>
			</button>
			<!-- Skil Modal -->
			<div class="modal fade" id="skillModal" tabindex="-1" role="dialog"
				aria-labelledby="skillModalLabel" aria-hidden="true">
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
							<button id="skillClick" type="button" class="btn btn-secondary"
								data-dismiss="modal">確定</button>
						</div>
					</div>
				</div>
			</div>
			<form method="GET" action="<c:url value='InsertKeyword1.do' />">
				<div id="container">
					<input type="hidden" id="keyword" name="keyword" value="${keyword1}">
					<input type="hidden" id="area1" name="area1" value="${area1}"> <input
						type="hidden" id="area2" name="area2" value="${area2}"> <input
						type="hidden" id="area3" name="area3" value="${area3}"> <input
						type="hidden" id="city1" name="city1" value="${city1}"> <input
						type="hidden" id="city2" name="city2" value="${city2}"> <input
						type="hidden" id="city3" name="city3" value="${city3}"> <input
						type="hidden" id="city4" name="city4" value="${city4}"> <input
						type="hidden" id="city5" name="city5" value="${city5}"> <input
						type="hidden" id="type1" name="type1" value="${type1}"> <input
						type="hidden" id="type2" name="type2" value="${type2}"> <input
						type="hidden" id="type3" name="type3" value="${type3}"> <input
						type="hidden" id="type4" name="type4" value="${type4}"> <input
						type="hidden" id="skill1" name="skill1" value="${skill1}"> <input
						type="hidden" id="skill2" name="skill2" value="${skill2}"> <input
						type="hidden" id="skill3" name="skill3" value="${skill3}"> <input
						type="hidden" id="skill4" name="skill4" value="${skill4}"> <input
						type="hidden" id="skill5" name="skill5" value="${skill5}">
						<input type="hidden" id="dateSort" name="dateSort" value=""> 
						<input type="hidden" id="clickSort" name="clickSort" value="">
					<button type="submit" class="btn btn-secondary btn-sm last-btn">
						<i class="fa fa-search"></i>搜尋
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="wrap-level1-2">TEST TEST</div>

	<!-- 搜尋bar-start -->
	<!-- 	<div id="searchbar"> -->
	<!-- 		<form action="InsertKeyword2.do" method="GET"> -->
	<!-- 			<div class="input-group wrap"> -->
	<!-- 				<div class="input-group-prepend"> -->
	<%-- 					<c:choose> --%>
	<%-- 						<c:when test="${((empty keyword1) && (empty keyword2))}"> --%>
	<!-- 							<input type="text" class="form-control searchbar-text" -->
	<!-- 								name="keyword2" placeholder="關鍵字..."> -->
	<%-- 						</c:when> --%>
	<%-- 						<c:when test="${(not empty keyword1) && (empty keyword2)}"> --%>
	<!-- 							<input type="text" class="form-control searchbar-text" -->
	<%-- 								name="keyword2" value="${keyword1}"> --%>
	<%-- 						</c:when> --%>
	<%-- 						<c:otherwise> --%>
	<!-- 							<input type="text" class="form-control searchbar-text" -->
	<%-- 								name="keyword2" value="${keyword2}"> --%>
	<%-- 						</c:otherwise> --%>
	<%-- 					</c:choose> --%>
	<!-- 				</div> -->
	<!-- 				<div class="input-group-append"> -->
	<!-- 					<select name="area2" id="area" class="btn btn-light searchbar" -->
	<!-- 						style="text-align: center; text-align-last: center;"> -->
	<%-- 						<c:choose> --%>
	<%-- 							<c:when test="${empty area2}"> --%>
	<%-- 								<c:choose> --%>
	<%-- 									<c:when test="${area1 eq 地區}"> --%>
	<!-- 										<option selected disabled>地區</option> -->
	<%-- 										<c:forEach var='area' items='${areaList}'> --%>
	<%-- 											<option value="${area.publishAreaCN}">${area.publishAreaCN}</option> --%>
	<%-- 										</c:forEach> --%>
	<%-- 									</c:when> --%>
	<%-- 									<c:otherwise> --%>
	<!-- 										<option disabled>地區</option> -->
	<%-- 										<c:forEach var='area' items='${areaList}' begin='0' end='4'> --%>
	<!-- 											<option -->
	<%-- 												<c:if test="${area1 eq area.publishAreaCN}">selected="selected"</c:if> --%>
	<%-- 												value="${area.publishAreaCN}">${area.publishAreaCN}</option> --%>
	<%-- 										</c:forEach> --%>
	<%-- 									</c:otherwise> --%>
	<%-- 								</c:choose> --%>
	<%-- 							</c:when> --%>
	<%-- 							<c:otherwise> --%>
	<%-- 								<c:choose> --%>
	<%-- 									<c:when test="${area2 eq 地區}"> --%>
	<!-- 										<option selected disabled>地區</option> -->
	<%-- 										<c:forEach var='area' items='${areaList}'> --%>
	<%-- 											<option value="${area.publishAreaCN}">${area.publishAreaCN}</option> --%>
	<%-- 										</c:forEach> --%>
	<%-- 									</c:when> --%>
	<%-- 									<c:otherwise> --%>
	<!-- 										<option disabled>地區</option> -->
	<%-- 										<c:forEach var='area' items='${areaList}' begin='0' end='4'> --%>
	<!-- 											<option -->
	<%-- 												<c:if test="${area2 eq area.publishAreaCN}">selected="selected"</c:if> --%>
	<%-- 												value="${area.publishAreaCN}">${area.publishAreaCN}</option> --%>
	<%-- 										</c:forEach> --%>
	<%-- 									</c:otherwise> --%>
	<%-- 								</c:choose> --%>
	<%-- 							</c:otherwise> --%>
	<%-- 						</c:choose> --%>
	<!-- 					</select> -->
	<!-- 				</div> -->
	<!-- 				<select name="skill2" id="skill" class="btn btn-light searchbar" -->
	<!-- 					style="text-align: center; text-align-last: center;"> -->
	<%-- 					<c:choose> --%>
	<%-- 						<c:when test="${skill1 eq 技能類別}"> --%>
	<!-- 							<option selected disabled>技能類別</option> -->
	<%-- 							<c:forEach var='skill' items='${skillList}'> --%>
	<%-- 								<option value="${skill.skillNameCN}">${skill.skillNameCN}</option> --%>
	<%-- 							</c:forEach> --%>
	<%-- 						</c:when> --%>
	<%-- 						<c:otherwise> --%>
	<!-- 							<option disabled>技能類別</option> -->
	<%-- 							<c:forEach var='skill' items='${skillList}' begin='0' end='5'> --%>
	<!-- 								<option -->
	<%-- 									<c:if test="${skill1 eq skill.skillNameCN}">selected="selected"</c:if> --%>
	<%-- 									value="${skill.skillNameCN}">${skill.skillNameCN}</option> --%>
	<%-- 							</c:forEach> --%>
	<%-- 						</c:otherwise> --%>
	<%-- 					</c:choose> --%>
	<!-- 				</select> -->
	<!-- 			</div> -->
	<!-- 		</form> -->
	<!-- 	</div> -->


	<div id="container2" class="container2">
		<c:choose>
			<c:when test="${empty searchList}">
				<div>查無符合資料</div>
			</c:when>
			<c:otherwise>
				<div class="card-deck">
					<c:forEach var='search' items='${searchList}'>
						<div class="result">
							<div class="card">
								<div class="card-header bg-transparent">
									<c:choose>
										<c:when test="${empty search.memberNic} }">
											<img class="collectImg" alt="" src="${search.memberPic}">
											<span>我是某某某</span>
										</c:when>
										<c:otherwise>
											<img class="collectImg" alt="" src="${search.memberPic}">
											<span>${search.memberNic}</span>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="">
									<img class="card-img img" src="${search.publishPic}"
										alt="${search.publishPic}">
								</div>
								<div class="card-body">
									<h4 class="card-title text-truncate line-clamp2">${search.publishTitle}</h4>
									<div class="card-text text-truncate line-clamp3 detail">${search.publishDetail}</div>
									<h6><i class='far fa-handshake' style='font-size:14px'></i> 提供交換技能: ${search.ownType} - ${search.ownSkill}</h6>
									<h6><i class='fas fa-map-marker-alt' style='font-size:20px'></i> ${search.publishArea} -
										${search.city}</h6>
									<div style="text-align: right">
										<small class="text-muted">最後更新日期: <fmt:formatDate
												value="${search.updateTime}" pattern="yyyy/MM/dd HH:mm" /></small>
									</div>
								</div>
								<div class="card-footer last-part">
									<button type="button" class="btn btn-success btn-o">加入收藏 <i class='far fa-heart'></i></i></button>
									<button type="button" class="btn btn-primary btn-o">發送訊息 <i class='far fa-comment-dots'></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>

	</div>

	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<!-- 	<script> -->
	<!-- 		$(function() { -->
	<!-- 			let divPosition = $("#searchbar").offset().top; -->
	<!-- 			console.log("divPosition=" + divPosition); -->
	<!-- 			$(window).scroll(function() { -->
	<!-- 				let scrollTop = $(this).scrollTop(); -->
	<!-- 				//             console.log("scrollTop="+scrollTop);     -->
	<!-- 				if (scrollTop > divPosition) { -->
	<!-- 					$("#searchbar").addClass("fixed_div"); -->
	<!-- 				} else { -->
	<!-- 					$("#searchbar").removeClass("fixed_div"); -->
	<!-- 				} -->
	<!-- 			}); -->
	<!-- 		}); -->
	<!-- 	</script> -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
		crossorigin="anonymous"></script>
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
		$(document).on("click", "")
	</script>

	<script>
		$('#areaModal').on('shown.bs.modal', function() {
			$('#areaModal').modal('show');
		})

		$('#skillModal').on('shown.bs.modal', function() {
			$('#skillModal').modal('show');
		})
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

<!-- 	<script> -->
<!-- 		// 	window.onload = function(){ -->
<!-- 		var origin = document.getElementById("#typing-keyword"); -->
<!-- 		origin.placeholder = ""; -->
<%-- 		origin.value = "<c:out value='${keyword1}' />"; --%>

<!-- 		// 	} -->
<!-- 	</script> -->

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
			// 			console.log($("#cityList >div div:first-child input:checkbox:checked")[0].value); //抓area+city
			var list = $("#cityList >div div:first-child input:checkbox:checked:not(:disabled)");
			//			console.log($("#cityList >div div:last-child input:checkbox:checked")); //抓city
			var m = 1;
			var n = 1;
			var str1 = "";
			var str2 = "";
			for (var i = 0; i < list.length; i++) {
				if (list[i].value.includes("部")) {
					var id1 = "area" + m;
					var A = document.getElementById(id1);
					A.value = list[i].value;
					m++;
					str1 += list[i].value + "、";
					// 					console.log("str1=" + str1);

				} else {
					var id2 = "city" + n;
					var B = document.getElementById(id2);
					B.value = list[i].value;
					n++;
					str2 += list[i].value + "、";
					// 					console.log("str2=" + str2);
				}
			}
			// 			把選取值寫回頁面上
			// 			console.log("Tstr1=" + str1);
			// 			console.log("Tstr2=" + str2);
			var txt = document.getElementById("inputArea");
			if (str2 == "") {
				str1 = str1.substring(0, str1.length - 1);
				txt.innerHTML = str1;
			} else {
				str2 = str2.substring(0, str2.length - 1);
				txt.innerHTML = str1 + str2;
			}
		}
	</script>

	<script>
		var btn4 = document.getElementById("skillClick");
		btn4.onclick = function() {
			// 			console.log($("#skillL2List >div div:first-child input:checkbox:checked"));
			// 			console.log($("#skillL2List >div div:first-child input:checkbox:checked")[0].value);
			var list = $("#skillL2List >div div:first-child input:checkbox:checked:not(:disabled)");
			//			console.log($("#skillL2List >div div:last-child input:checkbox:checked")); //抓city
			var m = 1;
			var n = 1;
			var str1 = "";
			var str2 = "";
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
					str1 += list[i].value + "、";
					// 					console.log("str1=" + str1);
				} else {
					var id2 = "skill" + n;
					var B = document.getElementById(id2);
					B.value = list[i].value;
					n++;
					str2 += list[i].value + "、";
					// 					console.log("str2=" + str2);
				}
			}
			// 			把選取值寫回頁面上
			var txt = document.getElementById("inputSkill");
			if (str2 == "") {
				str1 = str1.substring(0, str1.length - 1);
				txt.innerHTML = str1;
			} else {
				str2 = str2.substring(0, str2.length - 1);
				txt.innerHTML = str1 + str2;
			}
		}
	</script>

	<script>
		$(function() {
			$("#typing-keyword").keyup(function() {
				var input = $(this).val();
				// 				console.log(input);
				var A = document.getElementById("keyword");
				A.value = input;
			})
		})
	</script>

</body>

</html>