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
<script src="js/echarts.min.js"></script>
<!-- e chart CDN -->
<style>
</style>
</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav">
		<jsp:include page="/fragment/left.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active"><h1 class="text-center"
								stylle="color:black">
								<b>後台首頁</b>
							</h1></li>
					</ol>
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary my-4 h4">會員人數
											</div>
											<div class="h4 mb-4 font-weight-bold text-gray-800" id="board1"></div>
										</div>
										<div class="col-auto">
											<i class="fa fa-users fa-4x" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary my-4 h4">活動數量
											</div>
											<div class="h4 mb-4 font-weight-bold text-gray-800" id="board2"></div>
										</div>
										<div class="col-auto">
											<i class="fa fa-calendar fa-4x" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary my-4 h4">留言總數
											</div>
											<div class="h4 mb-4 font-weight-bold text-gray-800" id="board3"></div>
										</div>
										<div class="col-auto">
											<i class="fa fa-comments fa-4x" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Pending Requests Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary my-4 h4">交換次數
											</div>
											<div class="h4 mb-4 font-weight-bold text-gray-800" id="board4"></div>
										</div>
										<div class="col-auto">
											<i class="fa fa-exchange fa-4x" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i>上週活動刊登情況
								</div>
								<div class="card-body">
									<div id="myAreaChart" width="100%" height="40"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i>上週交換次數情況
								</div>
								<div class="card-body">
									<div id="myBarChart" width="100%" height="40"></div>
								</div>
							</div>
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
	<script src="pluginstemp/jquery/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			window.onload = function() {
				$.ajax({
					url : "GetBackendStatis", //請求的url地址
					dataType : "json", //返回格式為json
					async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
					type : "GET", //請求方式
					success : function(req) {
						console.log(req);
						$("#board1").html(req[0]+"人");
						$("#board2").html(req[1]+"篇");
						$("#board3").html(req[2]+"則");
						$("#board4").html(Math.round(req[3]/2)+"次");
					},
					complete : function() {
						//請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});
			}
		})
	</script>
</body>
</html>