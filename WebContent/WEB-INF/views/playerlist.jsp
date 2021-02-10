<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="text-align:center;">
   <a id="1" class="btn" href="javascript:playerlist(${startYear-1},${endYear-1},'${choiceLeague}','1')" style="display:inline-block; margin:0px 0px 10px 0px;">
     <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
	   <path d="M3.86 8.753l5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
	 </svg>
   </a>
   <h3 style="display:inline-block;">${startYear} - ${endYear}</h3>
     <a id="2" class="btn" href="javascript:playerlist(${startYear+1},${endYear+1},'${choiceLeague}','2')" style="display:inline-block; margin:0px 0px 10px 0px;">
       <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
		 <path d="M12.14 8.753l-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
	   </svg>
     </a>
</div>
<br/>
       
<div class="row">
  <div class="col-lg-12 d-flex justify-content-center" data-aos-delay="100">
    <ul id="portfolio-flters">
      <li id="3" style="font-size:17px;">
      	<a href="javascript:playerlist(${startYear},${endYear},'premier','3')">
          <span>프리미어리그</span>
      	</a>
      </li>
      <li id="4" class="league" style="font-size:17px;">
      	<a href="javascript:playerlist(${startYear},${endYear},'la','4')">
          <span>라리가</span>
      	</a>
      </li>
      <li id="5" class="league" style="font-size:17px;">
      	<a href="javascript:playerlist(${startYear},${endYear},'bundes','5')">
          <span>분데스리가</span>
      	</a>
      </li >
      <li id="6" class="league" style="font-size:17px;">
      	<a href="javascript:playerlist(${startYear},${endYear},'seriea','6')">
          <span>세리에A</span>
      	</a>
      </li>
      <li id="7" class="league" style="font-size:17px;">
      	<a href="javascript:playerlist(${startYear},${endYear},'league1','7')">
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
    <tr>
      <td>1</td>
      <td>살라</td>
      <td>리버풀</td>
      <td>18</td>
      <td>13</td>
      <td>3</td>
      <td>16</td>
      <td>58</td>
      <td>28</td>
      <td>11</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <td>2</td>
      <td>해리 케인</td>
      <td>토트넘</td>
      <td>18</td>
      <td>12</td>
      <td>3</td>
      <td>15</td>
      <td>66</td>
      <td>19</td>
      <td>8</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <td>3</td>
      <td>칼버트 르윈</td>
      <td>에버턴</td>
      <td>18</td>
      <td>10</td>
      <td>2</td>
      <td>12</td>
      <td>55</td>
      <td>22</td>
      <td>10</td>
      <td>1</td>
      <td>0</td>
    </tr>
  </tbody>
</table>