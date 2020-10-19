<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<main>
	<h1>글쓰기 페이지</h1>
	<hr />

	<div class="container">
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" placeholder="제목" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea id="summernote" name="content"></textarea></td>
			</tr>
		</table>
	</div>

	<div class="btn">
		<button class="btn btn-light" onclick="saveBoard()">글쓰기 완료</button>
	</div>
</main>

<script>
$(document).ready(function() {
  $('#summernote').summernote();
});

$('#summernote').summernote({
    placeholder: '내용 입력',
    tabsize: 2,
    height: 100
  });
</script>

<script>
function saveBoard(){

// 	let title_el = document.querySelector("#title");
// 	let content_el = document.querySelector("#content");
	let title=$('input[name=title]').val();
	let content=$('#summernote').val();

	console.log(title);
	console.log(content);
	

	let board={
			title:title,
			content:content
			};
	
	fetch("/save", {
		method:"post",
		headers:{
			'Content-Type' :'application/json; charset=utf-8',
			},
		body:JSON.stringify(board)
		}).then(res=>res.text())
		.then(res=>{
			if(res=="ok"){
					alert("글 등록완료");
					location.href="/list";
				}else{
					alert("글 등록실패");
					}
			});
}


</script>

<%@ include file="layout/footer.jsp"%>