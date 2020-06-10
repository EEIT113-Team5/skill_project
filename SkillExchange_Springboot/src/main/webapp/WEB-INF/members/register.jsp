
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zt-TW">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
<title>加入會員-Skill Exchange</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<script src="../font-awesome/css/font-awesome.min.css"
	crossorigin="anonymous">
	
</script>

<script>
	var sex = request.getElementsByName('gender');
</script>

<!-- 卉加 -->

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- 卉加 -->

<style>
.red-font {
	color: red;
 	margin-left: 5px; 
}
</style>
</head>

<!-- ---------------------要加的部份-------------------- -->
<body id="body" background="./images/pattern2.jpg">
	<jsp:include page="/fragment/top1.jsp" />
	<jsp:include page="/fragment/modal2.jsp" />
	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>加入會員</h2>
				</div>
			</div>
		</div>
	</section>
<!-- 	卉加 -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
        <div id="login-overlay" class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <h4 class="modal-title" id="myModalLabel">
              <h5>*為必填欄位</h5>
                </div>
                <div class="modal-body">
                  
                
                    <form id="registerForm" action="registerCheck" method="POST" enctype="multipart/form-data">
    <!---form--->           <div class="form-group">
    <!---input width--->    <div class="col-xs-6">
                            <tr>
                                <td><label for="name">姓名</label><lable class="red-font">*</lable></td>
                                <td><font class="red-font small">${errorMsg.memberName}</font></td>
                            </tr>
                            <div class="input-group">
                                <input type="text" class="form-control" id="name" name="memberName" required>
<!--                                 <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                            </div>
                            <br>
                            <tr>
                                <label for="nicname">暱稱</label><lable class="red-font">*</lable>
                                <td><font class="red-font small">${errorMsg.memberNic}</font></td>
                            </tr>
                            <div class="input-group">
                                <input type="text" class="form-control" id="nicname" name="memberNic" required>
<!--                                 <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                            </div>
<br>
                        <br>
                        <tr>
                            <td><label for="">性別</label><lable class="red-font">*</lable></td>
                            <td><font class="red-font small">${errorMsg.memberSex}</font></td>
                          	  <div class="input-group">
            				<td>
                                <input type="radio" name="memberSex" id="gender_m"
                                value="1"> 
                                    <label for="gender_m">男</label> &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="memberSex" id="gender_w" 
                                value="2">
                                    <label for="gender_w">女</label> &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="memberSex" id="gender_no" 
                                value="3"> 
                                    <label for="gender_no">不提供</label> &nbsp; &nbsp; &nbsp;
                  		  	</td>
             			</tr><br>	
                            </div>

                        
    <!--------------------------------------separator---------------------------------------------------------------> <hr>
                    </div>
                    </div>
                        <div class="form-group">
                        <div class="col-xs-6">
                            <tr>
                                <td><label for="acc">帳號</label><lable class="red-font">*</lable></td>
                                <td><font class="red-font small">${errorMsg.memberAcc}</font></td>
                            </tr>
                            
                            <div class="input-group">
                            <input type="text" id="acc" name="memberAcc" class="form-control" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                            </div>
                        
                            <br>
                            <tr>
                                <td><label for="pwd">密碼</label><lable class="red-font">*</lable></td>
                                <td><font class="red-font small">${errorMsg.memberPwd}</font></td>
                            </tr>
                            <div class="input-group">
                            <input type="password" id="pwd" name="memberPwd" class="form-control" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                        </div>

                        <br>
                        <br>
                        <tr>
                            <td><label for="checkpwd">再次確認密碼</label><lable class="red-font">*</lable></td>
                            <td><font class="red-font small">${errorMsg.checkpwd}</font></td>
                        </tr>

                            <div class="input-group">
                            <input type="password" class="form-control" id="checkpwd" name="checkpwd" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                        </div>
    <!--------------------------------------separator---------------------------------------------------------------> <hr>
    
                    </div>       
                    </div> 
                    
                        <div class="form-group"> 
                            <div class="col-xs-12">
                                <tr>
                                    <td><label for="birthday">生日</label><lable class="red-font">*</lable></td>
                                    <td><font class="red-font small">${errorMsg.memberBirth}</font></td>
                                </tr>
                            
                            <div class="input-group">
                            <input type="date" class="form-control"id="birthday" name="memberBirth" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                        </div>
    <!----------------------------break-------------------------------------------------------------> <br>
                         </div>
                     </div>
    
                            <div class="form-group">
                            <div class="col-xs-12">
                                <tr>
                                    <td><label for="phone">電話</label><lable class="red-font">*</lable></td>
                                    <td><font class="red-font small">${errorMsg.memberPhone}</font></td>
                                </tr>
                          
                            <div class="input-group">
                                <input type="text" class="form-control" id="phone" name="memberPhone" required>
