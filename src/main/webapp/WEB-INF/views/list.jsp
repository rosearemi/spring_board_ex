<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="layout/header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<main>
	<h1>게시글목록</h1>
	<hr />
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<td>ID</td>
					<td>TITLE</td>
					<td>CONTENT</td>
					<td>READCOUNT</td>
					<td>CREATEDATE</td>
				</tr>
			</thead>
			<c:forEach var="board" items="${boards.content}">
				<tbody>
					<tr>
						<td>${board.id}</td>
						<td><a href="/board/${board.id }">${board.title}</a></td>
						<td>${board.content}</td>
						<td>${board.readCount}</td>
						<td><fmt:formatDate value="${board.createDate}"
								pattern="yyyy.MM.dd" /></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="pageBox">
		<ul class="nav justify-content-center">
			<c:choose>
				<c:when test="${boards.first }">
					<li class="page-item disabled"><a class="page-link"
						href="/list?page=${boards.pageable.pageNumber-1}">Prev</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/list?page=${boards.pageable.pageNumber-1}">Prev</a></li>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${boards.last }">
					<li class="page-item disabled"><a class="page-link"
						href="/list?page=${boards.pageable.pageNumber+1}">Next</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/list?page=${boards.pageable.pageNumber+1}">Next</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</main>

<%@ include file="layout/footer.jsp"%>