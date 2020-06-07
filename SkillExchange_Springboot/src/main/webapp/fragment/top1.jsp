<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<script src="pluginstemp/jquery/jquery.min.js"></script>

<!--
  Start Preloader
  ==================================== -->
<div id="preloader">
	<div class='preloader'>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span>
	</div>
</div>
<!--
  End Preloader
  ==================================== -->
<head>
<style>
.nav-link {
	font-size: 18px !important;
}
.navigation .navbar-light .navbar-nav .nav-item .nav-link {
    padding: 20px 8px !important;
}

.navigation {
	transition: 0s !important;
}

#popupmsg {
	position: fixed;
	width: 300px;
	height: 100px;
	bottom: 50px;
	right: 30px;
	border-radius: 5px;
	background-color: #E0E0E0;
	display: none;
	z-index: 10;
}
</style>

<link href="https://fonts.googleapis.com/css2?family=Kalam&display=swap"
	rel="stylesheet">
</head>

<header class="navigation fixed-top">
	<div class="container">
		<!-- main nav -->
		<nav class="navbar navbar-expand-lg navbar-light">
			<!-- logo -->
			<a class="navbar-brand" href="${jspPath}/">
				<h2 class="logo-white"
					style="color: white; font-family: 'Kalam', cursive">SkillExchange</h2>
				<h2 class="logo-default"
					style="color: black; font-family: 'Kalam', cursive">SkillExchange</h2>
			</a>
			<!-- /logo -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navigation" aria-controls="navigation"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navigation">
				<ul class="navbar-nav ml-auto text-center">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 技能類別 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:choose>
								<c:when test="${empty memberBean}">
									<a class="dropdown-item" href="${jspPath}/query?class=all">全部</a>
									<a class="dropdown-item" href="${jspPath}/query?class=才藝">才藝</a>
									<a class="dropdown-item" href="${jspPath}/query?class=運動">運動</a>
									<a class="dropdown-item" href="${jspPath}/query?class=語言">語言</a>
									<a class="dropdown-item" href="${jspPath}/query?class=寵物">寵物</a>
									<a class="dropdown-item" href="${jspPath}/query?class=生活">生活</a>


								</c:when>

								<c:otherwise>
									<a class="dropdown-item" href="${jspPath}/query2?class=all">全部</a>
									<a class="dropdown-item" href="${jspPath}/query2?class=才藝">才藝</a>
									<a class="dropdown-item" href="${jspPath}/query2?class=運動">運動</a>
									<a class="dropdown-item" href="${jspPath}/query2?class=語言">語言</a>
									<a class="dropdown-item" href="${jspPath}/query2?class=寵物">寵物</a>
									<a class="dropdown-item" href="${jspPath}/query2?class=生活">生活</a>

								</c:otherwise>
							</c:choose>
						</div></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 尋找活動 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:choose>
								<c:when test="${empty memberBean}">
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=全部">全部</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=音樂">音樂</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=語言">語言</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=運動">運動</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=電腦">電腦</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivityNo?name=其他">其他</a>
								</c:when>
								<c:otherwise>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=全部">全部</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=音樂">音樂</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=語言">語言</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=運動">運動</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=電腦">電腦</a>
									<a class="dropdown-item"
										href="${jspPath}/SelectActivity?name=其他">其他</a>
								</c:otherwise>
							</c:choose>
						</div></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 技能刊登</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="${jspPath}/publishSkill">刊登頁面</a>
							<a class="dropdown-item" href="myPublish">我的刊登</a> 
							<a class="dropdown-item" href="myPublishHistory">歷史刊登</a>
						</div></li>
					<li class="nav-item "><a class="nav-link"
						href="${jspPath}/QueryCollections.do">我的收藏</a></li>
					<li class="nav-item "><a class="nav-link"
						href="${jspPath}/contactus">聯絡我們</a></li>

					<li class="nav-item "><a class="nav-link"></a></li>
					<li class="nav-item "><a class="nav-link"></a></li>
					<li class="nav-item "><a class="nav-link"></a></li>

					<c:if test="${ ! empty memberBean}">
						<img class="collectImg" src="${ memberBean.memberPic }" />
					</c:if>
					<c:if test="${ ! empty memberBean}">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">${memberBean.memberNic}</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<c:if test="${empty memberBean}">
									<a class="dropdown-item" href="${jspPath}/registerInit">加入會員</a>
								</c:if>
								<c:if test="${empty memberBean}">
									<a class="dropdown-item" href="${jspPath}/loginInit">我要登入</a>
								</c:if>
								<c:if test="${ ! empty memberBean}">
									<a class="dropdown-item" href="<c:url value='reviseMember' />">修改會員</a>
								</c:if>
								<c:if test="${ ! empty memberBean}">
									<a class="dropdown-item" href="<c:url value='Logout' />">登出</a>
								</c:if>
							</div></li>
					</c:if>
					<c:if test="${empty memberBean}">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">會員</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<c:if test="${empty memberBean}">
									<a class="dropdown-item" href="${jspPath}/registerInit">加入會員</a>
								</c:if>
								<c:if test="${empty memberBean}">
									<a class="dropdown-item" href="${jspPath}/loginInit">我要登入</a>
								</c:if>
								<c:if test="${ ! empty memberBean}">
									<a class="dropdown-item" href="<c:url value='Logout' />">修改會員</a>
								</c:if>
								<c:if test="${ ! empty memberBean}">
									<a class="dropdown-item" href="<c:url value='Logout' />">登出</a>
								</c:if>
							</div></li>

					</c:if>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fa fa-bell" id="navbarbell"
							aria-hidden="true"></i></a>
						<div class="dropdown-menu"
							style="left: -200px; background: transparent;"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#" id="mess"></a>
						</div></li>





				</ul>
			</div>
		</nav>
		<!-- /main nav -->
	</div>