<!--                                 <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                            </div>
    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>                     
                    </div>
                 
                            <div class="form-group">
                            <div class="col-xs-12">
                            <tr>
                                <td><label for="mail">信箱</label><lable class="red-font">*</lable></td>
                                <td><font class="red-font small">${errorMsg.memberMail}</font></td>
                            </tr>
                            
                            <div class="input-group">
                            <input type="text" class="form-control" id="mail" name="memberMail" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span> -->
                        </div>
    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>
                        </div>
    
                            <div class="form-group">
                            <div class="col-xs-12">
                            <label >所在縣市</label> &nbsp; &nbsp;
                            <select name="memberCountry" id="">
                                <option value="Keelung">基隆市</option>
								<option value="Taipei">台北市</option>
								<option value="Chiayi">嘉義縣</option>
								<option value="New Taipei">新北市</option>
								<option value="Tainan">台南市</option>
							    <option value="Taoyuan">桃園市</option>
								<option value="Kaohsiung">高雄市</option>
                                <option value="Pingtung">屏東縣</option>
								<option value="Hsinchu">新竹縣</option>
								<option value="Taitung ">台東縣</option>
								<option value="Miaoli">苗栗縣</option>
								<option value="Hualien">花蓮縣</option>
								<option value="Taichung">台中市</option>
    							<option value="Yilan">宜蘭縣</option>
								<option value="Changhua">彰化縣</option>
								<option value="Penghu">澎湖縣</option>
	    						<option value="Nantou ">南投縣</option>
								<option value="Kinmen">金門縣</option>
								<option value="Yunlin">雲林縣</option>
								<option value="Lienchiang">連江縣</option>
										</select>
                            <div class="input-group">
                            
                        </div>
    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>
                        </div>

                            <div class="form-group">
                            <div class="col-xs-12">
                                <tr>
                                    <td><label for="addr">地址</label><lable class="red-font">*</lable></td>
                                    <td><font class="red-font small">${errorMsg.memberAddr}</font></td>
                                </tr>
                            
                            <div class="input-group">
                            <input type="text" class="form-control" id="addr" name="memberAddr" required>
<!--                             <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>  -->
                        </div>
    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                            <label for="">照片</label><lable class="red-font">*</lable>
                            <div class="input-group"></div>
                            <input type="file" onchange="readURL(this)"
                            name="memberPic" targetID="prePic" required>
<br>
                            <img id="prePic" style="display: none" src="#" width="200px"
											name='prePic' value="${memberPic}" />
                        </div>

    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>
                        </div>

 
                        <div class="form-group">
                            <div class="col-xs-12">
                                <tr>
                                    <td><label for=></label></td>
                                    <td></td>
                                </tr>
                            
                            <div class="input-group">
                                
                                <tr>
                                    <td><label for=>  </label></td>
                                    <td></td>
                                </tr>
                       
                        </div>
    <!----------------------------break-------------------------------------------------------------> <br> 
                        </div>
                        </div>
    
                      <div class="form-group">
                     

                      <div style="text-align: center;" class="input-group-addon">
                        <input type="submit" value="送出" class="btn btn-success">
                        <input type="reset"  value="清除" class="btn btn-danger"></div>
						
                    </div>
                    <div style="text-align: center;">
                        <a href="loginInit">已經有帳戶，我要登入</a>
                        <br>
                        <p>
                            
                        </p>
                    </div>
<!--                     一鍵加入會員按鈕 -->
                    <div><input type="button" onclick='oneKey()' value=".&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp." 
                    class="btn" ></div>
                    <div><input type="button" onclick='oneKey2()' value=".&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp." 
                    class="btn" ></div>

                    </form>
                  </div><!---modal-body--->
              </div>
           </div>
    
    
    <script type="text/javascript">
    
    </script>
    
	<!-- ---------------------要加的部份-------------------- -->
	<jsp:include page="/fragment/bottom.jsp" />
	<!-- ---------------------要加的部份-------------------- -->

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var imageTagID = input.getAttribute("targetID");
				var reader = new FileReader();
				reader.onload = function(e) {
					var img = document.getElementById(imageTagID);
					img.setAttribute("src", e.target.result)
				}
				reader.readAsDataURL(input.files[0]);
				document.getElementById("prePic").style.display = "block";
			}
		}
	</script>
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

	<!-- Form Validation -->
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
<!--一鍵加入會員 這裡 -->
	<script>
		function oneKey() {
			$("#name").val("小熊");
			$("#nicname").val("仙女");
			$("#acc").val("eeit0610");
			$("#birthday").val("1993/07/27");
			$("#pwd").val("123456789");
			$("#checkpwd").val("123456789");
			$("#phone").val("0912345678");
			$("#mail").val("eeit11321@gmail.com");
			$("#addr").val("杉樹區北森花路6巷5號");

		}
	</script>
	<script>
		function oneKey2() {
			$("#name").val("陳淑芬");
			$("#nicname").val("美女");
			$("#acc").val("eeit0612");
			$("#birthday").val("1993/07/27");
			$("#pwd").val("123456789");
			$("#checkpwd").val("123456789");
			$("#phone").val("0912345678");
			$("#mail").val("eeit202005@gmail.com");
			$("#addr").val("杉樹區北森花路6巷5號");

		}
	</script>
<!--一鍵加入會員 這裡 -->


	
</body>

</html>