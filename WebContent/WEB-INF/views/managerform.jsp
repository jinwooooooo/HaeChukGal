<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
  	<section id="contact" class="contact">
      <div class="container" data-aos="fade-up" style="display:block;">
        <h2 style="text-align:center;">경기 일정 업데이트</h2><br/>
		<form method="post" id="gameinfo" name="gameinfo" style="text-align:center;">
		<table width="800" border="1" style="margin:0 auto;">
		<tr>
			<td>시즌</td>
			<td><input type="text" name="g_season" id="g_season"></td>
			<td>리그이름</td>
			<td><input type="text" name="g_leagueName" id="g_leagueName"></td>
			<td colspan="2">
				<input type="button" value="등록" id="btn_write_gameInfo" onclick="javascript: form.action='gamewrite';"/>
				<input type="button" value="삭제" id="btn_delete_gameInfo" onclick="javascript: form.action='gamedelete';"/>
			</td>
		</tr>
		</table>
		</form>
		
		<br/><br/>
		
		<h2 style="text-align:center;">선수 순위 업데이트</h2><br/>
		<form method="post" id="playerinfo" name="playerinfo" style="text-align:center;">
		<table width="800" border="1" style="margin:0 auto;">
		<tr>
			<td>시즌</td>
			<td><input type="text" name="p_season" id="p_season"></td>
			<td>리그이름</td>
			<td><input type="text" name="p_leagueName" id="p_leagueName"></td>
			<td colspan="2">
				<input type="button" value="등록" id="btn_write_playerInfo" onclick="javascript: form.action='playerwrite';"/>
				<input type="button" value="삭제" id="btn_delete_playerInfo" onclick="javascript: form.action='playerdelete';"/>
			</td>
		</tr>
		</table>  
		</form>
		
		<br/><br/>
		
		<h2 style="text-align:center;">팀 순위 업데이트</h2><br/>
		<form method="post" id="teaminfo" name="teaminfo" style="text-align:center;">
		<table width="800" border="1" style="margin:0 auto;">
		<tr>
			<td>시즌</td>
			<td><input type="text" name="t_season" id="t_season"></td>
			<td>리그이름</td>
			<td><input type="text" name="t_leagueName" id="t_leagueName"></td>
			<td colspan="2">
				<input type="button" value="등록" id="btn_write_teamInfo" onclick="javascript: form.action='teamwrite';"/>
				<input type="button" value="삭제" id="btn_delete_teamInfo" onclick="javascript: form.action='teamdelete';"/>
			</td>
		</tr>
		</table>
		</form>
      </div>
    </section>
  </main>
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

  <script src="resources/assets/js/main.js"></script>
  <script src="resources/assets/js/manager.js"></script>
</body>
</html>