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
<title>技能類別-Skill Exchange</title>
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


<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
.skill {
	width: 300px;
	height: 500px;
	border: 1px #FAFAFA dashed;
}


.detail {
	margin-top: 5px;
	height: 50px;
}

.bot {
	background-color: #f0f5f5;
	position: relative;
	bottom: 0px;
}
.card-img-top{ cursor: pointer; }
</style>
</head>

<body id="body">
	<jsp:include page="/fragment/modal.jsp"/>
	<jsp:include page="/fragment/top1.jsp"/>
	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>技能一覽</h2>
				</div>
			</div>
		</div>
	</section>
	
	
		
	<div style="width:75%; margin:auto">
			<c:choose>
				<c:when test="${empty allSkills}">
					<tr height='36'>
						<td colspan='7' align='center'><font color='red'>查無技能資料</font></td>
					</tr>
				</c:when>

				<c:otherwise>
					<div class="row">
						<c:forEach var='skills' items='${allSkills}'>
							<c:if test="${not empty memberBean}">

								<c:forEach var='collects' items='${collectionsMap}'>
									<c:forEach var='collect' items='${collects.value}'>
										<c:if test="${collect.collectPNo == skills.publishNo}">
											<c:set var="have" value="${collect.collectPNo}" />
										</c:if>
									</c:forEach>
								</c:forEach>
							</c:if>
							
							<div class="col-sm-3">
							<div class="card" style="width:100%; height: 540px;margin-top:20px">
											
								<div>
									<span>
									<img src="${skills.member.memberPic}" style="width: 60px; height: 60px;margin-left:7px; margin-top: 5px" class="collectImg"/>
									${skills.member.memberNic}
									</span>
									<span class="time321" style="float: right;margin-top:22px; margin-right:10px;font-size:18px;">${skills.updateTime}</span>
								</div>
															
							<div class="card"  style="height:360px;margin:5px">
								
								<img onclick="location.href='publish?num=${skills.publishNo}&hostid=${skills.memberRegNo}&status=0'" class="card-img-top" style="height:70%"src="${skills.publishPic}" alt="Card image cap"/>
								<div class="card-body" style="padding:0px;margin-top:10px;height:50px">
									<div style="margin-bottom: 7px;">
										<h3 class="JQellipsis2" style="margin-top:10px;margin-left: 12px">${skills.publishTitle}</h3>
									</div>
									<div class="detail">
										<h5 style="margin:13px;font-size:15px" class="JQellipsis">${skills.publishDetail}</h5>
									</div>
								
								</div>
							</div>
								
									<div class="sb-nav-link-icon" style="margin-bottom: 10px;margin-left: 15px" >
										<i class="fa fa-map-marker fa-lg" aria-hidden="true"></i>&emsp;${skills.city}
									</div>
								
								<div class="bot" style="height:100px">
								
								
									<span style="text-align: center; display:block;line-height: 70px;">
									<c:choose>
											<c:when test="${empty memberBean}">
												<button type="button" id="add${skills.publishNo}"
													class="btn btn-success"
													onclick=collection(${skills.publishNo},0)>加入收藏 <i class="fa fa-heart-o" aria-hidden="true"></i></button>
												<button type="button" id="cancel${skills.publishNo}"
													class="btn btn-danger" style="display: none"
													onclick="location.href='loginInit'">請先登入</button>
											</c:when>

											<c:when test="${have!=skills.publishNo}">
												<button type="button" id="add${skills.publishNo}"
													class="btn btn-success"
													onclick=collection(${skills.publishNo},1,${sessionScope.memberBean.memberRegNo})>加入收藏 <i class="fa fa-heart-o" aria-hidden="true"></i></button>
												<button type="button" id="cancel${skills.publishNo}"
													class="btn btn-danger" style="display: none"
													onclick=collection(${skills.publishNo},2,${sessionScope.memberBean.memberRegNo})>取消收藏 <i class="fa fa-heart" aria-hidden="true"></i></button>
											</c:when>

											<c:otherwise>
												<button type="button" id="add${skills.publishNo}"
													class="btn btn-success" style="display: none"
													onclick=collection(${skills.publishNo},1,${sessionScope.memberBean.memberRegNo})>加入收藏 <i class="fa fa-heart-o" aria-hidden="true"></i></button>
												<button type="button" id="cancel${skills.publishNo}"
													class="btn btn-danger"
													onclick=collection(${skills.publishNo},2,${sessionScope.memberBean.memberRegNo})>取消收藏 <i class="fa fa-heart" aria-hidden="true"></i></button>
											</c:otherwise>

										</c:choose>										
											<c:choose>
											<c:when test="${empty memberBean}">
											<button type="button" id="addchat${skills.publishNo}"
													class="btn btn-primary"
													onclick=checkmember(${skills.publishNo},1)>發送訊息 <i class="fa fa-commenting" aria-hidden="true"></i>
										    </button>
												<button type="button" id="cancelchat${skills.publishNo}"
													class="btn btn-danger" style="display: none"
													onclick="location.href='loginInit'">請先登入</button>
											</c:when>
											
											<c:otherwise>
												<button type="button" id="addchat${skills.publishNo}"
													class="btn btn-primary"
													onclick="location.href='publish?num=${skills.publishNo}&hostid=${skills.memberRegNo}&status=1'">發送訊息 <i class="fa fa-commenting" aria-hidden="true"></i>
										    </button>
											</c:otherwise>
											</c:choose>	
											
																																	
									</span>								
								
									</div>							
								</div>
							</div>

						</c:forEach>
					</div>
				</c:otherwise>
			</c:choose>
			<div style="flex: 1"></div>
			<div id="calendar" style="flex: 10"></div>
			
		<!-- ---------------------要加的部份-------------------- -->
		
	</div>
	<!-- ---------------------要加的部份-------------------- -->

