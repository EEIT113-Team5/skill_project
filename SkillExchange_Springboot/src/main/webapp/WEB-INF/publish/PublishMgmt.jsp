<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>SkillExchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/echarts.min.js"></script>

<!-- e chart CDN -->
<style>
* {
	font-family: 微軟正黑體;
}

#main {
	display: none;
}

#second {
	display: none;
}
</style>
</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav">
		<jsp:include page="/fragment/left.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4"
						style="text-shadow: 1px 1px gray; text-align: center">刊登管理</h1>

					<div id="mainPublish" style="width: 600px; height: 400px;"></div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('mainPublish'));

						var allString = JSON.parse('${allString}');

						console.log(allString);

						var count = 0;
						for ( var js in allString) {
							count++;
						}

						console.log(count);

						var skillList = new Array();

						var art_count = 0;
						var sports_count = 0;
						var lang_count = 0;
						var pet_count = 0;
						var life_count = 0;

						for (var i = 0; i < count; i++) {
							if (allString[i].skillType == "才藝") {
								art_count++;
							}
							if (allString[i].skillType == "運動") {
								sports_count++;
							}
							if (allString[i].skillType == "語言") {
								lang_count++;
							}
							if (allString[i].skillType == "寵物") {
								pet_count++;
							}
							if (allString[i].skillType == "生活") {
								life_count++;
							}

							// 							if (skillList.indexOf(allString[i].skillType) > -1) {
							// 								console.log("已存在")
							// 							} else {
							// 								skillList.push(allString[i].skillType);
							// 								console.log(allString[i].skillType);
							// 							}
						}
						console.log(skillList);

						// 指定图表的配置项和数据
						var option = {
							tooltip : {
								trigger : 'item',
								formatter : '{a} <br/>{b}: {c} ({d}%)'
							},
							legend : {
								orient : 'vertical',
								left : 10,
								data : [ '才藝', '運動', '語言', '寵物', '生活' ]
							},
							series : [ {
								name : '技能類型',
								type : 'pie',
								radius : [ '50%', '70%' ],
								avoidLabelOverlap : false,
								label : {
									show : false,
									position : 'center'
								},
								emphasis : {
									label : {
										show : true,
										fontSize : '30',
										fontWeight : 'bold'
									}
								},
								labelLine : {
									show : false
								},
								data : [ {
									value : art_count,
									name : '才藝'
								}, {
									value : sports_count,
									name : '運動'
								}, {
									value : lang_count,
									name : '語言'
								}, {
									value : pet_count,
									name : '寵物'
								}, {
									value : life_count,
									name : '生活'
								} ]
							} ]
						};

						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
					<div id="tabs">
						<ul>
							<li><a href="#tabs-1">刊登列表</a></li>
							<li><a href="#tabs-2">下架列表</a></li>

						</ul>
						<div id="tabs-1">
							<table class="table table-hover tablemanager">
								<thead class="thead-light">
									<tr>
										<th scope="col">#</th>
										<th scope="col">刊登編號</th>
										<th scope="col">會員編號</th>
										<th scope="col">刊登標題</th>
										<th scope="col">刊登狀態</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty allList}">
										<c:forEach items="${allList}" var="allList" varStatus="alL">
											<c:if test="${allList.status == 1}">
												<tr>
													<th scope="row">${myh1.index}</th>
													<td>${allList.publishNo}</td>
													<td>${allList.memberRegNo}</td>
													<c:if test="${allList.publishTitle.length() >6 }">
														<td>${allList.publishTitle.substring(0,6)}......</td>
													</c:if>
													<c:if test="${allList.publishTitle.length() <= 6 }">
														<td>${allList.publishTitle}</td>
													</c:if>
													<td>狀態:正常</td>
													<td><button type="button" class="btn btn-primary">
															<a style="color: white;"
																href="myPublishDel?publishNo=${allList.publishNo}">刪除</a>
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<div id="tabs-2">
							<table class="table table-hover tablemanager">
								<thead class="thead-light">
									<tr>
										<th scope="col">#</th>
										<th scope="col">刊登編號</th>
										<th scope="col">會員編號</th>
										<th scope="col">刊登標題</th>
										<th scope="col">刊登狀態</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty allList}">
										<c:forEach items="${allList}" var="allList" varStatus="alL">
											<c:if test="${allList.status == 0}">
												<tr>
													<th scope="row">${myh1.index}</th>
													<td>${allList.publishNo}</td>
													<td>${allList.memberRegNo}</td>
													<c:if test="${allList.publishTitle.length() >6 }">
														<td>${allList.publishTitle.substring(0,6)}......</td>
													</c:if>
													<c:if test="${allList.publishTitle.length() <= 6 }">
														<td>${allList.publishTitle}</td>
													</c:if>
													<td>狀態:已下架</td>
													<td><button type="button" class="btn btn-primary">
															<a style="color: white;"
																href="myPublishDel?publishNo=${allList.publishNo}">刪除</a>
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>

					</div>



				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Exchange platform</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script src="js/jquery-ui.js"></script>
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
	<script>
		$(function() {
			$("#tabs").tabs({
				active : 0,
				event : "click"
			});
		});
	</script>
	<script src="js/tableManager.js?ver=20200529"></script>
	<script type="text/javascript">
		// basic usage
		$('.tablemanager').tablemanager({

			appendFilterby : false,
			debug : true,
			vocabulary : {
				voc_filter_by : 'Filter By',
				voc_type_here_filter : 'Filter...',
				voc_show_rows : 'Rows Per Page'
			},
			pagination : true,
		});
		$(".pagesControllers").addClass("pagination");
		$(".pagecontroller").addClass("page-link");
	</script>
</body>
</html>