</header>

<div id="popupmsg">
	<div class="card">
		<div class="card-header" style="background-color: #FFBFFF">你有一則新的推播訊息</div>
		<div class="card-body" style="background-color: #FFE6FF">
			<h5 class="card-title" id="broadcast">Special title treatment</h5>
		</div>
	</div>
</div>

<script>
	function CallMessageAnn() {
		// 		$("#navbarbell").click(function() {
		$
				.ajax({
					url : "CallMessageAnn", // 請求的url地址
					dataType : "json", // 返回格式為json
					async : true, // 請求是否非同步，預設為非同步，這也是ajax重要特
					type : "GET", // 請求方式
					success : function(req) {
						console.log(req);

						var d = new Date(req[0].anntime);
						var formattedDate = d.getFullYear() + "-"
								+ (d.getMonth() + 1) + "-" + d.getDate();

						var d1 = new Date(req[1].anntime);
						var formattedDate1 = d1.getFullYear() + "-"
								+ (d1.getMonth() + 1) + "-" + d1.getDate();

						var d2 = new Date(req[2].anntime);
						var formattedDate2 = d2.getFullYear() + "-"
								+ (d2.getMonth() + 1) + "-" + d2.getDate();

						messArray = req[0].messtitle;
						console.log(messArray[1]);

						messArray1 = req[1].messtitle;

						messArray2 = req[2].messtitle;

						content = "<div class='card'><div class='card-header' style='color:black'><a onclick=location.href='msgAnnImfor?msgid="
								+ req[0].msgid
								+ "'>最新公告:"
								+ messArray
								+ "(公告時間:" + formattedDate + ")</a></div>";
						content += "<div class='card-header' style='color:black'><a onclick=location.href='msgAnnImfor?msgid="
								+ req[1].msgid
								+ "'>過往公告:"
								+ messArray1
								+ "(公告時間:" + formattedDate1 + ")</a></div>";
						content += "<div class='card-header' style='color:black'><a onclick=location.href='msgAnnImfor?msgid="
								+ req[2].msgid
								+ "'>過往公告:"
								+ messArray2
								+ "(公告時間:"
								+ formattedDate2
								+ ")</a></div></div>";

						document.getElementById('mess').innerHTML = content;
					},
					complete : function() {
						// 請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});
		// 		})
	}

	$(document).ready(function() {
		window.onload = CallMessageAnn;

	})
	var MyPoint = "/DemoWSmulti";
	var host = window.location.host;
	//		console.log(host);
	var path = window.location.pathname;
	//		console.log(path);
	var webCtx = path.substring(0, path.indexOf('/', 1));
	//		console.log(webCtx);
	var endPointURL = "ws://" + window.location.host + webCtx + MyPoint;
	//		console.log(endPointURL);
	// 		var statusOutput = document.getElementById("statusOutput");
	var webSocket;

	var broadcast = document.getElementById("broadcast");
	var popupmsg = document.getElementById("popupmsg");

	connect();
	function connect() {
		// 			document.getElementById("catalog").style.display = 'block';
		// 			output = document.getElementById("output");
		// create a websocket
		webSocket = new WebSocket(endPointURL);

		webSocket.onopen = function(event) {
			onOpen(event)
		};

		webSocket.onmessage = function(event) {
			onMessage(event)
		};

		webSocket.onclose = function(event) {
			onClose(event)
		};
		webSocket.onerror = function(event) {
			onError(event)
		};
	}

	function fadeaway() {
		$("#popupmsg").fadeOut(2000);
	}
	function onOpen(evt) { //連線時觸發
		console.log("產生連線");
		// 			writeToScreen("<p style='background-color:#ddd' class='rounded-lg text-center text-secondary py-2'>向對方打個招呼吧</p>");

	}
	function onMessage(evt) { //收到訊息時觸發
		// 		broadcast.innerHTML = evt.data;
		$("#navbarbell").attr("class", "fa fa-bell-o")
		$("#popupmsg").fadeIn(3000);
		$("#broadcast").text(evt.data)
		setTimeout(fadeaway, 5000);
		CallMessageAnn();
		// 	    alert(evt.data);
	}
	function onClose(evt) { //關閉連線時時觸發
		//	 		writeToScreen("DISCONNECTED");
	}

	function onError(evt) {
		// 			writeToScreen('<span style="color: red;">ERROR:</span> ' + evt.data);
	}

	// 		function sendMessage() {

	// 			var inputMessage = document.getElementById("textmssg");
	// 			var message = inputMessage.value.trim();

	// 			if (message === "") {
	// 				alert("Input a message");
	// 				inputMessage.focus();
	// 			} else {
	// 				// 			writeToScreen("SENT: " + message);
	// 				webSocket.send(message); //!!!! 送留言到endpoint
	// 				inputMessage.value = "";
	// 				inputMessage.focus();
	// 			}
	// 		}

	function disconnect() {
		webSocket.close();
	}

	// 		var cardbody = document.getElementById("cardbody");
	// 		function writeToScreen(message) {
	// 			console.log(message)
	// 			cardbody.innerHTML += message;
	// 		}
</script>











