<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-striped" style="text-align: center;">
	<thead>
		<tr>
			<th>번호</th>
			<th>리그</th>
			<th>제목</th>
			<th>등록자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="board" items="${list}" varStatus="status">
			<tr>
				<td>${board.board_no}</td>
				<td>${board.leagueName}</td>
				<td><a href="javascript:boardRead(${board.board_no})" style="color: darkblue;">${board.title}</a></td>
				<td>${list_name[status.index]}</td>
				<td>${board.regdate}</td>
				<td>${board.hitcount}</td>
		</c:forEach>
		<tr>
			<td colspan="6" style="text-align: center;"><a
				class="btn btn-sm" href="javascript:boardList(1)">처음</a> <c:if
					test="${pager.groupNo>1}">
					<a class="btn btn-sm"
						href="javascript:boardList(${pager.startPageNo-1})">이전</a>
				</c:if> <c:forEach var="i" begin="${pager.startPageNo}"
					end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="btn btn-sm btn-outline-success"
							href="javascript:boardList(${i})">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo!=i}">
						<a class="btn btn-sm" href="javascript:boardList(${i})">${i}</a>
					</c:if>
				</c:forEach> <c:if test="${pager.groupNo<pager.totalGroupNo}">
					<a class="btn btn-sm"
						href="javascript:boardList(${pager.endPageNo+1})">다음</a>
				</c:if> <a class="btn btn-sm"
				href="javascript:boardList(${pager.totalPageNo})">마지막</a></td>
		</tr>
	</tbody>
</table>