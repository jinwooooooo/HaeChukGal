<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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