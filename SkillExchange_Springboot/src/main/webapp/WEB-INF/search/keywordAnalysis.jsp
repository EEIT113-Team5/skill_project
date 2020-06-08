<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
						style="text-shadow: 1px 1px gray; text-align: center">關鍵字趨勢分析</h1>
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="text-center bg-light py-2">圖表查詢</h3>
						</div>

						<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
						<!-- 						<div style="display: flex; flex-direction: row; justify-content:space-evenly" > -->
						<div>
							<div style="float: left">
								<div id="main" style="width: 600px; height: 340px;"></div>

								<select name="year" id="year" class="btn border border-primary">
									<c:forEach var="n" begin="2020" end="2020">
										<option value="${n}">${n}</option>
									</c:forEach>
								</select> <select name="mon" id="month" class="btn border border-primary">
									<c:forEach var="n" begin="1" end="12">
										<option value="${n}">${n}</option>
									</c:forEach>
								</select> <input type="submit" class="btn btn-primary" id="querymonth"
									value="查詢月報表">

							</div>
							<div style="float: right">
								<div id="second" style="width: 600px; height: 340px;"></div>
								<select name="yearmonths" id="days"
									class="btn border border-primary">
									<option value="7">一週內</option>
									<option value="14">兩週內</option>
									<option value="21">三週內</option>
									<option value="30">一個月內</option>
								</select><input class="btn btn-primary" type="submit"
									id="queryrecent" value="近況查詢">

							</div>
						</div>




					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fa fa-table mr-1"></i>關鍵字報表
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>序號</th>
											<th>關鍵字</th>
											<th>查詢時間</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var='data' items='${keywordList}'>
											<tr>

												<td><c:out value="${data.num}" default="無" /></td>
												<td><c:out value="${data.keyWord}" default="無" /></td>
												<td><c:out value="${data.createDate}" default="無" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
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
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));
		var myChart1 = echarts.init(document.getElementById('second'));

		// 指定图表的配置项和数据
		function getbar1() {
			let year = $("#year").val();
			let mon = $("#month").val();
			var str = "GetTopChartKw2?month=" + mon;

			myChart.clear();
			myChart.showLoading({
				text : 'Loading...'
			});
			$.getJSON("<c:url value='" + str +"' />", {}, function(data) {
				console.log()
				// 指定图表的配置项和数据(既定格式)
				var option = {
					title : {},
					"toolbox" : {
						"show" : true,
						"feature" : {
							"restore" : {
								"show" : true,
								"title" : "還原"
							},
							"magicType" : {
								"show" : true,
								"title" : {
									"line" : "折線圖",
									"stack" : "堆積",
									"bar" : "柱狀圖切換",
								},
								"type" : [ "line", "bar" ]
							},
							"dataView" : {
								"show" : true,
								"title" : "數據視圖",
								"readOnly" : false,
								"lang" : [ "Data View", "close", "refresh" ]
							},
							"mark" : {
								"show" : true,
								"title" : {
									"mark" : "輔助線開關",
									"markClear" : "清空輔助線",
									"markUndo" : "删除輔助線"
								},
								"lineStyle" : {
									"color" : "#1e90ff",
									"type" : "dashed",
									"width" : 2
								}
							},
						}
					},
					grid : {
						left : '6%',
						right : '4%',
						bottom : '5%',
						containLabel : true
					},
					tooltip : {},
					legend : {
						data : "搜尋次數",
						x : "right",
						y : '7%'
					},
					xAxis : {
						data : [ data[0][0][0], data[0][1][0], data[0][2][0],
								data[0][3][0], data[0][4][0] ],
						type : "category"
					},
					yAxis : {},
					series : {
						name : "搜尋次數",
						type : "bar",
						data : [ data[0][0][1], data[0][1][1], data[0][2][1],
								data[0][3][1], data[0][4][1] ],
						showBackground : true,
						backgroundStyle : {
							color : 'rgba(220, 220, 220, 0.8)'
						}
					}
				}
				console.log(option)
				// 		// 使用刚指定的配置项和数据显示图表。
				// 		myChart.setOption(option);		
				myChart.setOption(option);
				myChart.hideLoading();
			});
		}
		function getbar2() {
			let days = $("#days").val();
			var str = "GetTopChartKw?days=" + days;

			myChart1.clear();
			myChart1.showLoading({
				text : 'Loading...'
			});
			$.getJSON("<c:url value='" + str +"' />", {}, function(data) {
				console.log()
				// 指定图表的配置项和数据(既定格式)
				var option1 = {
					title : {},
					"toolbox" : {
						"show" : true,
						"feature" : {
							"restore" : {
								"show" : true,
								"title" : "還原"
							},
							"magicType" : {
								"show" : true,
								"title" : {
									"line" : "折線圖",
									"stack" : "堆積",
									"bar" : "柱狀圖切換",
								},
								"type" : [ "line", "bar" ]
							},
							"dataView" : {
								"show" : true,
								"title" : "數據視圖",
								"readOnly" : false,
								"lang" : [ "Data View", "close", "refresh" ]
							},
							"mark" : {
								"show" : true,
								"title" : {
									"mark" : "輔助線開關",
									"markClear" : "清空輔助線",
									"markUndo" : "删除輔助線"
								},
								"lineStyle" : {
									"color" : "#1e90ff",
									"type" : "dashed",
									"width" : 2
								}
							},
						}
					},
					grid : {
						left : '6%',
						right : '4%',
						bottom : '5%',
						containLabel : true
					},
					tooltip : {},
					legend : {
						data : "搜尋次數",
						x : "right",
						y : '7%'
					},
					xAxis : {
						data : [ data[0][0][0], data[0][1][0], data[0][2][0],
								data[0][3][0], data[0][4][0] ],
						type : "category"
					},
					yAxis : {},
					series : {
						name : "搜尋次數",
						type : "bar",
						data : [ data[0][0][1], data[0][1][1], data[0][2][1],
								data[0][3][1], data[0][4][1] ],
						showBackground : true,
						backgroundStyle : {
							color : 'rgba(220, 220, 220, 0.8)'
						}
					}
				}
				console.log(option1);
				// 		// 使用刚指定的配置项和数据显示图表。
				// 		myChart.setOption(option);		
				myChart1.setOption(option1);
				myChart1.hideLoading();
			});
		}
		//载入图表
		$("#querymonth").click(function() {
			$("#main").css("display", "block");
			getbar1();
		})

		$("#queryrecent").click(function() {
			$("#second").css("display", "block");
			getbar2();
		})
	</script>
</body>
</html>