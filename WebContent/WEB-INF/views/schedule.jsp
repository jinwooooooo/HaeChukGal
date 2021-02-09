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
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>경기 일정</h2>
        </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul id="portfolio-flters">
              <li class="filter-active"><a href="#">ALL</a></li>
              <li>
              	<a href="#">
                  <span>프리미어리그</span>
              	</a>
              </li>
              <li>
              	<a href="#">
                  <span>라리가</span>
              	</a>
              </li>
              <li class="league">
              	<a href="#">
                  <span>분데스리가</span>
              	</a>
              </li >
              <li class="league">
              	<a href="#">
                  <span>세리에A</span>
              	</a>
              </li>
              <li class="league">
              	<a href="#">
                  <span>리그1</span>
              	</a>
              </li>
              <li class="league">
              	<a href="#">
                  <span>챔피언스리그</span>
              	</a>
              </li>
              <li class="league">
              	<a href="#">
                  <span>유로파리그</span>
              	</a>
              </li>
              <li class="league">
              	<a href="#">
                  <span>The FA컵</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        
        <div style="text-align:center;">
        	<a href="#" type="button" style="display:inline-block;">
        	  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-right:5px;" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
			    <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753l-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
			  </svg>
        	</a>
        	<h1 style="display:inline-block;">2021.02</h1>
        	<a href="#" type="button" style="display:inline-block;">
        	  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-left:5px;" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
			    <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753l5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
			  </svg>
			</a>
		</div>
		<br/>
        <div class="row" style="width:100%;">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul style="display:table;" id="portfolio-flters">
              <li class="filter-active" style="display:table-cell; border:1px solid #bdbfbf;"><a href="#">ALL</a></li>
              <li style="display:table-cell; border:1px solid #bdbfbf;">
              	<a href="#">
                  <span>1월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>2월</span>
              	</a>
              </li >
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>3월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="monthe">
              	<a href="#">
                  <span>4월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>5월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>6월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>7월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>8월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>9월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>10월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>11월</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>12월</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        
        <div class="row" style="width:100%;">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul style="display:table; overflow:auto" id="portfolio-flters">
              <li class="filter-active" style="display:table-cell; border:1px solid #bdbfbf;"><a href="#">ALL</a></li>
              <li style="display:table-cell; overflow:visible; border:1px solid #bdbfbf;">
              	<a href="#">
                  <span>맨시티</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>맨유</span>
              	</a>
              </li >
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>리버풀</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="monthe">
              	<a href="#">
                  <span>레스터시티</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>웨스트햄</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>토트넘</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>첼시</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>에버턴</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>아스톤빌라</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>아스널</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>사우샘프턴</span>
              	</a>
              </li>
              <li style="display:table-cell; border:1px solid #bdbfbf;" class="month">
              	<a href="#">
                  <span>리즈</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        <br><br>
        
        <table class="table table-striped" style="text-align:center;">
       	  <thead>
       	    <tr>
       	      <th>날짜</th>
       	      <th>시간</th>
       	      <th>구장</th>
       	      <th>경기 정보</th>
       	      <th>리그</th>
       	      <th>구분</th>
       	    </tr>
       	  </thead>
       	  <tbody>
       	    <tr>
       	      <td>01.03 (일)</td>
       	      <td>20:30</td>
       	      <td>Goodison Park</td>
       	      <td>에버튼 0 vs 1 웨스트햄</td>
       	      <td>프리미어 리그</td>
       	      <td>17R</td>
       	    </tr>
       	    <tr>
       	      <td>01.13 (수)</td>
       	      <td>03:00</td>
       	      <td>Old Trafford</td>
       	      <td>맨유 1 vs 0 리버풀</td>
       	      <td>프리미어 리그</td>
       	      <td>18R</td>
       	    </tr>
       	    <tr>
       	      <td>01.30 (토)</td>
       	      <td>20:30</td>
       	      <td>Goodison Park</td>
       	      <td>에버튼 0 vs 1 노리치</td>
       	      <td>프리미어 리그</td>
       	      <td>31R</td>
       	    </tr>
       	  </tbody>
       	</table>
       	
      </div>
    </section>
    <!-- End Portfolio Section -->
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

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
</body>
</html>