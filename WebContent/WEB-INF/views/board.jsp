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
      		<li><a href="index"><i class="bx bx-home"></i> <span>???</span></a></li>
	        <li><a href="loginform"><i class="bx bx-log-in"></i> <span>?????????</span></a></li>
	        <li><a href="schedule"><i class="bx bx-calendar"></i> <span>?????? ??????</span></a></li>
	        <li><a href="teamrank"><i class="bx bx-trophy"></i> <span>??? ??????</span></a></li>
	        <li><a href="playerrank"><i class="bx bx-football"></i> <span>?????? ??????</span></a></li>
	        <li><a href="board"><i class="bx bx-clipboard"></i> <span>???????????????</span></a></li>
      	</c:if>
      	<c:if test="${name != null}">
      		<c:if test="${name == 'manager'}">
      			<li><a href="index"><i class="bx bx-home"></i> <span>???</span></a></li>
      			<li><a href="managerform"><i class="bx bx-data"></i> <span>????????? ??????</span></a></li>
		        <li><a href="logout"><i class="bx bx-log-out"></i> <span>????????????</span></a></li>
		    </c:if>
		    <c:if test="${name != 'manager'}">
		    	<li><a href="index"><i class="bx bx-home"></i> <span>???</span></a></li>
		        <li><a href="logout"><i class="bx bx-log-out"></i> <span>????????????</span></a></li>
		        <li><a href="myteam"><i class="bx bx-calendar-check"></i> <span>????????? ??????</span></a></li>
		        <li><a href="schedule"><i class="bx bx-calendar"></i> <span>?????? ??????</span></a></li>
		        <li><a href="teamrank"><i class="bx bx-trophy"></i> <span>??? ??????</span></a></li>
		        <li><a href="playerrank"><i class="bx bx-football"></i> <span>?????? ??????</span></a></li>
		        <li><a href="board"><i class="bx bx-clipboard"></i> <span>???????????????</span></a></li>
		        <li><a href="settingform"><i class="bx bx-user"></i> <span>?????? ??????</span></a></li>
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
          <h2>???????????????</h2>
        </div>
        
        
        <!--
        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul id="portfolio-flters">
              <li class="filter-active" style="font-size:17px;">
              	<a href="javascript:boardlisttotalbyleague('total')">
                  <span>??????</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('epl')">
                  <span>??????????????????</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('primera')">
                  <span>?????????</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('bundesliga')">
                  <span>???????????????</span>
              	</a>
              </li >
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('seriea')">
                  <span>?????????A</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('ligue1')">
                  <span>??????1</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('uefacl')">
                  <span>??????????????????</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('uefacup')">
                  <span>???????????????</span>
              	</a>
              </li>
              <li class="league" style="font-size:17px;">
              	<a href="javascript:boardlistbyleague('facup')">
                  <span>FA???</span>
              	</a>
              </li>
            </ul>
          </div>
        </div>
        <br/>
	    
	    <nav class="navbar navbar-expand-lg justify-content-center bg-light">
		  <div style="margin-right:20px;">
		  </div>
		  <select name="gubun" style="padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem; margin-right:10px;">
		    <option value="" selected>-- ?????? --</option>
		    <option value="searchbywriter">?????????</option>
		    <option value="serchbytitle">??????</option>
		  </select>
		  <form class="form-inline my-2 my-lg-0">
		    <input class="form-control mr-sm-2" type="search" placeholder="????????????" aria-label="????????????" style="width:300px;">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">??????</button>
		  </form>
		</nav>
		<!-->
		<br/><br/>
		<c:if test="${name != null}">
			<a href="javascript:writeform()" type="button" class="btn btn-light" style="float:right; text-align:right; padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem;">??? ??????</a>
		</c:if>
		<br/><br/>
	  <form id="boardlisthtml">
		  <table class="table table-striped" style="text-align:center;">
       	    <thead>
       	      <tr>
       	        <th>??????</th>
       	        <th>??????</th>
       	        <th>??????</th>
       	        <th>?????????</th>
       	        <th>?????????</th>
       	        <th>?????????</th>
       	      </tr>
       	    </thead>
       	    <tbody>
       	   	  <c:forEach var="board" items="${list}" varStatus="status">
       	  	    <tr>
       	  		  <td>${board.board_no}</td>
       	  		  <td>${board.leagueName}</td>
       	  		  <td><a href="javascript:boardRead(${board.board_no})" style="color:darkblue;">${board.title}</a></td>
       			  <td>${list_name[status.index]}</td>
       	  		  <td>${board.regdate}</td>
       	  		  <td>${board.hitcount}</td>
       	  	  </c:forEach>
	       	  <tr>
	            <td colspan="6" style="text-align:center;">
	       	      <a class="btn btn-sm" href="javascript:boardList(1)">??????</a>
	       	  	  <c:if test="${pager.groupNo>1}">
	         	    <a class="btn btn-sm" href="javascript:boardList(${pager.startPageNo-1})">??????</a>
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
	       		    <a class="btn btn-sm" href="javascript:boardList(${pager.endPageNo+1})">??????</a>
	       		  </c:if>
	       			
	       		  <a class="btn btn-sm" href="javascript:boardList(${pager.totalPageNo})">?????????</a>
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
  				$("#boardlisthtml").html(data);
  			}
  		});
  	}
  	
  	function boardRead(boardNo){
  		$.ajax({
  			url:"boardread",
  			data:{boardNo:boardNo},
  			success:function(data){
  				$("#main").html(data);
  			}
  		});
  	}
  	function writeform(){
  		$.ajax({
  			url:"writeform",
  			success:function(data){
  				$("#main").html(data);
  			}
  		});
  	}
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
				$.ajax({
					url:"boardfulllist",
					success:function(data){
						$("#main").html(data);
					}
				});
			}
  		});
  	}
  	
  	function boardupdateform(boardNo){
  		$.ajax({
  			url:"boardupdateform",
  			data:{boardNo:boardNo},
  			success:function(data){
  				$("#main").html(data);
  			}
  		});
  	}
  	
  	function boarddelete(boardNo){
  		$.ajax({
  			url:"boarddelete",
  			data:{boardNo:boardNo},
  			success:function(data){
  				$.ajax({
					url:"boardfulllist",
					success:function(data){
						$("#main").html(data);
					}
				});
  			}
  		});
  	}
  	
  	function boardupdate(){
  		var formdata=new FormData();
  		formdata.append("board_no",$("#board_no").val());
  		formdata.append("title", $("#title").val());
  		formdata.append("content", $("#content").val());
  		formdata.append("leagueName", $("#leagueName").val());
  		formdata.append("fileName", $("#file")[0].files[0], $("#file")[0].files[0].name);
  		
  		$.ajax({
  			url:"boardupdate",
  			processData: false,
			contentType: false,
			data: formdata,
			method: "post",
			success:function(data){
				$.ajax({
					url:"boardfulllist",
					success:function(data){
						$("#main").html(data);
					}
				});
			}
  		});
  	}
  	
  	var loadFile = function(event) {
		var output = document.getElementById('viewimg');
		output.src = URL.createObjectURL(event.target.files[0]);
	};
	
	function boardlistbyleague(choiceLeague){
		$.ajax({
			url:boardlistbyleague,
			data:{choiceLeague:choiceLeague},
			success:function(data){
				$("#boardlisthtml").html(data);
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