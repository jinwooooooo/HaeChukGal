<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
   <c:forEach var="teamRank" items="${teamRank}" >
    	  	<tr>
    	      <td>${teamRank.rank}</td>
    	      <td><img src="${teamRank.teamImage}" style="width: 40px; height: 40px;"/> &nbsp; ${teamRank.teamName}</td>
    	      <td>${teamRank.game}</td>
    	      <td>${teamRank.win}</td>
    	      <td>${teamRank.draw}</td>
    	      <td>${teamRank.loss}</td>
    	      <td>${teamRank.score}</td>
    	      <td>${teamRank.lossPoint}</td>
    	      <td>${teamRank.gapScore}</td>
    	      <td>${teamRank.point}</td>
    	    </tr>
	</c:forEach> 
  </tbody>
</table>