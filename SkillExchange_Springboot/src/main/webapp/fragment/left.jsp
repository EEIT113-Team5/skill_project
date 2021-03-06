<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<head>
<style>
.collectImg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin-right: 10px;
}

.w {
	font-color: white;
}
.msg {
	background-image: url(images/msg.png);
	width:25px;
	background-size: 25px;
	background-repeat: no-repeat;
	background-position: center;
	color:white;
	text-align:center;
}

</style>

<link href="https://fonts.googleapis.com/css2?family=Kalam&display=swap"
	rel="stylesheet">
</head>

<body>
	<jsp:include page="/fragment/pmodal.jsp" />
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">

		<a class="navbar-brand" href="BackendIndex" 
			style="color: white; font-family: 'Kalam', cursive; font-size:30px">SkillExchange</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle">
			<i class="fa fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<!-- 			<input class="form-control" type="text" placeholder="Search for..." -->
				<!-- 				aria-label="Search" aria-describedby="basic-addon2" /> -->
				<div class="input-group-append">
					<!-- 				<button class="btn btn-primary" type="button" onclick="callHome()"> -->
					<!-- 					<i class="fa fa-search"></i> -->
					<!-- 				</button> -->
					<button type="button" class="btn"
						onclick="connect()" id="editConfirm">
						<i class="fa fa-bullhorn text-white" style="font-size:30px" aria-hidden="true"></i>
					</button>
					<!-- 登出按鈕 -->
					<c:if test="${ ! empty memberBean}">
						<img class="collectImg" src="${ memberBean.memberPic }" />
						<a href="<c:url value='Logout' />"><button style="margin-top:5px" type="button"
								class="btn btn-info">登出</button> </a>
					</c:if>

					<!-- 登入按鈕 -->
					<c:if test="${empty memberBean}">
						<a href="${jspPath}/loginInit"><button type="button"
								class="btn btn-info">我要登入</button> </a>
					</c:if>

				</div>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown">
				<!-- 		<a class="nav-link dropdown-toggle" --> <!-- 			id="userDropdown" href="#" role="button" data-toggle="dropdown" -->
				<!-- 			aria-haspopup="true" aria-expanded="false"> --> <!-- 			<i class="fa fa-user fa-fw"></i> -->
				<!-- 			</a> -->
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">Settings</a><a
						class="dropdown-item" href="#">Activity Log</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="login.html">Logout</a>
				</div>
			</li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<!-- <div class="sb-sidenav-menu-heading">Core</div> -->


						<c:if test="${memberBean.memberAcc=='eeit11321'}">
							<a class="nav-link" href="FindWebComment"> <span><i
									class="fa fa-area-chart"></i> 網站回饋意見分析</span>
							</a>
							<a class="nav-link" href="FindUserComment"> <span><i
									class="fa fa-table"></i> 使用者互評分析</span>
							</a>
							<!-- 							<a class="nav-link" href="Promotion"> <span><i -->
							<!-- 									class="fa fa-table"></i>推播功能</span> -->
							<!-- 							</a> -->
							<a class="nav-link" href="queryContactUs"> <span><i
									class="fa fa-commenting-o"></i> 回覆留言</span>&ensp;<span class="msg" id="cntus"></span>
							</a>
							<a class="nav-link" href="getAllJob"> <span><i
									class="fa fa-list-alt"></i> 排程管理</span>
							</a>
							<a class="nav-link" href="PublishMgmt"> <span><i
									class="fa fa-history"></i> 刊登管理</span>
							</a>
							<a class="nav-link" href="getKeyword"> <span><i class='fa fa-key'>	</i> 關鍵字趨勢分析</span>
							</a>
						</c:if>
					</div>

				</div>
			</nav>
			<form>
				<input type="hidden" name="a" />
			</form>
		</div>
	</div>
</body>
<script>
getUnReplyContact();
function getUnReplyContact() {
	$
			.ajax({
				url : "getUnReply", // 請求的url地址
				dataType : "json", // 返回格式為json
				async : true, // 請求是否非同步，預設為非同步，這也是ajax重要特
				type : "GET", // 請求方式
				success : function(req) {
					console.log(req);
					$("#cntus").text(req)
				},
				complete : function() {
					// 請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});
}
</script>