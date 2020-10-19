<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<!DOCTYPE html>
<html lang="en">
<head>
<style>
nav{
	height: 50px;
	background-color: rgb(181,178,255);
}
li a{
	text-decoration : none;
	font-style: inherit;
	font-size: 15px;
	color : black;
	padding-right: 14px;
	display: block;
}
h1, .pDetail {
	text-align: center;
}

div.pageBox {
	display : block;
	text-align: center;
}

div.btn {
	display: block;
	text-align:center;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-sm">
			
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="navItem"><a  href="/list">홈</a></li>
					<li class="navItem"><a href="/saveForm">글쓰기</a></li>
				</ul>
			</div>
		</nav>


	</header>