<jsp:include page="/fragment/bottom.jsp" />


	<script>
	function checkmember(publishNo,status) {		
	    if(status==1){
	    	
					$("#addchat"+publishNo).css("display","none");
					 $("#cancelchat"+publishNo).css("display","inline");
				}				
	  	    
	}
		
	function collection(publishNo,status,mebNo) {
		console.log(mebNo);
		
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
			
				},
				complete : function() {
					  let message = "已加入收藏";
						$("#alertText").text(message);
						$("#alertModal").modal('show');
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
			
					},
					complete : function() {
						  let message = "已取消收藏";
							$("#alertText").text(message);
							$("#alertModal").modal('show');
					},
					error : function() {
						console.log("出錯了!")
					}
				});
			 
		 }
		 else if (status==0){			 
			 $("#add"+publishNo).css("display","none");
			 $("#cancel"+publishNo).css("display","inline");
		 }
	   
	    
	}
	
	$(function(){
	    var len = 11; // Pubulish Detail超過40個字以"..."取代
	    $(".time321").each(function(i){
	        if($(this).text().length>len){
	            $(this).attr("title",$(this).text());
	            var text=$(this).text().substring(0,len-1);
	            $(this).text(text);
	        }
	    });
	});
	$(function(){
	    var len = 42; // Pubulish Detail超過40個字以"..."取代
	    $(".JQellipsis").each(function(i){
	        if($(this).text().length>len){
	            $(this).attr("title",$(this).text());
	            var text=$(this).text().substring(0,len-1)+"...";
	            $(this).text(text);
	        }
	    });
	})
	
	
	$(function(){
	    var len = 10; // Publish Title超過10個字以"..."取代
	    $(".JQellipsis2").each(function(i){
	        if($(this).text().length>len){
	            $(this).attr("title",$(this).text());
	            var text=$(this).text().substring(0,len-1)+"...";
	            $(this).text(text);
	        }
	    });
	})
	
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
	

	<!-- ---------------------要加的部份-------------------- -->

</body>
</html>
