<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="portfolio" class="portfolio section-bg">
	      <div class="container" data-aos="fade-up">
	        <div class="section-title">
	          <h2>자유게시판</h2>
	        </div>
	        
	        <!--
	        <div class="row">
	          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
	            <ul id="portfolio-flters">
	              <li class="filter-active" style="font-size:17px;">
	              	<a href="javascript:boardlisttotalbyleague('total')">
	                  <span>전체</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('epl')">
	                  <span>프리미어리그</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('primera')">
	                  <span>라리가</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('bundesliga')">
	                  <span>분데스리가</span>
	              	</a>
	              </li >
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('seriea')">
	                  <span>세리에A</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('ligue1')">
	                  <span>리그1</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('uefacl')">
	                  <span>챔피언스리그</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('uefacup')">
	                  <span>유로파리그</span>
	              	</a>
	              </li>
	              <li class="league" style="font-size:17px;">
	              	<a href="javascript:boardlistbyleague('facup')">
	                  <span>FA컵</span>
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
			    <option value="" selected>-- 구분 --</option>
			    <option value="searchbywriter">작성자</option>
			    <option value="serchbytitle">제목</option>
			  </select>
			  <form class="form-inline my-2 my-lg-0">
			    <input class="form-control mr-sm-2" type="search" placeholder="내용입력" aria-label="내용입력" style="width:300px;">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
			  </form>
			</nav>
			 -->
			<br/><br/>
			<c:if test="${name != null}">
				<a href="javascript:writeform()" type="button" class="btn btn-light" style="float:right; text-align:right; padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem;">글 등록</a>
			</c:if>
			<br/><br/>
		  <form id="boardlisthtml">
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
	       	  		  <td><a href="javascript:boardRead(${board.board_no})" style="color:darkblue;">${board.title}</a></td>
	       			  <td>${list_name[status.index]}</td>
	       	  		  <td>${board.regdate}</td>
	       	  		  <td>${board.hitcount}</td>
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