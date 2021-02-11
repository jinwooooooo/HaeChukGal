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
    <tr>
      <td>1</td>
      <td>맨유</td>
      <td>19</td>
      <td>11</td>
      <td>6</td>
      <td>2</td>
      <td>31</td>
      <td>23</td>
      <td>8</td>
      <td>29</td>
    </tr>
    <tr>
      <td>2</td>
      <td>레스터시티</td>
      <td>18</td>
      <td>11</td>
      <td>5</td>
      <td>2</td>
      <td>29</td>
      <td>22</td>
      <td>7</td>
      <td>28</td>
    </tr>
    <tr>
      <td>3</td>
      <td>웨스트햄</td>
      <td>19</td>
      <td>10</td>
      <td>4</td>
      <td>5</td>
      <td>27</td>
      <td>19</td>
      <td>8</td>
      <td>26</td>
    </tr>
  </tbody>
</table>