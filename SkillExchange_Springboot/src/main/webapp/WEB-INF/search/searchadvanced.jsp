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
	position: relative;
	width: 100%;
	/* 	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.06); */
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
	border: 2px solid #9D9D9D;
	/* 	border-left: 1px solid #E0E0E0; */
	border-radius: 10px;
	transition: 0.5s;
	margin: 0;
	padding: 0;
}

.wrap-level4 {
	margin: 8px auto;;
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
	width: 85%;
	height: 40px;
	margin: 10px 10px;
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
	text-align: center;
}

.btn-o {
	margin-left: 10x;
	margin-right: 10px;
}

.wrap-level1-2 {
	background-color: #FFFFFF;
	border-top: 1px solid #BEBEBE;
/*  	border: 1px black solid;  */
	margin-top: 5px;
	margin-bottom: 5px;
	position: relative;
	width: 100%;
	height: 40px;
	box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.06);
}

.ul-sort {
	width: 80%;
	margin: 5px auto;
	text-align: center;
}

.li-sort {
	list-style: none;
	display: inline-block;
/* 	margin: 0 10px; */
	cursor: pointer;
	width: 23%;
}

.div-sort {
 	padding-left: 30px; 
 	padding-right: 30px; 
	font-size: 14px;
	line-height: 1.5rem;
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
					<h2>進階搜尋</h2>
				</div>
			</div>
		</div>
	</section>
	<div id="searchbar" class="wrap-level1">
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
				<c:choose>
					<c:when test="${not empty areablock}">
						<div id="inputArea" class="wrap-level5 search-btn">${areablock}</div>
					</c:when>
					<c:otherwise>
						<div id="inputArea" class="wrap-level5 search-btn">地區</div><i class="fa fa-angle-down" style="margin-top: 20px;margin-bottom:20px; margin-right: 4px;font-size:18px;"></i>
					</c:otherwise>
				</c:choose>
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
							<button id="areaClear" type="button" class="btn btn-secondary">清除</button>
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
				<c:choose>
					<c:when test="${not empty skillblock}">
						<div id="inputSkill" class="wrap-level5 search-btn">${skillblock}</div>
					</c:when>
					<c:otherwise>
						<div id="inputSkill" class="wrap-level5 search-btn">技能類別</div><i class="fa fa-angle-down" style="margin-top: 20px;margin-bottom:20px; margin-right: 4px;font-size:18px;"></i>
					</c:otherwise>
				</c:choose>
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
							<button id="skillClear" type="button" class="btn btn-secondary">清除</button>
							<button id="skillClick" type="button" class="btn btn-secondary"
								data-dismiss="modal">確定</button>
						</div>
					</div>
				</div>
			</div>
			<form method="GET" action="<c:url value='InsertKeyword.do' />">
				<div id="container">
					<input type="hidden" id="keyword" name="keyword" value="${keyword1}">
					<input type="hidden" id="area1" name="area1" value="${area1}">
					<input type="hidden" id="area2" name="area2" value="${area2}">
					<input type="hidden" id="area3" name="area3" value="${area3}">
					<input type="hidden" id="city1" name="city1" value="${city1}">
					<input type="hidden" id="city2" name="city2" value="${city2}">
					<input type="hidden" id="city3" name="city3" value="${city3}">
					<input type="hidden" id="city4" name="city4" value="${city4}">
					<input type="hidden" id="city5" name="city5" value="${city5}">
					<input type="hidden" id="type1" name="type1" value="${type1}">
					<input type="hidden" id="type2" name="type2" value="${type2}">
					<input type="hidden" id="type3" name="type3" value="${type3}">
					<input type="hidden" id="type4" name="type4" value="${type4}">
					<input type="hidden" id="skill1" name="skill1" value="${skill1}">
					<input type="hidden" id="skill2" name="skill2" value="${skill2}">
					<input type="hidden" id="skill3" name="skill3" value="${skill3}">
					<input type="hidden" id="skill4" name="skill4" value="${skill4}">
					<input type="hidden" id="skill5" name="skill5" value="${skill5}">
					<input type="hidden" id="areablock" name="areablock" value="">
					<input type="hidden" id="skillblock" name="skillblock" value="">
					<button type="submit" class="btn btn-secondary btn-sm last-btn">
						<i class="fa fa-search"></i>搜尋
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="wrap-level1-2">
	<ul class="ul-sort">
	<li class="li-sort"><span id="fotn" class="badge badge-light div-sort">更新時間    <i class="fas fa-sort-up" style="font-size:15px"></i></span></li>
	<li class="li-sort"><span id="fnto" class="badge badge-light div-sort">更新時間    <i class="fas fa-sort-down"  style="font-size:15px"></i></span></li>
	<li class="li-sort"><span id="fltm" class="badge badge-light div-sort">點擊數    <i class="fas fa-sort-up" style="font-size:15px"></i></span></li>
	<li class="li-sort"><span id="fmtl" class="badge badge-light div-sort">點擊數    <i class="fas fa-sort-down"  style="font-size:15px"></i></span></li>
<!-- 	<li class="li-sort"><span id="flth" class="badge badge-light div-sort">評價 <i class="fas fa-sort-up" style="font-size:15px"></i></span></li> -->
<!-- 	<li class="li-sort"><span id="fhtl" class="badge badge-light div-sort">評價 <i class="fas fa-sort-down"  style="font-size:15px"></i></span></li> -->
	</ul>
	</div>

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
									<h4 class="card-title text-truncate line-clamp2"><a style="color:black;" href="<c:url value='publish?num=${search.publishNo}&hostid=${search.memberRegNo}&status="${search.status}"' />" title="${search.publishTitle}">${search.publishTitle}</a></h4>
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
		$(document).one("mouseenter", "#iarea", function(){
			var area1 = $("#area1").val();
			var area2 = $("#area2").val();
			var area3 = $("#area3").val();
			var city1 = $("#city1").val();
			var city2 = $("#city2").val();
			var city3 = $("#city3").val();
			var city4 = $("#city4").val();
			var city5 = $("#city5").val();
			var area = [area1, area2, area3];
			var city = [city1, city2, city3, city4, city5];
			
			var north = [ "基隆", "台北", "新北", "桃園", "新竹" ];
			var center = [ "苗栗", "台中", "彰化", "南投", "雲林" ];
			var south = [ "嘉義", "台南", "高雄", "屏東" ];
			var east = [ "台東", "花蓮", "宜蘭" ];

			for(var i = 0; i < area.length; i++){
				$(".checkbox-input[value*='"+ area[i] +"']").prop("checked", true);
				if (area[i] == "北部"){
					str = north;
				} else if(area[i] == "中部"){
					str = center;
				} else if(area[i] == "南部") {
					str = south;	
				} else if(area[i] == "東部") {
					str = east;	
				} else {
					str = "";
				}
// 				console.log("str=" + str)
				for (var j = 0; j < str.length; j++){
					if(str[j] != "") {
						$(".checkbox-input[value*='"+ str[j] +"']").prop("checked", true).attr("disabled", true)
					}
				}
			}
			
			for(var c = 0; c < city.length; c++){
				$(".checkbox-input[value*='"+ city[c] +"']").prop("checked", true);
			}
			
		})
	</script>
	
	<script>
	$(document).one("mouseenter", "#iskill", function(){
		var type1 = $("#type1").val();
		var type2 = $("#type2").val();
		var type3 = $("#type3").val();
		var type4 = $("#type4").val();
		var skill1 = $("#skill1").val();
		var skill2 = $("#skill2").val();
		var skill3 = $("#skill3").val();
		var skill4 = $("#skill4").val();
		var skill5 = $("#skill5").val();
		var type = [type1, type2, type3, type4];
		var skill = [skill1, skill2, skill3, skill4, skill5];
		
		var art = [ "歌唱", "跳舞", "繪畫", "演戲" ];
		var life = [ "化妝", "煮飯", "居家清潔" ];
		var sport = [ "足球", "羽毛球", "網球", "排球" ];
		var language = [ "法文", "日文", "韓文", "西班牙文" ];
		var pet = [ "養鸚鵡", "養狗", "養貓", "養魚" ]
		
		for(var i = 0; i < type.length; i++){
			$(".checkbox-input[value*='"+ type[i] +"']").prop("checked", true);
			if (type[i] == "才藝"){
				str = art;
			} else if(type[i] == "生活"){
				str = life;
			} else if(type[i] == "運動") {
				str = sport;	
			} else if(type[i] == "語言") {
				str = language;	
			} else if(type[i] == "寵物"){
				str = pet;
			} else {
				str = "";
			}
			for (var j = 0; j < str.length; j++){
				if(str[j] != "") {
					$(".checkbox-input[value*='"+ str[j] +"']").prop("checked", true).attr("disabled", true)
				}
			}
		}
		for(var c = 0; c < skill.length; c++){
			$(".checkbox-input[value*='"+ skill[c] +"']").prop("checked", true);
		}
		
	})
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
			if(list.length != 0){
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
			} else {
				document.getElementById("area1").value = "";
				document.getElementById("area2").value = "";
				document.getElementById("area3").value = "";
				document.getElementById("city1").value = "";
				document.getElementById("city2").value = "";
				document.getElementById("city3").value = "";
				document.getElementById("city4").value = "";
				document.getElementById("city5").value = "";
			}
			// 			把選取值寫回頁面上
			// 			console.log("Tstr1=" + str1);
			// 			console.log("Tstr2=" + str2);
			var txt = document.getElementById("inputArea");
			if(str1 == "" && str2 == ""){
				txt.innerHTML = "地區";
				areablock.value = "";
			}else if (str2 == "") {
				str1 = str1.substring(0, str1.length - 1);
				txt.innerHTML = str1;
				areablock.value = str1;
			} else {
				str2 = str2.substring(0, str2.length - 1);
				txt.innerHTML = str1 + str2;
				areablock.value = str1 + str2;
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
			if(list.length != 0){
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
			} else {
				document.getElementById("type1").value = "";
				document.getElementById("type2").value = "";
				document.getElementById("type3").value = "";
				document.getElementById("type4").value = "";
				document.getElementById("skill1").value = "";
				document.getElementById("skill2").value = "";
				document.getElementById("skill3").value = "";
				document.getElementById("skill4").value = "";
				document.getElementById("skill5").value = "";
			}
			// 			把選取值寫回頁面上
			var txt = document.getElementById("inputSkill");
			if(str1 == "" && str2 == ""){
				txt.innerHTML = "技能類別";
				skillblock.value = "";
			}else if (str2 == "") {
				str1 = str1.substring(0, str1.length - 1);
				txt.innerHTML = str1;
				skillblock.value = str1;
			} else {
				str2 = str2.substring(0, str2.length - 1);
				txt.innerHTML = str1 + str2;
				skillblock.value = str1 + str2;
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
	
	<script>
	$(document).on("click", "#areaClear", function(){
		$("#cityList input:checkbox:checked").prop("checked", false).attr("disabled", false);
	})
	</script>
	
	<script>
	$(document).on("click", "#skillClear", function(){
		$("#skillL2List input:checkbox:checked").prop("checked", false).attr("disabled", false);
	})
	</script>
	
	<script>
		$(document).on("click", "#fotn", function(){
			var input = document.getElementById("container2");
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='QuerySort1.do' />", true);
			xhr.send();
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4){
					if(xhr.status == 200){
// 						console.log(JSON.parse(xhr.responseText));
						var arr = JSON.parse(xhr.responseText);
						var content1 = "<div class='card-deck'>";
						var content2 = "";
						for(var i = 0; i < arr[0].length; i++){
							content2 += "<div class='result'><div class='card'><div class='card-header bg-transparent'>";
							if(arr[0][i].memberNic == null){
								content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + "我是某某某" + "</span>";
							} else {
								content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + arr[0][i].memberNic + "</span>";
							}
							content2 += "</div><div class=''>";
							content2 += "<img class='card-img img' src='" + arr[0][i].publishPic + "' alt='" + arr[0][i].publishPic + "'></div>";
							content2 += "<div class='card-body'>";
							content2 += "<h4 class='card-title text-truncate line-clamp2'>" + arr[0][i].publishTitle + "</h4>";
							content2 += "<div class='card-text text-truncate line-clamp3 detail'>" + arr[0][i].publishDetail + "</div>";
							content2 += "<h6><i class='far fa-handshake' style='font-size:14px'></i>" + " 提供交換技能: " + arr[0][i].ownType + " - " + arr[0][i].ownSkill +"</h6>";
							content2 += "<h6><i class='fas fa-map-marker-alt' style='font-size:20px'></i>" + arr[0][i].publishArea + " - " + arr[0][i].city + "</h6>";
							content2 += "<div style='text-align: right'>";
							var date = new Date(arr[0][i].updateTime);
							var M = date.getMonth();
							if(M < 9){
								M = "0" + (M + 1);
							} else {
								M = M + 1;
							}
							
							var D = date.getDate();
							if(D < 10){
								D = "0" + D;
							} else {
								D
							}
							
							var H = date.getHours();
							if(H < 10){
								H = "0" + H;
							}else {
								H
							}
							
							var m = date.getMinutes();
							if(m < 10){
								m = "0" + m;
							} else {
								m
							}
							var dformat = [date.getFullYear(), 
// 						   					date.getMonth()+1,
											M,
// 						              		date.getDate()
						              		D].join('-')+' '+
						    			  [H,
// 						    				  date.getHours(),
// 						    				date.getMinutes()
						    				m].join(':');
						    content2 += "<small class='text-muted'>" + "最後更新日期: " +  dformat + "</small></div></div>";
							content2 += "<div class='card-footer last-part'>";
							content2 += "<button type='button' class='btn btn-success btn-o'>" + "加入收藏 " + "<i class='far fa-heart'></i></i></button>";
							content2 += "<button type='button' class='btn btn-primary btn-o'>" + "發送訊息 " + "<i class='far fa-comment-dots'></i></button>";
							content2 += "</div></div></div>"
						}
						var content = content1 + content2 + "</div>";
						input.innerHTML = content;
				}
			}
		}})
	</script>
	
	<script>
	$(document).on("click", "#fnto", function(){
		var input = document.getElementById("container2");
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='QuerySort2.do' />", true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
// 					console.log(JSON.parse(xhr.responseText));
					var arr = JSON.parse(xhr.responseText);
					var content1 = "<div class='card-deck'>";
					var content2 = "";
					for(var i = 0; i < arr[0].length; i++){
						content2 += "<div class='result'><div class='card'><div class='card-header bg-transparent'>";
						if(arr[0][i].memberNic == null){
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + "我是某某某" + "</span>";
						} else {
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + arr[0][i].memberNic + "</span>";
						}
						content2 += "</div><div class=''>";
						content2 += "<img class='card-img img' src='" + arr[0][i].publishPic + "' alt='" + arr[0][i].publishPic + "'></div>";
						content2 += "<div class='card-body'>";
						content2 += "<h4 class='card-title text-truncate line-clamp2'>" + arr[0][i].publishTitle + "</h4>";
						content2 += "<div class='card-text text-truncate line-clamp3 detail'>" + arr[0][i].publishDetail + "</div>";
						content2 += "<h6><i class='far fa-handshake' style='font-size:14px'></i>" + " 提供交換技能: " + arr[0][i].ownType + " - " + arr[0][i].ownSkill +"</h6>";
						content2 += "<h6><i class='fas fa-map-marker-alt' style='font-size:20px'></i>" + arr[0][i].publishArea + " - " + arr[0][i].city + "</h6>";
						content2 += "<div style='text-align: right'>";
						var date = new Date(arr[0][i].updateTime);
						var M = date.getMonth();
						if(M < 9){
							M = "0" + (M + 1);
						} else {
							M = M + 1;
						}
						
						var D = date.getDate();
						if(D < 10){
							D = "0" + D;
						} else {
							D
						}
						
						var H = date.getHours();
						if(H < 10){
							H = "0" + H;
						}else {
							H
						}
						
						var m = date.getMinutes();
						if(m < 10){
							m = "0" + m;
						} else {
							m
						}
						var dformat = [date.getFullYear(), 
//						   					date.getMonth()+1,
										M,
//						              		date.getDate()
					              		D].join('-')+' '+
					    			  [H,
//						    				  date.getHours(),
//						    				date.getMinutes()
					    				m].join(':');
					    content2 += "<small class='text-muted'>" + "最後更新日期: " +  dformat + "</small></div></div>";
						content2 += "<div class='card-footer last-part'>";
						content2 += "<button type='button' class='btn btn-success btn-o'>" + "加入收藏 " + "<i class='far fa-heart'></i></i></button>";
						content2 += "<button type='button' class='btn btn-primary btn-o'>" + "發送訊息 " + "<i class='far fa-comment-dots'></i></button>";
						content2 += "</div></div></div>"
					}
					var content = content1 + content2 + "</div>";
					input.innerHTML = content;
				}
			}
		}
	})
	</script>
	
	<script>
	$(document).on("click", "#fmtl", function(){
		var input = document.getElementById("container2");
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='QuerySort3.do' />", true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
// 					console.log(JSON.parse(xhr.responseText));
					var arr = JSON.parse(xhr.responseText);
					var content1 = "<div class='card-deck'>";
					var content2 = "";
					for(var i = 0; i < arr[0].length; i++){
						content2 += "<div class='result'><div class='card'><div class='card-header bg-transparent'>";
						if(arr[0][i].memberNic == null){
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + "我是某某某" + "</span>";
						} else {
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + arr[0][i].memberNic + "</span>";
						}
						content2 += "</div><div class=''>";
						content2 += "<img class='card-img img' src='" + arr[0][i].publishPic + "' alt='" + arr[0][i].publishPic + "'></div>";
						content2 += "<div class='card-body'>";
						content2 += "<h4 class='card-title text-truncate line-clamp2'>" + arr[0][i].publishTitle + "</h4>";
						content2 += "<div class='card-text text-truncate line-clamp3 detail'>" + arr[0][i].publishDetail + "</div>";
						content2 += "<h6><i class='far fa-handshake' style='font-size:14px'></i>" + " 提供交換技能: " + arr[0][i].ownType + " - " + arr[0][i].ownSkill +"</h6>";
						content2 += "<h6><i class='fas fa-map-marker-alt' style='font-size:20px'></i>" + arr[0][i].publishArea + " - " + arr[0][i].city + "</h6>";
						content2 += "<div style='text-align: right'>";
						var date = new Date(arr[0][i].updateTime);
						var M = date.getMonth();
						if(M < 9){
							M = "0" + (M + 1);
						} else {
							M = M + 1;
						}
						
						var D = date.getDate();
						if(D < 10){
							D = "0" + D;
						} else {
							D
						}
						
						var H = date.getHours();
						if(H < 10){
							H = "0" + H;
						}else {
							H
						}
						
						var m = date.getMinutes();
						if(m < 10){
							m = "0" + m;
						} else {
							m
						}
						var dformat = [date.getFullYear(), 
//						   					date.getMonth()+1,
										M,
//						              		date.getDate()
					              		D].join('-')+' '+
					    			  [H,
//						    				  date.getHours(),
//						    				date.getMinutes()
					    				m].join(':');
					    content2 += "<small class='text-muted'>" + "最後更新日期: " +  dformat + "</small></div></div>";
						content2 += "<div class='card-footer last-part'>";
						content2 += "<button type='button' class='btn btn-success btn-o'>" + "加入收藏 " + "<i class='far fa-heart'></i></i></button>";
						content2 += "<button type='button' class='btn btn-primary btn-o'>" + "發送訊息 " + "<i class='far fa-comment-dots'></i></button>";
						content2 += "</div></div></div>"
					}
					var content = content1 + content2 + "</div>";
					input.innerHTML = content;
				}
			}
		}
	})
	</script>
	
	<script>
	$(document).on("click", "#fltm", function(){
		var input = document.getElementById("container2");
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "<c:url value='QuerySort4.do' />", true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
// 					console.log(JSON.parse(xhr.responseText));
					var arr = JSON.parse(xhr.responseText);
					var content1 = "<div class='card-deck'>";
					var content2 = "";
					for(var i = 0; i < arr[0].length; i++){
						content2 += "<div class='result'><div class='card'><div class='card-header bg-transparent'>";
						if(arr[0][i].memberNic == null){
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + "我是某某某" + "</span>";
						} else {
							content2 += "<img class='collectImg' alt='' src='" + arr[0][i].memberPic + "'><span> " + arr[0][i].memberNic + "</span>";
						}
						content2 += "</div><div class=''>";
						content2 += "<img class='card-img img' src='" + arr[0][i].publishPic + "' alt='" + arr[0][i].publishPic + "'></div>";
						content2 += "<div class='card-body'>";
						content2 += "<h4 class='card-title text-truncate line-clamp2'>" + arr[0][i].publishTitle + "</h4>";
						content2 += "<div class='card-text text-truncate line-clamp3 detail'>" + arr[0][i].publishDetail + "</div>";
						content2 += "<h6><i class='far fa-handshake' style='font-size:14px'></i>" + " 提供交換技能: " + arr[0][i].ownType + " - " + arr[0][i].ownSkill +"</h6>";
						content2 += "<h6><i class='fas fa-map-marker-alt' style='font-size:20px'></i>" + arr[0][i].publishArea + " - " + arr[0][i].city + "</h6>";
						content2 += "<div style='text-align: right'>";
						var date = new Date(arr[0][i].updateTime);
						var M = date.getMonth();
						if(M < 9){
							M = "0" + (M + 1);
						} else {
							M = M + 1;
						}
						
						var D = date.getDate();
						if(D < 10){
							D = "0" + D;
						} else {
							D
						}
						
						var H = date.getHours();
						if(H < 10){
							H = "0" + H;
						}else {
							H
						}
						
						var m = date.getMinutes();
						if(m < 10){
							m = "0" + m;
						} else {
							m
						}
						var dformat = [date.getFullYear(), 
//						   					date.getMonth()+1,
										M,
//						              		date.getDate()
					              		D].join('-')+' '+
					    			  [H,
//						    				  date.getHours(),
//						    				date.getMinutes()
					    				m].join(':');
					    content2 += "<small class='text-muted'>" + "最後更新日期: " +  dformat + "</small></div></div>";
						content2 += "<div class='card-footer last-part'>";
						content2 += "<button type='button' class='btn btn-success btn-o'>" + "加入收藏 " + "<i class='far fa-heart'></i></i></button>";
						content2 += "<button type='button' class='btn btn-primary btn-o'>" + "發送訊息 " + "<i class='far fa-comment-dots'></i></button>";
						content2 += "</div></div></div>"
					}
					var content = content1 + content2 + "</div>";
					input.innerHTML = content;
				}
			}
		}
	})
	</script>
</body>

</html>