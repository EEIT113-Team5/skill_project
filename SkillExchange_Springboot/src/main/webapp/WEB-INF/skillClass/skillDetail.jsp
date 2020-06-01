<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zt-TW">
<c:set var='jspPath' value='${pageContext.request.contextPath}' />
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>PublishDetail-Skill Exchange</title>

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

<link href="css/calalog.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
* {
	font-family: 微軟正黑體;
}

.card {
	background-color: #ECFFFF !important
}

#catalog {
	display: none;
}

h6 {
	border: 1px solid #000;
	margin-left: 40px
}

.text {
	margin-left: 40px
}

/* #left { */
/* 	float: left; */
/* 	padding: 10px; */
/* 	width: 60% */
/* } */

/* #right { */
/* 	position: relative; */
/* 	float: right; */
/* 	padding: 10px; */
/* 	width: 40% */
/* } */
.main1 {
	display: flex;
}

#left {
	flex: 3;
	/* 	float: left; */
	padding: 10px;
	/* 	width: 60% */
}

#right {
	position: relative;
	/* 	float: right; */
	flex: 2;
	padding: 10px;
	/* 	width: 40% */
}

#catalog {
	position: fixed;
	bottom: 0px;
	/* 	left: 0px; */
	right: 350px;
}
</style>
</head>
<div>
	<div></div>
	<div></div>
	<div></div>
