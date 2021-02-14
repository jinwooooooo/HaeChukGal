<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
       	      <th>상태</th>
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