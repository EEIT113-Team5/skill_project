<%@page import="publishPage.Model.publishCityBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zt-TW">
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>刊登頁面-Skill Exchange</title>
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
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<style>

/* body { */
/* 	margin: 100px; */
/* } */

/* 讓意見表單不可以被拉大小 */
textarea {
	resize: none;
}

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
					<h2>刊登資訊</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-7">
				<div class="card shadow-lg border-0 rounded-lg mt-5">
					<div class="card-header">
						<h3 class="text-center font-weight-light my-4 ">刊登資訊</h3>
					</div>
					<div class="card-body">
						<form class="form" action="publishPage" method="POST"
							enctype="multipart/form-data">

							<fieldset class="fieldest">
								<legend class="legend">
									刊登資訊
									<div>
										<input type="button" onclick='oneKey()'
											value=".&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp."
											class="btn">
									</div>
								</legend>
								<br>
								<table>
									<tr>
										<td><label for="">刊登標題:</label></td>
										<td><input type='text' name='publishTitle'
											value="${publishTitle}" id="publishTitle"></td>
										<td><font color='red' size='-3'>${error.publishTitle}</font></td>
									</tr>
									<tr>
										<td><label for="">照片:</label></td>
										<td><input type="file" onchange="readURL(this)"
											name='publishPic' targetID="prePic"> <br> <img
											id="prePic" style="display: none" src="#" width="200px"
											name='prePic' value="${publishPic}" /></td>
									</tr>
									<tr>
										<td><label for="">刊登內容:</label></td>
										<td><textarea cols="40" row="5" name='publishDetail'
												value='${publishDetail}' id="publishDetail"></textarea></td>
										<td><font color='red' size='-3'>${error.publishDetail}</font></td>
									</tr>
									<tr>
										<td><label for="">自己的類型:</label></td>
										<td><select id="selSkill2" name='skillType2'>
												<option value="">請選擇</option>
												<option value="才藝">才藝</option>
												<option value="運動">運動</option>
												<option value="語言">語言</option>
												<option value="寵物">寵物</option>
												<option value="生活">生活</option>
										</select></td>
										<td><font color='red' size='-3'>${error.ownSkill}</font></td>
									</tr>
									<tr>
										<td><label for="">自己的技能:</label></td>
										<td><select id="myownskill" name='ownSkill'>
												<option value="">請選擇</option>
												<c:forEach varStatus="vs" var="a" items="${skill}">
													<option value="${a.skillNameCN}">${a.skillNameCN}</option>
												</c:forEach>
										</select></td>
										<td><font color='red' size='-3'>${error.ownSkill}</font></td>
									</tr>
									<tr>
										<td><label for="">想學的類型:</label></td>
										<td><select id="selSkill" name='skillType'
											onchange="showSkill()">
												<option value="">請選擇</option>
												<option value="才藝">才藝</option>
												<option value="運動">運動</option>
												<option value="語言">語言</option>
												<option value="寵物">寵物</option>
												<option value="生活">生活</option>
										</select></td>
										<td><font color='red' size='-3'>${error.ownSkill}</font></td>
									</tr>
									<tr>
										<td><label for="">想學的技能:</label></td>
										<td><select id="selWantSkill" name='wantSkill'>
												<option value="">請選擇</option>
												<%-- 												<c:forEach varStatus="vs" var="a" items="${skill}"> --%>
												<%-- 													<option value="${a.skillNameCN}">${a.skillNameCN}</option> --%>
												<%-- 												</c:forEach> --%>
										</select></td>
										<td><font color='red' size='-3'>${error.wantSkill}</font></td>
									</tr>
								</table>
							</fieldset>

							<fieldset class="fieldest">
								<legend class="legend">刊登地點</legend>
								<br>
								<table>
									<tr>
										<td><label for="">刊登地區:</label></td>
										<td><select id="selPubArea1" name='publishArea'
											onchange="showCity()">
												<option>請選擇</option>
												<option value='北部'>北部</option>
												<option value='中部'>中部</option>
												<option value='南部'>南部</option>
												<option value='東部'>東部</option>
										</select></td>
										<td><font color='red' size='-3'>${error.publishArea}</font></td>
									</tr>
									<tr>
										<td><label for="">刊登城市:</label></td>
										<td><select id="selCity" name='City'>
												<option value="">請選擇</option>
												<c:forEach varStatus="vs" var="a" items="${city}">
													<c:if test='${vs.index==0}'>
														<option disabled>---北部---</option>
													</c:if>
													<c:if test='${vs.index==5}'>
														<option disabled>---中部---</option>
													</c:if>
													<c:if test='${vs.index==10}'>
														<option disabled>---南部---</option>
													</c:if>
													<c:if test='${vs.index==14}'>
														<option disabled>---東部---</option>
													</c:if>
													<option value="${a.cityCN}">${a.cityCN}</option>
												</c:forEach>
										</select></td>
										<td><font color='red' size='-3'>${error.City}</font></td>
									</tr>
									<tr>
										<td><label for="">鄉鎮:</label></td>
										<td><input type='text' name='district'
											value='${district}' id="district"></td>
										<hr>
										<td><label for="">路名:</label></td>
										<td><input type='text' name='road' value='${param.road}'
											id="road"></td>
									</tr>
									<tr>
										<td><label for="">希望地點:</label></td>
										<td><input type='text' name='publishPlace'
											value='${publishPlace}' id="publishPlace"></td>
										<hr>
										<td><font color='red' size='-3'>${error.publishPlace}</font></td>
									</tr>
								</table>
							</fieldset>

							<fieldset class="fieldest">
								<legend class="legend">備註</legend>
								<table>
									<tr>
										<td><label for="">備註:</label></td>
										<td><textarea cols="40" row="5" name='publishMark'
												value='${param.publishMark}' id="publishMark"></textarea></td>
									</tr>
								</table>
							</fieldset>
							<input type='submit' value='下一步'>
						</form>
					</div>
				</div>
			</div>
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
	<script>
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
	</script>
	<script type="text/javascript">
		function showSkill() {
			var skill = document.getElementById('selSkill').value;
			document.getElementById("selWantSkill").length = 0;
			document.getElementById("selWantSkill").options.add(new Option(
					"請選擇"));
			if (skill == '才藝') {
				document.getElementById("selWantSkill").options.add(new Option(
						"歌唱"));
				document.getElementById("selWantSkill").options.add(new Option(
						"跳舞"));
				document.getElementById("selWantSkill").options.add(new Option(
						"繪畫"));
				document.getElementById("selWantSkill").options.add(new Option(
						"演戲"));
			}
			if (skill == '運動') {
				document.getElementById("selWantSkill").options.add(new Option(
						"足球"));
				document.getElementById("selWantSkill").options.add(new Option(
						"羽毛球"));
				document.getElementById("selWantSkill").options.add(new Option(
						"網球"));
				document.getElementById("selWantSkill").options.add(new Option(
						"排球"));
			}
			if (skill == '語言') {
				document.getElementById("selWantSkill").options.add(new Option(
						"法文"));
				document.getElementById("selWantSkill").options.add(new Option(
						"日文"));
				document.getElementById("selWantSkill").options.add(new Option(
						"韓文"));
				document.getElementById("selWantSkill").options.add(new Option(
						"西班牙文"));
			}
			if (skill == '寵物') {
				document.getElementById("selWantSkill").options.add(new Option(
						"養鸚鵡"));
				document.getElementById("selWantSkill").options.add(new Option(
						"養狗"));
				document.getElementById("selWantSkill").options.add(new Option(
						"養貓"));
				document.getElementById("selWantSkill").options.add(new Option(
						"養魚"));
			}
			if (skill == '生活') {
				document.getElementById("selWantSkill").options.add(new Option(
						"化妝"));
				document.getElementById("selWantSkill").options.add(new Option(
						"煮飯"));
				document.getElementById("selWantSkill").options.add(new Option(
						"居家清潔"));
			}

		}

		function showCity() {
			var area = document.getElementById('selPubArea1').value;
			// 			  var x = document.getElementById("selPubArea1").selectedIndex;
			// 			  var y = document.getElementById("selPubArea1").options;
			// 			  var area=y[x].text;

			document.getElementById("selCity").length = 0;
			document.getElementById("selCity").options.add(new Option("請選擇"));

			console.log(area);
			if (area == '北部') {
				document.getElementById("selCity").options
						.add(new Option("基隆"));
				document.getElementById("selCity").options
						.add(new Option("台北"));
				document.getElementById("selCity").options
						.add(new Option("新北"));
				document.getElementById("selCity").options
						.add(new Option("桃園"));
				document.getElementById("selCity").options
						.add(new Option("新竹"));
			}
			if (area == '中部') {
				document.getElementById("selCity").options
						.add(new Option("苗栗"));
				document.getElementById("selCity").options
						.add(new Option("台中"));
				document.getElementById("selCity").options
						.add(new Option("彰化"));
				document.getElementById("selCity").options
						.add(new Option("南投"));
				document.getElementById("selCity").options
						.add(new Option("雲林"));
			}
			if (area == '南部') {
				document.getElementById("selCity").options
						.add(new Option("嘉義"));
				document.getElementById("selCity").options
						.add(new Option("台南"));
				document.getElementById("selCity").options
						.add(new Option("高雄"));
				document.getElementById("selCity").options
						.add(new Option("屏東"));
			}
			if (area == '東部') {
				document.getElementById("selCity").options
						.add(new Option("台東"));
				document.getElementById("selCity").options
						.add(new Option("花蓮"));
				document.getElementById("selCity").options
						.add(new Option("宜蘭"));
			}

		}
	</script>

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

	<!-- 一鍵刊登 -->
	<script>
		function oneKey() {
			$("#publishTitle").val("學習唱歌");
			$("#publishDetail").val("我唱歌常常五音不全，因此想找一個擅長唱歌的人教我如何發聲及音準方面的技巧。");
			$("#selSkill2").val("語言");
			$("#myownskill").val("日文");
			$("#district").val("萬華區");
			$("#road").val("成都路");
			$("#publishPlace").val("西門町星聚點");
			$("#publishMark").val("我有日文N2證照。");
		}
	</script>

	<!-- 一鍵刊登 -->

	<!-- ---------------------要加的部份-------------------- -->
</body>

</html>