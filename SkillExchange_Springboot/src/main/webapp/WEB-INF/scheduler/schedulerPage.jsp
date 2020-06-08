<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zt-TW">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>排程管理-Skill Exchange</title>
<link rel="shortcut icon" type="image/x-icon"
	href="imagestemp/SkillLogo2.png" />
<link href="css/styles.css" rel="stylesheet" />
<link href="css/wickedpicker.min.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

<script src="font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>
<script src="js/tableManager.js?ver=20200529"></script>
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

<script src="js/wickedpicker.min.js" type="text/javascript"></script>
<style>
font {
	color: red;
	margin-left: 20px;
}

.currentPage {
	background-color: #0080FF;
	color: white;
}
</style>


</head>

<body class="sb-nav-fixed">
	<div id="layoutSidenav">
		<jsp:include page="/fragment/left.jsp" />
		<jsp:include page="/fragment/modal.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<div class="form-inline">
					<h2 class="mt-4">排程清單</h2>
					<a class="btn btn-primary" href="#" id="groupNewBtn"
						data-toggle="modal" data-target="#insertScheduleModal"
						style="margin: 20px 5px 5px 5px"> <i class='fa fa-plus'></i>新增排程
					</a>
					</div>
					<table class="table table-hover tablemanager">
						<thead style="background-color: #F0F0F0">
							<tr>
								<th>排程群組</th>
								<th>排程名稱</th>
								<th>啟動時間</th>
								<th>狀態</th>
								<th>更新時間</th>
								<th>變更設定</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="jobList" items="${jobList}">
								<tr>
									<td>${jobList.jobGroup}</td>
									<td>${jobList.jobName}</td>
									<td>${jobList.cronExpression}</td>
									<td>${jobList.status}</td>
									<td>${jobList.updateTimeStr}</td>
									<td><a class="btn btn-success" id="updJob${jobList.jobNo}"
										href="#" onclick="editSchedule(${jobList.jobNo},'${jobList.jobGroup}','${jobList.jobName}','${jobList.cronExpression}','${jobList.status}')">編輯</a>
										<a class="btn btn-danger" id="delJob${jobList.jobNo}"
										href="#" onclick="delSchedule('${jobList.jobNo}')">刪除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<form>
		<input type="hidden" name="a" />
	</form>
	<c:if test="${not empty MsgMap}">
		<script>
			let message = "${MsgMap.updateFail}{MsgMap.insertFail}{MsgMap.delFail}";
			$("#alertText").text(message);
			$("#alertModal").modal('show');
		</script>
	</c:if>
	<c:if test="${not empty MsgUpOK}">
		<script>
			let message = "${MsgUpOK.updateOK}${MsgUpOK.insertOK}${MsgUpOK.delOK}";
			$("#alertText").text(message);
			$("#alertModal").modal('show');
		</script>
	</c:if>
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

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<script type="text/javascript">
		
		$('#timepicker').wickedpicker({
			now : '10:15',
			twentyFour : true,
			showSeconds : true
		});
	</script>
	<script type="text/javascript">
		$('#intimepicker').wickedpicker({
			twentyFour : true,
			showSeconds : true
		});
	</script>
	<script>
	function editSchedule(no,group,name,cronExp,status){
		$("#cronGroup").val(group);
		$("#cronName").val(name);
		$("#jobNo").val(no);
		if(status=='啟動'){
		$("#status").val(1);
			}else{
		$("#status").val(0);
				}
		$("#editScheduleModal").modal('show');
		}
	
	function delSchedule(no){
		$("#deljobNo").val(no);
		$("#delScheduleModal").modal('show');
		}
	</script>

	<%
		session.removeAttribute("MsgOK");
		session.removeAttribute("MsgUpOK");
	%>
</body>

</html>