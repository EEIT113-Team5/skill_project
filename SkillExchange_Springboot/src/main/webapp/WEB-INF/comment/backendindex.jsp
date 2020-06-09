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
<script src="pluginstemp/jquery/jquery.min.js"></script>
<script src="js/echarts.min.js"></script>
<link rel="shortcut icon" type="image/x-icon"
	href="imagestemp/SkillLogo2.png" />
<!-- e chart CDN -->
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
					<ol class="breadcrumb my-4">
						<li class="breadcrumb-item active"><h4 class="text-center"
								style="color: black">
								<b>Dashboard </b>
							</h4></li>
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
											<div class="h4 mb-4 font-weight-bold text-gray-800"
												id="board1"></div>
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
											<div class="h4 mb-4 font-weight-bold text-gray-800"
												id="board2"></div>
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
											<div class="h4 mb-4 font-weight-bold text-gray-800"
												id="board3"></div>
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
											<div class="h4 mb-4 font-weight-bold text-gray-800"
												id="board4"></div>
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
									<i class="fas fa-chart-bar mr-1"></i>
									<h4 style="text-align: center">
										<b>技能趨勢</b>
									</h4>
								</div>
								<div class="card-body">
									<div id="myBarChart2" style="width: 100%; height: 500px;"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i>
									<h4 style="text-align: center">
										<b>活動趨勢</b>
									</h4>
								</div>
								<div class="card-body">
									<div id="myBarChart3" style="width: 100%; height: 500px;"></div>
								</div>
							</div>
						</div>
						
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i>
									<h4 style="text-align: center">
										<b>上週活動刊登情況</b>
									</h4>
								</div>
								<div class="card-body">
									<div id="myBarChart" style="width: 100%; height: 500px;"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i>
									<h4 style="text-align: center">
										<b>今年每月交換次數分布</b>
									</h4>
								</div>
								<div class="card-body">
									<div id="myBarChart1" style="width: 100%; height: 500px;"></div>
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
	<script>
		$(document).ready(function() {
		//	window.onload = function() {
				
				$.ajax({
					url : "GetBackendStatis", //請求的url地址
					dataType : "json", //返回格式為json
					async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
					type : "GET", //請求方式
					success : function(req) {
						console.log(req);
						$("#board1").html(req[0] + "人");
						$("#board2").html(req[1] + "篇");
						$("#board3").html(req[2] + "則");
						$("#board4").html(Math.round(req[3] / 2) + "次");
					},
					complete : function() {
						//請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});
				
				$.ajax({
					url : "GetBackendCTR", //請求的url地址
					dataType : "json", //返回格式為json
					async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
					type : "GET", //請求方式
					success : function(CTR) {										
					
					var myChart2 = echarts.init(document.getElementById('myBarChart2'));
					option2 = {
						    title: {
						        text: '比例圖資料來源:技能類別點擊數',			    
						        left: 'center'
						    },
						    tooltip: {
						        trigger: 'item',
						        formatter: '{a} <br/>{b} : {c} ({d}%)'
						    },
						    legend: {
						        orient: 'vertical',
						        left: 'left',
						        data: ['才藝', '運動', '語言', '寵物', '生活']
						    },
						    series: [
						        {
						            name: '來源',
						            type: 'pie',
						            radius: '55%',
						            center: ['50%', '60%'],
						            data: [
						                {value: CTR[0]["typeCTR"], name: '才藝'},
						                {value: CTR[1]["typeCTR"], name: '運動'},
						                {value: CTR[2]["typeCTR"], name: '語言'},
						                {value: CTR[3]["typeCTR"], name: '寵物'},
						                {value: CTR[4]["typeCTR"], name: '生活'}
						            ],
						            emphasis: {
						                itemStyle: {
						                    shadowBlur: 10,
						                    shadowOffsetX: 0,
						                    shadowColor: 'rgba(0, 0, 0, 0.5)'
						                }
						            }
						        }
						    ]
						};
					myChart2.setOption(option2);
					
					var myChart3 = echarts.init(document.getElementById('myBarChart3'));
					option3 = {
						    title: {
						        text: '比例圖資料來源:活動類別點擊數',			      
						        left: 'center'
						    },
						    tooltip: {
						        trigger: 'item',
						        formatter: '{a} <br/>{b} : {c} ({d}%)'
						    },
						    legend: {
						        orient: 'vertical',
						        left: 'left',
						        data: ['音樂', '語言', '運動', '電腦', '其他']
						    },
						    series: [
						        {
						            name: '来源',
						            type: 'pie',
						            radius: '55%',
						            center: ['50%', '60%'],
						            data: [
						                {value: CTR[5]["typeCTR"], name: '音樂'},
						                {value: CTR[6]["typeCTR"], name: '語言'},
						                {value: CTR[7]["typeCTR"], name: '運動'},
						                {value: CTR[8]["typeCTR"], name: '電腦'},
						                {value: CTR[9]["typeCTR"], name: '其他'}
						            ],
						            emphasis: {
						                itemStyle: {
						                    shadowBlur: 10,
						                    shadowOffsetX: 0,
						                    shadowColor: 'rgba(0, 0, 0, 0.5)'
						                }
						            }
						        }
						    ]
						};
					myChart3.setOption(option3);
					},
					complete : function() {
						//請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});
			//}
		})
							
		var myChart = echarts.init(document.getElementById('myBarChart'));
		//		 		var myChart1 = echarts.init(document.getElementById('myBarChart1'));
		var option = {
			color : [ '#3398DB' ],
			tooltip : {
				trigger : 'axis',
				axisPointer : { // 坐标轴指示器，坐标轴触发有效
					type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			legend : {
				data : [ '活動篇數' ]
			},
			grid : {
				left : '3%',
				right : '4%',
				bottom : '3%',
				containLabel : true
			},
			xAxis : [ {
				type : 'category',
				data : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
				fontSize : 18,
				axisTick : {
					alignWithLabel : true
				}
			} ],
			yAxis : [ {
				type : 'value',
				name : '篇數',
				fontSize : 24,
			} ],
			series : [ {
				type : 'bar',
				barWidth : '60%',
				name : '活動篇數',
				data : [ 0, 1, 2, 0, 1, 1, 4 ],
				markPoint : {
					data : [ {
						name : '週最高',
						value : 4,
						xAxis : 6,
						yAxis : 4
					}, {
						name : '週最低',
						value : 0,
						xAxis : 0,
						yAxis : 0
					}, {
						name : '週最低',
						value : 0,
						xAxis : 3,
						yAxis : 0
					} ]
				},
			} ]
		};

		myChart.setOption(option);
		// 		myChart.hideLoading();

		var myChart1 = echarts.init(document.getElementById('myBarChart1'));
		option1 = {
			// 			color : [ '	#F75000' ],
			tooltip : {
				trigger : 'axis',
				axisPointer : { // 坐标轴指示器，坐标轴触发有效
					type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},

			legend : {
				data : [ '交換次數' ]
			},
			// 			calculable : true,
			xAxis : [ {
				type : 'category',
				data : [ '1月', '2月', '3月', '4月', '5月', '6月' ],
				axisTick : {
					alignWithLabel : true
				}
			} ],
			yAxis : [ {
				type : 'value',
				name : '次數',
			} ],
			series : [ {
				name : '交換次數',
				type : 'bar',
				data : [ 8, 12, 52, 72, 44, 14 ],
				markPoint : {
					data : [ {
						name : '年最高',
						value : 72,
						xAxis : 3,
						yAxis : 72
					}, {
						name : '年最低',
						value : 8,
						xAxis : 0,
						yAxis : 8
					} ]
				},
			} ]
		};
		myChart1.setOption(option1);
		
		
	</script>
</body>
</html>