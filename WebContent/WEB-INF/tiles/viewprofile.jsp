
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="about-me" id="about" style="margin-top:70px;margin-bottom:70px"> 
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12">
				<div class="mydetails slideanim text-center">
					<img style="margin-top:50px;" class="img-circle img-responsive" src="${pageContext.request.contextPath}/static/img/user_user.png" alt="Generic placeholder image" width="200" height="200">
					<h3><c:out value="${user.name}"></c:out></h3>
					<p><c:out value="${user.type}"></c:out></p>
					<a class="btn btn-danger" href="<c:url value='/message?uid=${user.username}'/>" role="button">Message me</a>
					<div class="social-icons">
						<a href="#"><span class="facebook"></span></a>
						<a href="#"><span class="twitter"></span></a>
						<a href="#"><span class="linkedin"></span></a>
						<a href="#"><span class="googleplus"></span></a>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-xs-12">
				<div class="myskills slideanim">
					<h3 class="text-center" style="margin-bottom:20px;">My Information</h3>
					<p class="skill-text"><c:out value="${user.bio}"></c:out></p>
					<div class="skill-info"> 
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr>
										<td><h4>Address</h4></td>
										<td><span class="longline1"></span><span class="shortline1"></span></td>
										<td><p><c:out value="${user.address}"></c:out></p></td>
									</tr>
									<tr>
										<td><h4>Telephone Number</h4></td>
										<td><span class="longline2"></span><span class="shortline2"></span></td>
										<td><p><c:out value="${user.tel_no}"></c:out></p></td>
									</tr>
									<tr>
										<td><h4>Job Role</h4></td>
										<td><span class="longline3"></span><span class="shortline3"></span></td>
										<td><p><c:out value="${user.type}"></c:out></p></td>
									</tr>
									<tr>
										<td><h4>Email</h4></td>
										<td><span class="longline4"></span><span class="shortline4"></span></td>
										<td><p><c:out value="${user.email}"></c:out></p></td>
									</tr>
									<tr>
										<td><h4>Date of Birth</h4></td>
										<td><span class="longline5"></span><span class="shortline5"></span></td>
										<td><p>1995/04/25</p></td>
									</tr>
								</tbody>
							</table>
						</div>	
					</div>
				</div>	
			</div>
		</div>	
	</div>	
</div>
<script type="text/javascript">
<!--
	function updateMessageLink(data) {
		$("#numberMessages").text(data.number);
	}

	function onLoad() {
		updatePage();
		window.setInterval(updatePage, 5000);
	}

	function updatePage() {
		$.getJSON("<c:url value="/getmessages"/>", updateMessageLink);
	}

	$(document).ready(onLoad);
//-->
</script>