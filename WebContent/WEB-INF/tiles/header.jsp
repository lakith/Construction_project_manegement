<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!--<a class="title" href="<c:url value='/'/>">Offers</a>

<sec:authorize access="!isAuthenticated()">
<a class="login" href="<c:url value='/login'/>">Log in</a>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
<a class="login" href="<c:url value='/j_spring_security_logout'/>">Log out</a>
</sec:authorize>-->

<header id="header" id="home"
	style="background-color: rgba(34, 34, 34, 0.9); width: 100%; position: relative;">
	<div class="container">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="index.html"><img
					src="${pageContext.request.contextPath}/static/img/logo.png" alt=""
					title="" /></a>
			</div>
			<nav id="nav-menu-container">
				<ul class="nav-menu" style="margin-right: -80px;">
					<li class="menu-active"><a
						href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/viewusers">View Users</a></li>
					<li><a href="${pageContext.request.contextPath}/projects">Project</a></li>
					<li><a href="#service">Service</a></li>
					<li><a href="#contact">Contact</a></li>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="${pageContext.request.contextPath}/newaccount">Sign
								up</a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="${pageContext.request.contextPath}/login">Sign
								in</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li><a href="#">Logged in as <c:out value="${nameUser}"></c:out></a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li><a href="<c:url value='/j_spring_security_logout'/>">Log
								out</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li><a href="<c:url value='/messages'/>">Messages (<span
								id="numberMessages" style="color: red">0</span> )
						</a></li>
					</sec:authorize>
					<li class="menu-has-children"><a href="">Pages</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/feedback">Feedback</a></li>
					<sec:authorize access="isAuthenticated()">
						<li><a href="${pageContext.request.contextPath}/postadd">Add A Post</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li><a href="${pageContext.request.contextPath}/myposts">My Posts</a></li>
					</sec:authorize>
						</ul></li>
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</div>
</header>
<!-- #header -->



