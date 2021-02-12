<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="text-align:center;">
	<a id="1" class="btn" href="javascript:teamlist(${startYear-1},${endYear-1},'${choiceLeague}','1')" style="display:inline-block; margin:0px 0px 10px 0px;">
	  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
		<path d="M3.86 8.753l5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
	  </svg>
	   </a>
	<h3 style="display:inline-block;">${startYear} - ${endYear}</h3>
	<a id="2" class="btn" href="javascript:teamlist(${startYear+1},${endYear+1},'${choiceLeague}','2')" style="display:inline-block; margin:0px 0px 10px 0px;">
	  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
		<path d="M12.14 8.753l-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
	  </svg>
	</a>
</div>
<br/>
  
<div class="row">
   <div class="col-lg-12 d-flex justify-content-center" data-aos-delay="100">
     <ul id="portfolio-flters" >
       <li style="font-size:17px;">
       	<a href="javascript:teamlist(${startYear},${endYear},'epl','3')">
           <span>프리미어리그</span>
       	</a>
       </li>
       <li class="league"  style="font-size:17px;">
       	<a href="javascript:teamlist(${startYear},${endYear},'primera','4')">
           <span>라리가</span>
       	</a>
       </li>
       <li class="league"  style="font-size:17px;">
       	<a href="javascript:teamlist(${startYear},${endYear},'bundesliga','5')">
           <span>분데스리가</span>
       	</a>
       </li >
       <li class="league"  style="font-size:17px;">
       	<a href="javascript:teamlist(${startYear},${endYear},'seriea','6')">
           <span>세리에A</span>
       	</a>
       </li>
       <li class="league"  style="font-size:17px;">
       <a href="javascript:teamlist(${startYear},${endYear},'ligue1','7')">
         <span>리그1</span>
       </a>
       </li>
      </ul>
   </div>
 </div>
  <br/>
	        
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