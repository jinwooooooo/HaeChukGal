<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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