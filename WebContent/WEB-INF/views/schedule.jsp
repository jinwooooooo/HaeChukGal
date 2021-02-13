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
  <c:set var="choiceMonth" value="02"/>
  <c:set var="choiceTeam" value="all"/>
  
  
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
              <li  class="filter-active">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'epl' , ${choiceMonth}, ${choiceTeam}, '3')">
                  <span>프리미어리그</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'primera' , ${choiceMonth}, ${choiceTeam}. '4')">
                  <span>라리가</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'bundesliga' , ${choiceMonth}, ${choiceTeam}. '5')">
                  <span>분데스리가</span>
              	</a>
              </li >
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'seriea' , ${choiceMonth}, ${choiceTeam}. '6')">
                  <span>세리에A</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'ligue1' , ${choiceMonth}, ${choiceTeam}. '7')">
                  <span>리그1</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'uefacl' , ${choiceMonth}, ${choiceTeam}. '8')">
                  <span>챔피언스리그</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'uefacup' , ${choiceMonth}, ${choiceTeam}. '9')">
                  <span>유로파리그</span>
              	</a>
              </li>
              <li class="league">
              	<a href="javascript:schedule(${startYear} , ${endYear}, 'facup' , ${choiceMonth}, ${choiceTeam}. '10')">
                  <span>The FA컵</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        
        
        <div id="schedulelistyear" style="text-align:center;">
        	<a id="1" href="javascript:schedule(${startYear} , ${endYear}, ${choiceLeague} , ${choiceMonth}, ${choiceTeam}. '1')" type="button" style="display:inline-block;">
        	  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-right:5px;" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
			    <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753l-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
			  </svg>
        	</a>
        	<h1 style="display:inline-block;">${startYear} - ${endYear}</h1>
        	<a id="2" href="javascript:schedule(${startYear} , ${endYear}, ${choiceLeague} , ${choiceMonth}, ${choiceTeam}. '2')" type="button" style="display:inline-block;">
        	  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-left:5px;" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
			    <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753l5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
			  </svg>
			</a>
		</div>
		
		
		<br/>
        <div class="row" style="width:100%;">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul style="display:table;" id="portfolio-flters">
            	<c:forEach var="montharr" items="${montharr}" >
            		  <li class="month" style="display:table-cell; border:1px solid #bdbfbf;">
		              	<a href="javascript:schedule(${startYear} , ${endYear}, ${choiceLeague} , '${montharr}', ${choiceTeam}. '12')" >
		                  <span>${montharr}월</span>
		              	</a>
		              </li>
            	</c:forEach>     
            </ul>
          </div>
        </div>
        
        <%-- <div class="row" style="width:100%;">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul style="display:table; overflow:auto" id="portfolio-flters">
              <li class="filter-active" style="display:table-cell; border:1px solid #bdbfbf;">
              	<a href="#">
              		<span>ALL</span>
              	</a>
              </li>
			      <c:forEach var="epl" items="${epl}" >
	              <li class="als-item" style="display:table-cell; overflow:visible; border:1px solid #bdbfbf;">
	              	<a href="#">
	                  <span><img src="${epl.teamName}" style="width: 40px; height: 40px;"/></span>
	              	</a>
	              </li>
              	  </c:forEach>	
              
            </ul>
          </div>
        </div> --%>
        
        <br>
        <div style="text-align:right;">
	        <svg xmlns="http://www.w3.org/2000/svg" style="color:#2E2EFE;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
			<circle cx="8" cy="8" r="8"/>
			</svg>
	        <span> : 경기 종료　</span>
	        <svg xmlns="http://www.w3.org/2000/svg" style="color:#04B404;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
			<circle cx="8" cy="8" r="8"/>
			</svg>
	        <span> : 경기 전　　</span>
	        <pre></pre>
	        <svg xmlns="http://www.w3.org/2000/svg" style="color:#FF0000;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
			<circle cx="8" cy="8" r="8"/>
			</svg>
	        <span> : 경기 취소　</span>
	        <svg xmlns="http://www.w3.org/2000/svg" style="color:black;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
			<circle cx="8" cy="8" r="8"/>
			</svg>
	        <span> : 경기 연기　</span>
	    </div>
        
        <br>
        
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
       	    <c:forEach var="gameList" items="${gameList}" >
       	    	<tr style="vertical-align:center;">
					<td>${gameList.matchdate}</td>
					<td>${gameList.matchtime}</td>
					<td>${gameList.stadium}</td>
					<td style="align: center;">
					   <img src="${gameList.homeimage}" style="width: 40px; height: 40px;"/> ${gameList.homename} ${gameList.homescore} vs ${gameList.awayscore} ${gameList.awayname} <img src="${gameList.awayimage}" style="width: 40px; height: 40px;"/>
					</td>
					<td>${gameList.leagueName}</td>
					<td>${gameList.round}R</td>
					<c:if test="${gameList.gamestatus=='종료'}">
						<td>
							<svg xmlns="http://www.w3.org/2000/svg" style="color:#2E2EFE;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
	  						<circle cx="8" cy="8" r="8"/>
							</svg>
						</td>
					</c:if>
					<c:if test="${gameList.gamestatus=='경기전'}">
						<td>
							<svg xmlns="http://www.w3.org/2000/svg" style="color:#04B404;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
	  						<circle cx="8" cy="8" r="8"/>
							</svg>
						</td>
					</c:if>
					<c:if test="${gameList.gamestatus=='경기취소'}">
						<td>
							<svg xmlns="http://www.w3.org/2000/svg" style="color:#FF0000;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
	  						<circle cx="8" cy="8" r="8"/>
							</svg>
						</td>
					</c:if>
					<c:if test="${gameList.gamestatus=='연기'}">
						<td>
							<svg xmlns="http://www.w3.org/2000/svg" style="color:black;" width="16" height="16" fill="currentColor" class="bi bi-circle-fill" viewBox="0 0 16 16">
	  						<circle cx="8" cy="8" r="8"/>
							</svg>
						</td>
					</c:if>
       	    	</tr>
  		  	</c:forEach>
       	  </tbody>
       	</table>
       	
      </div>
    </section>
    <!-- End Portfolio Section -->
  </main>
  <script>

  	
  	function schedule(startYear, endYear, choiceLeague, choiceMonth, choiceTeam, no){
  		
	    if(no=='1'){
	    	startYear=startYear-1;
	    	endYear=endYear-1;
	    }
	    
	    if(no=='2'){
	    	startYear=startYear+1;
	    	endYear=endYear+1;
	    }
	   
	   /*  $.ajax({
  			url:"teamlist",
  			method:"GET",
  			data:{startYear:startYear, endYear:endYear, choiceLeague:choiceLeague},
  			success:function(data){
  				$("#teamlist").html(data);
  			}
  		});
	    
	    $.ajax({
	    	url:"teamlistyear",
	    	data:{startYear:startYear, endYear:endYear, choiceLeague:choiceLeague},
	    	success:function(data){
	    		$("#teamlistyear").html(data);
	    	}
	    }); */
	 
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
  <script src="resources/assets/js/jquery.als-2.1.min.js"></script>
</body>
</html>