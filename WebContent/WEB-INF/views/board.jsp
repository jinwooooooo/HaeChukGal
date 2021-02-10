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
    <!-- ======= Resume Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>자유게시판</h2>
        </div>
        
        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul id="portfolio-flters">
              <li class="filter-active" style="font-size:17px;">
              	<a href="#">
                  <span>전체</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="#">
                  <span>프리미어리그</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="#">
                  <span>라리가</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="#">
                  <span>분데스리가</span>
              	</a>
              </li >
              <li class="league" style="font-size:17px;">
              	<a href="#">
                  <span>세리에A</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="#">
                  <span>리그1</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        <br/>
	    
	    <nav class="navbar navbar-expand-lg justify-content-center bg-light">
		  <div style="margin-right:20px;">
		    <input type="date" style="text-align:center; padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem;" id="startdate" name="startdate">
		    <span>~</span>
		    <input type="date" style="text-align:center; padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem;" id="enddate" name="enddate">
		  </div>
		  <select name="gubun" style="padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem; margin-right:10px;">
		    <option value="" selected>-- 구분 --</option>
		    <option value="searchbywriter">작성자</option>
		    <option value="serchbytitle">제목</option>
		  </select>
		  <form class="form-inline my-2 my-lg-0">
		    <input class="form-control mr-sm-2" type="search" placeholder="내용입력" aria-label="내용입력" style="width:300px;">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
		  </form>
		</nav>
		<br/><br/>
		<c:if test="${name != null}">
			<a href="writeform" type="button" class="btn btn-light" style="float:right; text-align:right; padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem;">글 등록</a>
		</c:if>
		<br/><br/>
	  <form id="boardlist">
		  <table class="table table-striped" style="text-align:center;">
       	    <thead>
       	      <tr>
       	        <th>번호</th>
       	        <th>리그</th>
       	        <th>제목</th>
       	        <th>등록자</th>
       	        <th>등록일</th>
       	        <th>조회수</th>
       	      </tr>
       	    </thead>
       	    <tbody>
       	   	  <c:forEach var="board" items="${list}" varStatus="status">
       	  	    <tr>
       	  		  <td>${board.board_no}</td>
       	  		  <td>${board.leagueName}</td>
       	  		  <td><a href="#" style="color:darkblue;">${board.title}</a></td>
       			  <td>${list_name[status.index]}</td>
       	  		  <td>${board.regdate}</td>
       	  		  <td>3</td>
       	  	  </c:forEach>
	       	  <tr>
	            <td colspan="6" style="text-align:center;">
	       	      <a class="btn btn-sm" href="javascript:boardList(1)">처음</a>
	       	  	  <c:if test="${pager.groupNo>1}">
	         	    <a class="btn btn-sm" href="javascript:boardList(${pager.startPageNo-1})">이전</a>
	       		  </c:if>
	       			
	       		  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
	       		    <c:if test="${pager.pageNo==i}">
	       			  <a class="btn btn-sm btn-outline-success" href="javascript:boardList(${i})">${i}</a>
	       		    </c:if>
	       		    <c:if test="${pager.pageNo!=i}">
	       			  <a class="btn btn-sm" href="javascript:boardList(${i})">${i}</a>
	       		    </c:if>
	       		  </c:forEach>
	       			
	       		  <c:if test="${pager.groupNo<pager.totalGroupNo}">
	       		    <a class="btn btn-sm" href="javascript:boardList(${pager.endPageNo+1})">다음</a>
	       		  </c:if>
	       			
	       		  <a class="btn btn-sm" href="javascript:boardList(${pager.totalPageNo})">마지막</a>
	       	    </td>
	          </tr>
	        </tbody>
	      </table>
	    </form>
      </div>
    </section>
    <!-- End Resume Section -->
  </main>
  
  <script>
  	function boardList(pageNo){
  		if(!pageNo){
  			pageNo=1;
  		}
  		$.ajax({
  			url:"boardlist",
  			data:{pageNo:pageNo},
  			success:function(data){
  				console.log(data);
  				$("#boardlist").html(data);
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