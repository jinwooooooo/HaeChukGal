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
  
  <c:set var="startYear" value="2020"/>
  <c:set var="endYear" value="2021"/>
  <c:set var="choiceLeague" value="epl"/>
  
  <main id="main">
    <!-- ======= Resume Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>개인 순위</h2>
        </div>
        
        
        <div id="playerlistyear" style="text-align:center;">
        	<a id="1" class="btn" href="javascript:playerlist(${startYear-1},${endYear-1},'${choiceLeague}','1')" style="display:inline-block; margin:0px 0px 10px 0px;">
        		<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
				  <path d="M3.86 8.753l5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
				</svg>
        	</a>
        	<h3 style="display:inline-block;">${startYear} - ${endYear}</h3>
        	<a id="2" class="btn" href="javascript:playerlist(${startYear+1},${endYear+1},'${choiceLeague}','2')" style="display:inline-block; margin:0px 0px 10px 0px;">
        		<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
				  <path d="M12.14 8.753l-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
        	</a>
        </div>
	   
	        <br/>
	        
		        <div class="row">
		          <div class="col-lg-12 d-flex justify-content-center" data-aos-delay="100">
		            <ul id="portfolio-flters">
		              <li class='filter-active' style="font-size:17px;">
		              	<a href="javascript:playerlist(${startYear},${endYear},'epl','3')">
		                  <span>프리미어리그</span>
		              	</a>
		              </li>
		              <li class="league" style="font-size:17px;">
		              	<a href="javascript:playerlist(${startYear},${endYear},'primera','4')">
		                  <span>라리가</span>
		              	</a>
		              </li>
		              <li class="league" style="font-size:17px;">
		              	<a href="javascript:playerlist(${startYear},${endYear},'bundesliga','5')">
		                  <span>분데스리가</span>
		              	</a>
		              </li >
		              <li class="league" style="font-size:17px;">
		              	<a href="javascript:playerlist(${startYear},${endYear},'seriea','6')">
		                  <span>세리에A</span>
		              	</a>
		              </li>
		              <li class="league" style="font-size:17px;">
		              	<a href="javascript:playerlist(${startYear},${endYear},'ligue1','7')">
		                  <span>리그1</span>
		              	</a>
		              </li>
		            </ul>
		          </div>
		        </div>
	        
	        
	        <br/>
	        <div id="playlist">
	        <table class="table table-striped" style="text-align:center;">
	       	  <thead>
	       	    <tr>
	       	      <th>순위</th>
	       	      <th>선수</th>
	       	      <th>팀</th>
	       	      <th>경기</th>
	       	      <th>득점</th>
	       	      <th>도움</th>
	       	      <th>공격포인트</th>
	       	      <th>슈팅</th>
	       	      <th>유효슈팅</th>
	       	      <th>파울</th>
	       	      <th>경고</th>
	       	      <th>퇴장</th>
	       	    </tr>
	       	  </thead>
	       	  <tbody>
	       	  <c:forEach var="playerRank" items="${playerRank}" >
	       	  	<tr>
	       	      <td>${playerRank.rank}</td>
	       	      <td style="text-align: left;"><img src="http://img1.daumcdn.net/thumb/S100x100/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fsports%2Fplayer%2F300%2F14%2F${playerRank.playerImage}&scode=default_face_profile_big_p" onerror="this.src='https://t1.daumcdn.net/media/img-section/sports13/player/noimage/square_m.png'" style="width: 50px; height:50px; border-radius: 25px;"/> &nbsp; ${playerRank.playerName} </td>
	       	      <td>${playerRank.teamName}</td>
	       	      <td>${playerRank.game}</td>
	       	      <td>${playerRank.score}</td>
	       	      <td>${playerRank.assist}</td>
	       	      <td>${playerRank.attackPoint}</td>
	       	      <td>${playerRank.shoot}</td>
	       	      <td>${playerRank.shootOnTarget}</td>
	       	      <td>${playerRank.foul}</td>
	       	      <td>${playerRank.yellowCard}</td>
	       	      <td>${playerRank.redCard}</td>
	       	    </tr>
	       	  </c:forEach>  
	       	  </tbody>
	       	</table>
	       	</div>
	       	
       	 
      </div>
    </section>
    <!-- End Resume Section -->
  </main>
  
  <script>
  	function playerlist(startYear, endYear, choiceLeague, no){
  		console.log(startYear);
  		console.log(endYear);
  		console.log(choiceLeague);
  		

  		if(no=='1'){
	    	startYear=startYear-1;
	    	endYear=endYear-1;
	    }
	    
	    if(no=='2'){
	    	startYear=startYear+1;
	    	endYear=endYear+1;
	    }
	   
	    $.ajax({
  			url:"playerlist",
  			method:"GET",
  			data:{startYear:startYear, endYear:endYear, choiceLeague:choiceLeague},
  			success:function(data){
  				$("#playlist").html(data);
  			}
  		});
	    
	    $.ajax({
	    	url:"playerlistyear",
	    	data:{startYear:startYear, endYear:endYear, choiceLeague:choiceLeague},
	    	success:function(data){
	    		$("#playerlistyear").html(data);
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