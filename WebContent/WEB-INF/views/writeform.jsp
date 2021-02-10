<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SPOMAN</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: MyResume - v2.2.1
  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex flex-column justify-content-center">

    <nav class="nav-menu">
      <ul>
      	<c:if test="${name == null}">
      		<li><a href="index"><i class="bx bx-home"></i> <span>홈</span></a></li>
	        <li><a href="loginform"><i class="bx bx-log-in"></i> <span>로그인</span></a></li>
	        <li><a href="schedule"><i class="bx bx-calendar"></i> <span>경기 일정</span></a></li>
	        <li><a href="teamrank"><i class="bx bx-trophy"></i> <span>팀 순위</span></a></li>
	        <li><a href="playerrank"><i class="bx bx-football"></i> <span>선수 순위</span></a></li>
	        <li><a href="board"><i class="bx bx-clipboard"></i> <span>자유게시판</span></a></li>
      	</c:if>
      	<c:if test="${name != null}">
      		<c:if test="${name == 'manager'}">
      			<li><a href="index"><i class="bx bx-home"></i> <span>홈</span></a></li>
      			<li><a href="managerform"><i class="bx bx-data"></i> <span>데이터 관리</span></a></li>
		        <li><a href="logout"><i class="bx bx-log-out"></i> <span>로그아웃</span></a></li>
		    </c:if>
		    <c:if test="${name != 'manager'}">
		    	<li><a href="index"><i class="bx bx-home"></i> <span>홈</span></a></li>
		        <li><a href="logout"><i class="bx bx-log-out"></i> <span>로그아웃</span></a></li>
		        <li><a href="myteam"><i class="bx bx-calendar-check"></i> <span>응원팀 일정</span></a></li>
		        <li><a href="schedule"><i class="bx bx-calendar"></i> <span>경기 일정</span></a></li>
		        <li><a href="teamrank"><i class="bx bx-trophy"></i> <span>팀 순위</span></a></li>
		        <li><a href="playerrank"><i class="bx bx-football"></i> <span>선수 순위</span></a></li>
		        <li><a href="board"><i class="bx bx-clipboard"></i> <span>자유게시판</span></a></li>
		        <li><a href="settingform"><i class="bx bx-user"></i> <span>개인 설정</span></a></li>
		    </c:if>
      	</c:if>
      </ul>
    </nav>

  </header>
  <!-- End Header -->
  
  <main id="main">
    <!-- ======= Login Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up" style="display:block;">
        <div class="section-title">
          <h2>게시글 등록</h2>
        </div>
        <div class="row mt-1">
          <div class="col-lg-8 mt-5 mt-lg-0" style="margin: 0 auto;">
            <form role="form" class="join_form" style="margin: 0 auto" enctype="multipart/form-data">
              <div class="form-group" style="padding-bottom:15px;">
                <label>제목</label><input type="text" class="form-control" name="title" id="title" placeholder="제목을 작성해주세요"/>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:15px;">
                <label>내용</label><textarea rows="8" class="form-control" name="content" id="content" placeholder="내용을 작성해주세요"></textarea>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:20px;">
                <label>리그</label><br/>
                <select name="leagueName" id="leagueName" style="padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem; margin-right:10px;">
			      <option value="" selected>----- 구분 -----</option>
			      <option value="프리미어리그">프리미어리그</option>
			      <option value="분데스리가">분데스리가</option>
			      <option value="세리에A">세리에A</option>
			      <option value="라리가">라리가</option>
			      <option value="리그1">리그1</option>
			      <option value="챔피언스리그">챔피언스리그</option>
			      <option value="유로파리그">유리파리그</option>
			      <option value="FA컵">FA컵</option>
				</select>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:15px;">
                <label>사진 첨부</label><br/>
                <input type="file" id="file" name="file"/>
                <div class="validate"></div>
              </div>
              <div style="text-align:center;">
       	      <div class="text-center" style="display: inline-block;"><a type="button" id="GoBoard" href="javascript:write()">등록</a></div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- End Login Section -->
  </main>
  
  <script>
  	function write(){
  		var formdata=new FormData();
  		formdata.append("title", $("#title").val());
  		formdata.append("content", $("#content").val());
  		formdata.append("leagueName", $("#leagueName").val());
  		formdata.append("fileName", $("#file")[0].files[0], $("#file")[0].files[0].name);
  		
  		$.ajax({
  			url:"write",
  			processData: false,
			contentType: false,
			data: formdata,
			method: "post",
			success:function(data){
				$("#GoBoard").attr("href", "board");
				$("#GoBoard").get(0).click();
				$("#GoBoard").attr("href", "javascript:write()");
			}
  		});
  	}
  </script>
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      
      <div class="copyright">
        &copy; Copyright <strong><span>MyResume</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: [license-url] -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="resources/assets/vendor/typed.js/typed.min.js"></script>
  <script src="resources/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
</body>
</html>