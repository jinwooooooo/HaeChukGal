<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<a id="1" href="javascript:schedule(${startYear} , ${endYear}, '${choiceLeague}' , '${choiceMonth}', '1')" type="button" style="display:inline-block;">
  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-right:5px;" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
	<path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753l-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
  </svg>
</a>
<h1 style="display:inline-block;">${startYear} - ${endYear}</h1>
<a id="2" href="javascript:schedule(${startYear} , ${endYear}, '${choiceLeague}' , '${choiceMonth}', '2')" type="button" style="display:inline-block;">
  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" style="margin-bottom:11px; margin-left:5px;" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
	<path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753l5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
  </svg>
</a>