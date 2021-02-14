<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul style="display:table;" id="portfolio-flters1">
   <c:forEach var="montharr" items="${montharr}" >
      <li style="display:table-cell; border:1px solid #bdbfbf;">
		 <a href="javascript:schedule(${startYear} , ${endYear}, '${choiceLeague}' , '${montharr}', '12')" >
		    <span>${montharr}월</span>
		 </a>
	  </li>
   </c:forEach>     
</ul>