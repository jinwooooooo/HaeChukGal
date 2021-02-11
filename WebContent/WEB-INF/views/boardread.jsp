<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="contact" class="contact">
  <div class="container" data-aos="fade-up" style="display:block;">
    <div class="section-title">
      <h2>${board.leagueName}</h2>
    </div>
    <div class="row mt-1">
      <div class="col-lg-8 mt-5 mt-lg-0" style="margin: 0 auto;">
        <form role="form" class="join_form" style="margin: 0 auto">
       	  <div class="form-group" style="padding-bottom:15px;">
            <label>작성자</label><label class="form-control" name="title" id="title">${writer}</label>
            <div class="validate"></div>
          </div>	
          <div class="form-group" style="padding-bottom:15px;">
            <label>제목</label><label class="form-control" name="title" id="title">${board.title}</label>
            <div class="validate"></div>
          </div>
          <div class="form-group" style="padding-bottom:15px;">
            <label>내용</label><label class="form-control" name="title" id="title">${board.content}</label>
            <div class="validate"></div>
          </div>
          <div class="form-group" style="padding-bottom:15px;">
            <label>사진</label><br/>
            <img class="img-fluid" src="photodownload?fileName=${board.fileName}"/>
            <div class="validate"></div>
          </div>
          <div style="text-align:center;">
          <c:if test="${name==writer}">
	   	      <div class="text-center" style="display: inline-block;"><a type="button" href="javascript:boardupdateform(${board.board_no})">수정</a></div>
	   	      <div class="text-center" style="display: inline-block;"><a type="button" href="javascript:boarddelete(${board.board_no})">삭제</a></div>
          </c:if>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>