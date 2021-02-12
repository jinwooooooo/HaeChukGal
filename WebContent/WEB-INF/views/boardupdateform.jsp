<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <section id="contact" class="contact">
   <div class="container" data-aos="fade-up" style="display:block;">
     <div class="section-title">
       <h2>게시글 수정</h2>
     </div>
     <div class="row mt-1">
       <div class="col-lg-8 mt-5 mt-lg-0" style="margin: 0 auto;">
         <form role="form" class="join_form" style="margin: 0 auto" enctype="multipart/form-data">
           <input type="hidden" id="board_no" value="${board.board_no}"/>
           <div class="form-group" style="padding-bottom:15px;">
             <label>제목</label><input type="text" class="form-control" name="title" id="title" value="${board.title}"/>
             <div class="validate"></div>
           </div>
           <div class="form-group" style="padding-bottom:15px;">
             <label>내용</label><textarea rows="8" class="form-control" name="content" id="content">${board.content}</textarea>
             <div class="validate"></div>
           </div>
           <div class="form-group" style="padding-bottom:20px;">
             <label>리그</label><br/>
             <select name="leagueName" id="leagueName" style="padding:.375rem .75rem; border: 1px solid #ced4da; border-radius: .25rem; margin-right:10px;">
			     <option value="">----- 구분 -----</option>
				 <c:if test="${board.leagueName=='프리미어리그'}">
				 	 <option value="프리미어리그" selected>프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='분데스리가'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가" selected>분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='세리에A'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A" selected>세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='라리가'}">
				 	 <option value="프리미어리그" selected>프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가" selected>라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='리그1'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1" selected>리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='챔피언스리그'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그" selected>챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='유로파리그'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그" selected>유리파리그</option>
				     <option value="FA컵">FA컵</option>
				 </c:if>
				 <c:if test="${board.leagueName=='FA컵'}">
				 	 <option value="프리미어리그">프리미어리그</option>
				     <option value="분데스리가">분데스리가</option>
				     <option value="세리에A">세리에A</option>
				     <option value="라리가">라리가</option>
				     <option value="리그1">리그1</option>
				     <option value="챔피언스리그">챔피언스리그</option>
				     <option value="유로파리그">유리파리그</option>
				     <option value="FA컵" selected>FA컵</option>
				 </c:if>
			</select>
             <div class="validate"></div>
           </div>
           <div class="form-group" style="padding-bottom:15px;">
             <label>사진 첨부</label><br/>
             <input type="file" id="file" name="file" onchange="loadFile(event)"/>
             <div class="validate"></div>
           </div>
           <div class="form-group" style="padding-bottom:15px;">
            <label>기존 파일명</label><label class="form-control">${board.fileName}</label>
            <div class="validate"></div>
          </div>
          <div class="form-group" style="padding-bottom:15px;">
             <img class="img-fluid" id="viewimg" src="photodownload?fileName=${board.fileName}"/>
             <div class="validate"></div>
           </div>
           <div style="text-align:center;">
    	      <div class="text-center" style="display: inline-block;"><a type="button" id="GoBoardFromUpdateform" href="javascript:boardupdate()">수정</a></div>
           </div>
         </form>
       </div>
     </div>
   </div>
 </section>