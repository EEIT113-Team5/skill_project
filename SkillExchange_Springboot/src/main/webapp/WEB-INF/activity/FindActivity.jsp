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
<!-- <meta http-equiv="refresh" content="5"> -->
<meta name="description" content="" />
<meta name="author" content="" />
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
<title>SkillExchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous"></script>

<!-- 行事曆 -->
<!-- Moment.js v2.20.0 -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.0/moment.min.js"></script>
<!-- FullCalendar v3.8.1 -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css"
	rel="stylesheet" media="print">
</script>

<style>
* {
	font-family: 微軟正黑體;
}

.a {
	background-color: #FFECF5;
}

.updatetime {
	text-align: right;
	font-size: 0.8em;
	color: #9D9D9D;
}

.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 1.00rem;
}

.btn {
	color: black !important;
}
</style>

</head>
<!-- ---------------------要加的部份-------------------- -->
<body id="body">
	<jsp:include page="/fragment/top1.jsp" />

	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 style="font-family: 微軟正黑體;">活動一覽</h2>
				</div>
			</div>
		</div>
	</section>


	<!-- ---------------------要加的部份-------------------- -->

	<div class="container-fluid" style="width: 90%">
		<div style="display: flex">
			<input class="btn  btn-outline-primary m-3" type="button"
				value="+建立活動" onclick=insertform() /> <a class="btn  btn-outline-primary m-3"
				 type="button" href="MyOwnActivity?memberid=5">v由我主辦</a>
			<a class="btn btn-info m-3" style="background-color: #84C1FF" type="button"
				onclick="showcalendar()">活動日曆</a>
		</div>
	</div>
	<div class="modal fade" id="showcalendar" tabindex="-1" role="dialog"
		aria-labelledby="editDetailModalLabel" >
		<div class="modal-dialog modal-lg" role="document"  >
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="editDetailModalLabel"><b>活動行事曆</b></h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="calendar" ></div>


				</div>

			</div>
		</div>
	</div>
	<script>
	function showcalendar(){
		$("#showcalendar").modal('show');
	}
	</script>



	<div class="container-fluid" style="width: 90%">
		<!-- 		<div style="display: flex"> -->
		<!-- 			<div style="flex: 40"> -->
		<c:choose>
			<c:when test="${empty searchList}">
				<div>查無符合資料</div>
			</c:when>
			<c:otherwise>
				<div class="row">
					<c:forEach var='search' varStatus="var" items='${searchList}'>
						<c:if test="${search.memberid!=memberBean.memberRegNo}">
							<div class="col-sm-4 mt-2">
								<div class="card m-1" style="width: 100%; height: 530px;">
									<c:choose>
										<c:when test="${search.imgB64==null}">
											<!-- 												class="stretched-link" -->
											<a href="ChooseOneActivity?activityid=${search.activityid}"><img
												src="activityimg/default.jpg" class="card-img-top"
												style="width: 100%; height: 260px;" /></a>
										</c:when>
										<c:otherwise>
											<!-- 												class="stretched-link" -->
											<a href="ChooseOneActivity?activityid=${search.activityid}"><img
												src="data:image/jpg;base64,${search.imgB64}"
												class="card-img-top" style="width: 100%; height: 260px" /></a>
										</c:otherwise>
									</c:choose>
									<div class="card-body">
										<h4 class="card-title">
											<div style="display: flex">
												<div style="flex: 2">
													<h4>${search.beginDay}</h4>
												</div>
												<div style="flex: 3">
													<h4>
														<b>${fn:substring(search.title,0,8)}</b>
													</h4>
												</div>
											</div>
										</h4>
										<p class="card-text">
											<i class="fa fa-map-marker" aria-hidden="true"></i>${fn:substring(search.position, 0, 17)}...</p>
										<p class="card-text" id="interest${search.activityid}">${search.interest}人有興趣</p>
										<span class="card-text" id="attendency${search.activityid}">${search.attendency}人要參加</span>
										<c:choose>
											<c:when test="${search.group2!=null }">
												<span id="limit${search.activityid}">/${search.group2}人為上限</span>
											</c:when>
											<c:otherwise>
												<span>/不限</span>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when
												test="${search.attendency<search.group2 ||search.group2==null }">
												<p class="mt-2">
													<c:choose>
														<c:when test="${empty memberBean}">
															<input type="button" class="btn btn-secondary interest"
																value="有興趣" disabled />
														</c:when>
														<c:when test="${search.result2 == 1}">
															<a type="button" class="btn btn-secondary interest"
																onclick=attendency(${search.activityid},0)
																id="cancelint${search.activityid}">取消興趣</a>
															<a type="button" class="btn btn-secondary interest"
																style="display: none"
																onclick=attendency(${search.activityid},1)
																id="hasinterest${search.activityid}">有興趣</a>
														</c:when>

														<c:otherwise>
															<a type="button" class="btn btn-secondary interest"
																onclick=attendency(${search.activityid},1)
																id="hasinterest${search.activityid}">有興趣</a>
															<a type="button" class="btn btn-secondary interest"
																onclick=attendency(${search.activityid},0)
																style="display: none" id="cancelint${search.activityid}">取消興趣</a>

														</c:otherwise>
													</c:choose>
													<c:choose>
														<c:when test="${empty memberBean}">
															<input type="button" class="btn btn-info" value="會參加"
																disabled />
														</c:when>
														<c:when test="${search.result == 1}">
															<a type="button"
																onclick=attendency(${search.activityid},3)
																class="btn btn-info cancel"
																id="cancel${search.activityid}">取消參加</a>
															<a type="button"
																onclick=attendency(${search.activityid},2)
																style="display: none" class="btn btn-info attend"
																id="attend${search.activityid}">會參加</a>
														</c:when>
														<c:otherwise>
															<a type="button"
																onclick=attendency(${search.activityid},2)
																class="btn btn-info attend"
																id="attend${search.activityid}">會參加</a>
															<a type="button"
																onclick=attendency(${search.activityid},3)
																style="display: none" class="btn btn-info cancel"
																id="cancel${search.activityid}">取消參加</a>
														</c:otherwise>
													</c:choose>
												<p class="updatetime">最後更新時間:${fn:substring(search.insertime, 0, 10)}</p>

											</c:when>
											<c:otherwise>
												<h3>活動已報名額滿!</h3>
												<p class="updatetime">&nbsp;最後更新時間:${fn:substring(search.insertime, 0, 10)}</p>
											</c:otherwise>
										</c:choose>

									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- 			<div style="flex: 0.5"></div> -->
	<!-- 			<div id="calendar" style="flex: 10"></div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->

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

		function insertform() {
			var w_width = 1000;
			var w_height = 500;
			var x = (screen.width - w_width) / 2;
			var y = (screen.height - w_height) / 3;
			window.open('EstablishActivity', '活動表單',
					config = 'height=700,width=1000,top=' + y + ',left=' + x
							+ ',location=no,resizable=no,toolbar=no');
		}
		
		function attendency(activityid,num) {
// 		    console.log(num);
		    if(num==1){
                var interest="有興趣"
                 $("#hasinterest"+activityid).css("display","none");
				 $("#cancelint"+activityid).css("display","inline");
			 } else if (num==0){
				 var interest="取消興趣"
				$("#cancelint"+activityid).css("display","none");
				 $("#hasinterest"+activityid).css("display","inline");
			 }else if(num==2){
				 var interest="會參加"
			     $("#attend"+activityid).css("display","none");
				 $("#cancel"+activityid).css("display","inline");
			  } else if(num==3){
				 var interest="取消參加"
				  $("#attend"+activityid).css("display","inline");
				  $("#cancel"+activityid).css("display","none");
				}
			$.ajax({
				url : "RetrieveNumber", //請求的url地址
				dataType : "json", //返回格式為json
				async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
				data : {
					"id" : activityid,
// 					"memberid":5, //之後用seesion傳memberid
					"interest":interest
				}, //引數值
				type : "GET", //請求方式
				success : function(req) {
					console.log(req);
					var limit=$("#limit"+activityid).text();
					var limit1=limit.substring(1,limit.indexOf("人"));
					$("#interest"+activityid).text(req[1]+"人有興趣");
					$("#attendency"+activityid).text(req[0]+"人要參加");
					if(limit1==req[0]){
						location.reload();
					}

				},
				complete : function() {
					//請求完成的處理
				},
				error : function() {
					console.log("出錯了!")
				}
			});
		}
		
		function interest() {

		}
	
	</script>
	<!-- ---------------------要加的部份-------------------- -->
	<!-- 
    Essential Scripts
    =====================================-->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>
	<script>
	var eventlist=[];
	var calen=$('#calendar');
	function getactivitydate(){
		$.ajax({
			url : "SelectActivityJson", //請求的url地址
			dataType : "json", //返回格式為json
			async : true, //請求是否非同步，預設為非同步，這也是ajax重要特性
			type : "GET", //請求方式
			success : function(req) {
				console.log(req)
				for(i=0;i<req.length;i++){
				var event = {
					title: req[i].title.substr(0,10),
	  				start: req[i].beginDay ,
	  				end: req[i].endDay  ,
	  				url: "ChooseOneActivity?activityid="+req[i].activityid,
				}
				eventlist.push(event);
				
			}			
				console.log(eventlist);
				calen.fullCalendar({
						// 參數設定[註1]
					  		header: { // 頂部排版
					  			left: "prev,next today", // 左邊放置上一頁、下一頁和今天
					  			center: "title", // 中間放置標題
					  			right: "month,basicWeek,basicDay" // 右邊放置月、周、天
					  		},
					  		defaultDate: "2020-06-12", // 起始日期
					  		eventColor: '#378006',
//					  		weekends: false, // 顯示星期六跟星期日
					  		editable: true,  // 啟動拖曳調整日期
					  		events: eventlist
			     });
			},
			complete : function() {
			},
			error : function() {
				console.log("出錯了!")
			}
		});
		
	}
	getactivitydate();
	
	</script>
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

	<!-- ---------------------要加的部份-------------------- -->



</body>
</html>