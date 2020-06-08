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
<title>回覆留言-Skill Exchange</title>
<link rel="shortcut icon" type="image/x-icon"
	href="imagestemp/SkillLogo2.png" />
<link href="css/styles.css" rel="stylesheet" />
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

<style>
font {
	color: red;
	margin-left: 20px;
}
.currentPage{
	background-color:	#0080FF;
	color:white;
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
					<h2 class="mt-4">留言清單</h2>
					<table class="table table-hover tablemanager">
						<thead style="background-color: #F0F0F0">
							<tr>
								<th>留言者姓名</th>
								<th>留言者Email</th>
								<th>留言主旨</th>
								<th>新增時間</th>
								<th>更新時間</th>
								<th>回覆留言</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="cntUs" items="${cntUsList}">
								<tr>
									<td width="15%">${cntUs.contactUser}</td>
									<td width="20%">${cntUs.email}</td>
									<td width="25%">${cntUs.title}</td>
									<td width="15%"><fmt:formatDate value="${cntUs.createTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
									<td width="15%"><fmt:formatDate value="${cntUs.updateTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
									<td><a class="btn btn-success"
										id="replyBtn${cntUs.contactNo}"
										${(cntUs.isReply==1) ? 'style="display:none"' : ''}
										href="<c:url value='queryContactUsDetail?type=R&contactNo=${cntUs.contactNo}'/>">回覆</a>
										<a class="btn btn-info" id="viewBtn${cntUs.contactNo}"
										${(cntUs.isReply==0) ? 'style="display:none"' : ''}
										href="<c:url value='queryContactUsDetail?type=V&contactNo=${cntUs.contactNo}'/>">查看回覆</a>
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

	<c:if test="${not empty MsgOK}">
		<script>
			let message = "${MsgOK.insertOK}";
			$("#alertText").text(message);
			$("#alertModal").modal('show');
		</script>
	</c:if>
	<c:if test="${not empty MsgUpOK}">
		<script>
			let message = "${MsgUpOK.updateOK}";
			$("#alertText").text(message);
			$("#alertModal").modal('show');
		</script>
	</c:if>
	<script type="text/javascript">
		// basic usage
		$('.tablemanager').tablemanager({
			
			appendFilterby: false,
			debug: true,
			vocabulary: {
    voc_filter_by: 'Filter By',
    voc_type_here_filter: 'Filter...',
    voc_show_rows: 'Rows Per Page'
  },
			pagination: true,
		});
		$(".pagesControllers").addClass("pagination");
		$(".pagecontroller").addClass("page-link");
	</script>

	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  

</script>

	<%
		session.removeAttribute("MsgOK");
		session.removeAttribute("MsgUpOK");
	%>
</body>

</html>