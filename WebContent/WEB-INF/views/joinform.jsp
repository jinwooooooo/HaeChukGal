<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

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
          <h2>회원가입</h2>
        </div>
       	<div class="row mt-1">
          <div class="col-lg-8 mt-5 mt-lg-0" style="margin: 0 auto;">
            <form action="join" method="post" id="joinform" name="joinform" class="join_form" style="margin: 0 auto">
              <div class="form-group" style="padding-bottom:15px;">
                <label>아이디</label><input type="text" class="form-control" name="name" id="name" placeholder="Your ID"/>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:15px;">
                <label>비밀번호</label><input type="password" class="form-control" name="pw" id="pw" placeholder="Your PW"/>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:15px;">
                <label>이메일</label><input type="email" class="form-control" name="email" id="email" placeholder="Your E-mail"/>
                <div class="validate"></div>
              </div>
              <div class="form-group" style="padding-bottom:25px;">
              	<label style="display:block;">응원 팀</label>
                <select class="form-control" style="width:49%; display:inline;" onchange="categoryChange(this)" name="leagueName">
                	<option>리그 선택</option>
                	<option value="epl">프리미어리그</option>
                	<option value="primera">라리가</option>
                	<option value="bundesliga">분데스리가</option>
                	<option value="ligue1">리그앙</option>
                	<option value="seriea">세리에A</option>
                </select>
                <select class="form-control" name="teamname" style="width:49%; display:inline;" id="liketeam">
                	<option>팀 선택</option>
                </select>
              </div>
              
              <div style="text-align:center;">
       	      <div class="text-center" style="display: inline-block;"><button type="submit">가입</button></div>
              </div>
            </form>            
          </div>
        </div>
      </div>
    </section>
    
    <!-- End Login Section -->
  </main>
 
  <script>
  	function categoryChange(e){
  		var liketeam_premier="${epl}";
  		var liketeam_la="${laliga}";
  		var liketeam_bundes="${bundesliga}";
  		var liketeam_league1="${ligue1}";
  		var liketeam_seriea="${seriea}";
  		
  		var liketeam_premier_str = "${epl}";
  		liketeam_premier_str = liketeam_premier_str.replace(/\[/g,'');
  		liketeam_premier_str = liketeam_premier_str.replace(/\]/g,'');
  		var liketeam_premier = liketeam_premier_str.split(', ');
  		
  		var liketeam_la_str = "${laliga}";
  		liketeam_la_str = liketeam_la_str.replace(/\[/g,'');
  		liketeam_la_str = liketeam_la_str.replace(/\]/g,'');
  		var liketeam_la = liketeam_la_str.split(', ');
  		
  		var liketeam_bundes_str = "${bundesliga}";
  		liketeam_bundes_str = liketeam_bundes_str.replace(/\[/g,'');
  		liketeam_bundes_str = liketeam_bundes_str.replace(/\]/g,'');
  		var liketeam_bundes = liketeam_bundes_str.split(', ');
  		
  		var liketeam_league1_str = "${ligue1}";
  		liketeam_league1_str = liketeam_league1_str.replace(/\[/g,'');
  		liketeam_league1_str = liketeam_league1_str.replace(/\]/g,'');
  		var liketeam_league1 = liketeam_league1_str.split(', ');
  		
  		
  		var liketeam_seriea_str = "${seriea}";
  		liketeam_seriea_str = liketeam_seriea_str.replace(/\[/g,'');
  		liketeam_seriea_str = liketeam_seriea_str.replace(/\]/g,'');
  		var liketeam_seriea = liketeam_seriea_str.split(', ');
  		
  		var target=document.getElementById("liketeam")
  		
  		if(e.value=="epl") var teams=liketeam_premier;
  		if(e.value=="primera") var teams=liketeam_la;
  		if(e.value=="bundesliga") var teams=liketeam_bundes;
  		if(e.value=="ligue1") var teams=liketeam_league1;
  		if(e.value=="seriea") var teams=liketeam_seriea;
  		
  		target.options.length=0;
  		
  		for(x in teams){
  			var opt=document.createElement("option");
  			opt.value=teams[x];
  			opt.innerHTML=teams[x];
  			target.appendChild(opt);
  		}
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