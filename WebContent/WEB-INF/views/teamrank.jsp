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
	        <li><a href="loginform"><i class="bx bx-user"></i> <span>로그인</span></a></li>
	        <li><a href="schedule"><i class="bx bx-book-content"></i> <span>경기 일정</span></a></li>
	        <li><a href="teamrank"><i class="bx bx-server"></i> <span>팀 순위</span></a></li>
	        <li><a href="playerrank"><i class="bx bx-envelope"></i> <span>선수 순위</span></a></li>
	        <li><a href="board"><i class="bx bx-envelope"></i> <span>자유게시판</span></a></li>
      	</c:if>
      	<c:if test="${name != null}">
      		<li><a href="manageform"><i class="bx bx-home"></i> <span>데이터 관리</span></a></li>
      		<li><a href="index"><i class="bx bx-home"></i> <span>홈</span></a></li>
	        <li><a href="logout"><i class="bx bx-user"></i> <span>로그아웃</span></a></li>
	        <li><a href="myteam"><i class="bx bx-file-blank"></i> <span>응원팀 일정</span></a></li>
	        <li><a href="schedule"><i class="bx bx-book-content"></i> <span>경기 일정</span></a></li>
	        <li><a href="teamrank"><i class="bx bx-server"></i> <span>팀 순위</span></a></li>
	        <li><a href="playerrank"><i class="bx bx-envelope"></i> <span>선수 순위</span></a></li>
	        <li><a href="board"><i class="bx bx-envelope"></i> <span>자유게시판</span></a></li>
	        <li><a href="settingform"><i class="bx bx-envelope"></i> <span>개인 설정</span></a></li>
      	</c:if>
      </ul>
    </nav>

  </header>
  <!-- End Header -->
  
  <main id="main">
    <!-- ======= Resume Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>팀 순위</h2>
        </div>
        
        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul id="portfolio-flters" >
              <li class="filter-active" style="font-size:17px;">
              	<a href="#">
                  <span>프리미어리그</span>
              	</a>
              </li>
              <li class="league"  style="font-size:17px;">
              	<a href="#">
                  <span>라리가</span>
              	</a>
              </li>
              <li class="league"  style="font-size:17px;">
              	<a href="#">
                  <span>분데스리가</span>
              	</a>
              </li >
              <li class="league"  style="font-size:17px;">
              	<a href="#">
                  <span>세리에A</span>
              	</a>
              </li>
              <li class="league"  style="font-size:17px;">
              	<a href="#">
                  <span>리그1</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        <br/>
        
        <table class="table table-striped" style="text-align:center;">
       	  <thead>
       	    <tr>
       	      <th>순위</th>
       	      <th>팀명</th>
       	      <th>경기수</th>
       	      <th>승</th>
       	      <th>무</th>
       	      <th>패</th>
       	      <th>득점</th>
       	      <th>실점</th>
       	      <th>득실차</th>
       	      <th>승점</th>
       	    </tr>
       	  </thead>
       	  <tbody>
       	    <tr>
       	      <td>1</td>
       	      <td>맨유</td>
       	      <td>19</td>
       	      <td>11</td>
       	      <td>6</td>
       	      <td>2</td>
       	      <td>31</td>
       	      <td>23</td>
       	      <td>8</td>
       	      <td>29</td>
       	    </tr>
       	    <tr>
       	      <td>2</td>
       	      <td>레스터시티</td>
       	      <td>18</td>
       	      <td>11</td>
       	      <td>5</td>
       	      <td>2</td>
       	      <td>29</td>
       	      <td>22</td>
       	      <td>7</td>
       	      <td>28</td>
       	    </tr>
       	    <tr>
       	      <td>3</td>
       	      <td>웨스트햄</td>
       	      <td>19</td>
       	      <td>10</td>
       	      <td>4</td>
       	      <td>5</td>
       	      <td>27</td>
       	      <td>19</td>
       	      <td>8</td>
       	      <td>26</td>
       	    </tr>
       	  </tbody>
       	</table>
       	
      </div>
    </section>
    <!-- End Resume Section -->
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