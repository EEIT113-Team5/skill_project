<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<head>
<style>
.collectImg{
  width: 50px;
  height: 50px;
  border-radius: 50%;
  margin-right: 10px;
}
.w{
font-color: white;
}
</style>

</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<a class="navbar-brand" href="${jspPath}/">Skill Exchange</a>
	<button class="btn btn-link btn-sm order-1 order-lg-0"
		id="sidebarToggle" >
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
				
				<!-- 登出按鈕 -->
				<c:if test="${ ! empty memberBean}">
				<img class="collectImg" src="${ memberBean.memberPic }" />
					<a href="<c:url value='Logout' />"><button type="button" class="btn btn-info">登出</button>  </a>
				</c:if>
					
				<!-- 登入按鈕 -->
				<c:if test="${empty memberBean}">			 
					<a href="${jspPath}/loginInit"><button type="button" class="btn btn-info">我要登入</button>  </a> 		 
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
					<c:if test="${memberBean.memberAcc!='eeit11321'}">
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseLayouts" aria-expanded="true"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fa fa-tasks"></i>
							</div> 技能類別
							<div class="sb-sidenav-collapse-arrow">
								<i class="fa fa-angle-down"></i>
							</div>
						</a>
						<c:choose>
							<c:when test="${empty memberBean}">
						<div class="collapse.in" id="collapseLayouts"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${jspPath}/query?class=all">全部</a> <a
								class="nav-link" href="${jspPath}/query?class=才藝">才藝</a> <a
								class="nav-link" href="${jspPath}/query?class=運動">運動</a> <a
								class="nav-link" href="${jspPath}/query?class=語言">語言</a> <a
								class="nav-link" href="${jspPath}/query?class=寵物">寵物</a> <a
								class="nav-link" href="${jspPath}/query?class=生活">生活</a>
							</nav>
						</div>
						</c:when>
						<c:otherwise>
						<div class="collapse.in" id="collapseLayouts"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${jspPath}/query2?class=all">全部</a> <a
								class="nav-link" href="${jspPath}/query2?class=才藝">才藝</a> <a
								class="nav-link" href="${jspPath}/query2?class=運動">運動</a> <a
								class="nav-link" href="${jspPath}/query2?class=語言">語言</a> <a
								class="nav-link" href="${jspPath}/query2?class=寵物">寵物</a> <a
								class="nav-link" href="${jspPath}/query2?class=生活">生活</a>
							</nav>
						</div>
						</c:otherwise>
						</c:choose>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseLayouts1" aria-expanded="true"
							aria-controls="collapseLayouts1">
							<div class="sb-nav-link-icon">
								<i class="fa fa-trophy" aria-hidden="true"></i>
							</div> 尋找活動
							<div class="sb-sidenav-collapse-arrow">
								<i class="fa fa-angle-down"></i>
							</div>
						</a>
						<c:choose>
							<c:when test="${empty memberBean}">
								<div class="collapse.in" id="collapseLayouts1"
									aria-labelledby="headingOne" data-parent="#sidenavAccordion">
									<nav class="sb-sidenav-menu-nested nav">

									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=全部">全部</a>
									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=音樂">音樂</a>
									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=語言">語言</a>
									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=運動">運動</a>
									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=電腦">電腦</a>
									<a class="nav-link" href="${jspPath}/SelectActivityNo?name=其他">其他</a>
									</nav>
								</div>
							</c:when>
							<c:otherwise>
								<div class="collapse.in" id="collapseLayouts1"
									aria-labelledby="headingOne" data-parent="#sidenavAccordion">
									<nav class="sb-sidenav-menu-nested nav">

									<a class="nav-link" href="${jspPath}/SelectActivity?name=全部">全部</a>
									<a class="nav-link" href="${jspPath}/SelectActivity?name=音樂">音樂</a>
									<a class="nav-link" href="${jspPath}/SelectActivity?name=語言">語言</a>
									<a class="nav-link" href="${jspPath}/SelectActivity?name=運動">運動</a>
									<a class="nav-link" href="${jspPath}/SelectActivity?name=電腦">電腦</a>
									<a class="nav-link" href="${jspPath}/SelectActivity?name=其他">其他</a>
									</nav>
								</div>

							</c:otherwise>
						</c:choose>


						<a class="nav-link" href="${jspPath}/publishSkill">
						<span><i class="fa fa-pencil"></i> 刊登頁面</span>
						</a>
						<a class="nav-link" href="myPublish">
						<span><i class="fa fa-star"></i> 我的刊登</span>
						</a>
						<a class="nav-link" href="${jspPath}/QueryCollections.do">
						<span><i class="fa fa-heart"></i> 我的收藏</span>
						</a>
						<a class="nav-link" href="${jspPath}/contactus">
						<span><i class="fa fa-envelope-o"></i> 聯絡我們</span>
						</a>
						<a class="nav-link" href="${jspPath}/registerInit">
						<span><i class="fa fa-arrow-circle-right"></i>加入會員</span>
						</a>
					</c:if>

					<c:if test="${memberBean.memberAcc=='eeit11321'}">
						<a class="nav-link" href="FindWebComment">
						<span><i class="fa fa-area-chart"></i> 網站回饋意見分析</span>
						</a>
						<a class="nav-link" href="FindUserComment">
						<span><i class="fa fa-table"></i> 使用者互評分析</span>
						</a>
						<a class="nav-link" href="queryContactUs">
						<span><i class="fa fa-commenting-o"></i> 回覆留言</span>
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