</div>
<!-- ---------------------要加的部份-------------------- -->
<body id="body">
	<jsp:include page="/fragment/top1.jsp" />

	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>技能詳情</h2>
				</div>
			</div>
		</div>
	</section>
	<div id="main" class="main1">
		<div id="left">
			<table class="table table-hover">
				<c:choose>
					<c:when test="${empty allSkills}">
						<tr height='36'>
							<td colspan='7' align='center'><font color='red'>查無技能資料</font></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var='skills' items='${allSkills}'>

							<c:forEach var='collects' items='${collectionsMap}'>
								<c:forEach var='collect' items='${collects.value}'>
									<c:if test="${collect.collectPNo == skills.publishNo}">
										<c:set var="have" value="${collect.collectPNo}" />
									</c:if>
								</c:forEach>
							</c:forEach>

							<c:set var="pic1" value="${skills.member.memberPic}" />
							<c:set var="pic2" value="${sessionScope.memberBean.memberPic}" />
							<c:set var="sendTo" value="${skills.member.memberNic}" />
							<c:set var="sendUser"
								value="${sessionScope.memberBean.memberNic}" />
							<c:set var="sendTo2" value="${skills.member.memberRegNo}" />
							<c:set var="sendUser2"
								value="${sessionScope.memberBean.memberRegNo}" />
							<c:set var="memberski" value="${skills.member.memberInSkill}" />
							<!-- 以下主要為排版 -->
							<div class="text">
								<div class="top1">
									<div class="wrap">
										<img src="${skills.member.memberPic}"
											style="float: left; width: 100px; height: 100px;"
											class="rounded-circle user_img" />
										<div class="txt">
											<h2>${skills.member.memberNic}</h2>
										</div>
									</div>
								</div>
								<span style="float: right"> <c:choose>
										<c:when test="${have!=skills.publishNo}">
											<button type="button" id="add${skills.publishNo}"
												class="btn btn-success "
												onclick=collection(${skills.publishNo},1,${sessionScope.memberBean.memberRegNo})>加入收藏</button>
											<button type="button" id="cancel${skills.publishNo}"
												class="btn btn-danger " style="display: none"
												onclick=collection(${skills.publishNo},2,${sessionScope.memberBean.memberRegNo})>取消收藏</button>
										</c:when>

										<c:otherwise>
											<button type="button" id="add${skills.publishNo}"
												class="btn btn-success " style="display: none"
												onclick=collection(${skills.publishNo},1,${sessionScope.memberBean.memberRegNo})>加入收藏</button>
											<button type="button" id="cancel${skills.publishNo}"
												class="btn btn-danger "
												onclick=collection(${skills.publishNo},2,${sessionScope.memberBean.memberRegNo})>取消收藏</button>
										</c:otherwise>

									</c:choose>
								</span> <br> <br>


							</div>
							<hr>
							<span style="float: right" class="text">上次更新時間:${time1}</span>
							<h2 class="text">${skills.publishTitle}</h2>
							<img style="margin-left: 40px" width="400px" height="300px"
								src="${jspPath}/${skills.publishPic}">
							<!--刊登圖片-->
							<div class="text">
								<p class="whitespace">${skills.publishDetail}<br />
								</p>
							</div>
							<!--文章內容-->
							<div class="more_content">

								<h6 style="width: 145px">提供交流/交換項目:</h6>
								<div class="text">${skills.ownSkill}</div>

								<br>
								<h6 style="width: 160px">希望交流/交換的內容:</h6>
								<div class="text">${skills.wantSkill}</div>

								<br>
								<h6 style="width: 75px">希望地點:</h6>
								<div class="text">${skills.publishPlace}</div>



							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>

		<div id="right">
			<div style="background-color: pink; width: auto; margin: 10px auto">
				<c:choose>
					<c:when test="${memberBean.memberRegNo==allSkills[0].memberRegNo}">
						<table>
							<tbody>

								<c:forEach var='data' varStatus='var' items='${reqchat}'>
									<tr>
										<td>${data.reqid}</td>
										<td id="requestid${var.index}">${data.sendNo}</td>
										<td id="requestNic${var.index}">${data.sendNomember.memberNic}</td>
										<td><img id="requestPic${var.index}"
											class="rounded-circle user_img" height="250px" width="350px"
											src='${data.sendNomember.memberPic}' /></td>
										<td style="width: 180px"><button class="btn btn-primary"
												onclick="connect_skillowner('${data.receiveNomember.memberNic}','${data.sendNomember.memberNic}','${var.index}')">開啟對話</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</c:when>
					<c:otherwise>
						<div class="card-body">
							<h4 class="card-title" id='sendto'>關於我:</h4>
							<br>
							<h5>擁有的技能:${memberski}</h5>
							<h5>居住區域:${sessionScope.memberBean.memberCountry}
								${sessionScope.memberBean.memberAddr}</h5>
							<h5>Email:${sessionScope.memberBean.memberMail}</h5>
							<div class="card-text"></div>
							<button id="disabled" class="btn btn-primary"
								onclick="connect_skill('${sendUser}','${sendTo}');insertRequest('${memberBean.memberRegNo}','${allSkills[0].memberRegNo}','${allSkills[0].publishNo}')">發送訊息</button>
						</div>


					</c:otherwise>
				</c:choose>


				<div id="catalog">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<c:choose>
										<c:when
											test="${memberBean.memberRegNo==allSkills[0].memberRegNo}">
											<img src="" id="user_img1" class="rounded-circle user_img"
												height="250px" width="350px">
										</c:when>
										<c:otherwise>
											<img src="${pic1}" class="rounded-circle user_img">
										</c:otherwise>
									</c:choose>

									<span id="on" class="online_icon"></span> <span id="off"
										class="offline" style="display: none"></span>
								</div>
								<div class="user_info">
									<c:choose>
										<c:when
											test="${memberBean.memberRegNo==allSkills[0].memberRegNo}">
											<span id="user_name1"></span>
										</c:when>
										<c:otherwise>
											<span>${sendTo}</span>


										</c:otherwise>
									</c:choose>

								</div>
								<div class="video_cam">
									<span><i class="fas fa-video"></i></span> <span><i
										class="fas fa-phone"></i></span>
								</div>
								<a type="button" href="InsertCommentForm" class="btn text-white">結束交換</a>
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li><i class="fas fa-user-circle"></i> View profile</li>
									<li><i class="fas fa-users"></i> Add to close friends</li>
									<li><i class="fas fa-plus"></i> Add to group</li>
									<li><i class="fas fa-ban"></i> Block</li>
								</ul>
							</div>

						</div>
						<div id="cardbody" class="card-body msg_card_body"></div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i
										class="fas fa-paperclip"></i></span>
								</div>
								<textarea name="" class="form-control type_msg" id="textmssg"
									placeholder="Type your message..."></textarea>
								<div class="input-group-append">
									<c:choose>
										<c:when
											test="${memberBean.memberRegNo==allSkills[0].memberRegNo}">
											<span id="sendmss" class="input-group-text send_btn"
												onclick="sendMessage_skillowner()"><i
												class="fas fa-location-arrow"></i></span>
										</c:when>
										<c:otherwise>
											<span id="sendmss" class="input-group-text send_btn"
												onclick="sendMessage_skill('${sendUser}','${sendTo}','${sendUser2}','${sendTo2}','${pic2}')"><i
												class="fas fa-location-arrow"></i></span>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- 		<div style="clear: both"></div> -->
	</div>
	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->
	<script>
	$(function(){
		
	 $('#textmssg').keydown(function(event){
	  
	    if( event.which == 13 ) {
	        $('#sendmss').click()
	    }
	});
})
	
	function collection(publishNo,status,mebNo) {
		if(status==1){
	    	
	    	$.ajax({
				url : "InsertColletion", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				data : {
					"publishNo" : publishNo,					
					//"class": "${class1}",
 					"memberBean":mebNo
				}, //引數值
				type : "GET", //請求方式
				success : function(req) {
					console.log("suc");
					$("#add"+publishNo).css("display","none");
					 $("#cancel"+publishNo).css("display","inline");
				//	 alert ( "已加入收藏" );
					  let message = "已加入收藏";
						$("#alertText").text(message);
						$("#alertModal").modal('show');
				},
				complete : function() {
					console.log("com");
					//請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});
	    		  
			 
		 } else if (status==2){
				$.ajax({
					url : "delColletion", //請求的url地址
					dataType : "json", //返回格式為json
					async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
					data : {
						"publishNo" : publishNo,					
						//"class": "${class1}",
	 					"memberBean":mebNo
					}, //引數值
					type : "GET", //請求方式
					success : function(req) {
						console.log("suc");
						$("#add"+publishNo).css("display","inline");
						 $("#cancel"+publishNo).css("display","none");
						  let message = "已取消收藏";
							$("#alertText").text(message);
							$("#alertModal").modal('show');

					},
					complete : function() {
						console.log("com");
						//請求完成的處理
					},
					error : function() {
						console.log("出錯了!")
					}
				});
			 
		 }
	
	}
	

	
</script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
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
	<script src="assets/demo/datatables-demo.js"></script>
	<script src="jstemp/script.js"></script>

	<script>
	var arrindex;
    function connect_skillowner(sendUser, sendTo, index) {
    	
    	var endPointURL = "ws://" + window.location.host + webCtx + MyPoint + "/"
    			+ sendUser;
    	document.getElementById("catalog").style.display = 'block';
    	output = document.getElementById("output");
    	arrindex = index;
    	$("#user_img1").attr("src",$("#requestPic"+index).attr("src"));
    	$("#user_name1").text($("#requestNic"+index).text());
    	
    	// create a websocket
    	console.log(sendUser);
    	console.log(endPointURL);
    	webSocket = new WebSocket(endPointURL);
    	console.log("conn");
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
    	// 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
    	window.onbeforeunload = function() {
    		webSocket.close();
    	}
    }
    <%-- 							${reqchat[0].receiveNomember.memberNic}','${reqchat[0].sendNomember.memberNic}','${reqchat[0].receiveNomember.memberRegNo}','${reqchat[0].sendNomember.memberRegNo}','${reqchat[0].receiveNomember.memberPic} --%>
    function sendMessage_skillowner() {
    	var inputMessage = document.getElementById("textmssg");
    	var message = inputMessage.value.trim();

    	if (message === "") {
    		inputMessage.value = "";
    		inputMessage.focus();
    	} else {
    		var inputMessage = document.getElementById("textmssg");
    		var message = inputMessage.value.trim();
//     		console.log(sendUser2);
    		var jsonMsg = {
    			"sendUser" : "${memberBean.memberNic}",
    			"toUser" : $("#requestNic"+arrindex).text(),
    			"sendUserNo" :${memberBean.memberRegNo},
    			"toUserNo" : $("#requestid"+arrindex).text(),
    			"message" : message,
    			"pic" : "${memberBean.memberPic}"
    		}
    		console.log(jsonMsg);
    		webSocket.send(JSON.stringify(jsonMsg)); // !!!! 送留言到endpoint

    		inputMessage.value = "";
    		inputMessage.focus();
    	}
    }




    </script>



	<script src="js/websocket1by1.js"></script>

	<script>
function insertRequest(sendNo, recieveNo,  skillId){
	var sendNo=sendNo;
	var recieveNo=recieveNo;
	var skillId=skillId;
	$.ajax({
		url : "InsertchatReq", // 請求的url地址
		dataType : "json", // 返回格式為json
		async : true, // 請求是否非同步，預設為非同步，這也是ajax重要特性
		type : "GET", // 請求方式
		data : {
			"sendUser" : sendNo,
			"sendTo" : recieveNo,
			"skillId" : skillId
		},
		success : function(req) {
			console.log(req);
		},
		complete : function() {
			// 請求完成的處理
		},
		error : function() {
			console.log("出錯了!")
		}
	})
}

</script>

	<!-- ---------------------要加的部份-------------------- -->

</body>
</html>
