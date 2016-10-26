<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.navbar-default {
    background-image: -webkit-linear-gradient(top, #5f1e1e 0%, #9C27B0 100%);
    background-image: -o-linear-gradient(top, #fff 0%, #f8f8f8 100%);
    background-image: -webkit-gradient(linear, left top, left bottom, from(#9C27B0), to(#E91E63));
    background-image: linear-gradient(to bottom, #FFC107 0%, #FFC107 100%);


</style>
</head>
<body>
	<!-- Navigation bar Common to all pages -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand " style="color: white">Chatapp</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat">Chat</a></li>
					<!-- <li><a data-toggle="tab" href="#Blog">Blog</a></li>
					<li><a data-toggle="tab" href="#Forum">Forum</a></li>
					<li><a data-toggle="tab" href="#Chat">Chat</a></li> -->
					<sec:authorize access="isAuthenticated()">
						<li><a style="color: white">Hello <b><sec:authentication
										property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout"><span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="#log" data-toggle="modal" data-target="#login"><span
								class="glyphicon glyphicon-log-in"></span></a></li>
						<li><a href="#reg" data-toggle="modal"
							data-target="#registration"> <span
								class="glyphicon glyphicon-user"></span>
						</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>


	<!-- ModalRegistration Form -->
	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
	<div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>
</body>
</html>

