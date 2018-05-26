<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>

 <!--   <link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet" type="text/css" /> -->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/linearicons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/nice-select.css">					
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main2.css">	

	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/script/jquery.js"></script>

<tiles:insertAttribute name="includes"></tiles:insertAttribute>

</head>
<body>

<div class="header">
<tiles:insertAttribute name="header"></tiles:insertAttribute>
</div>

<div class="toolbar">
<tiles:insertAttribute name="toolbar"></tiles:insertAttribute>
</div>

<div class="content">
<tiles:insertAttribute name="content"></tiles:insertAttribute>
</div>

<hr/>
<div class="footer">
<tiles:insertAttribute name="footer"></tiles:insertAttribute>
</div>

			<script src="${pageContext.request.contextPath}/static/js/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="${pageContext.request.contextPath}/static/js/easing.min.js"></script>			
			<script src="${pageContext.request.contextPath}/static/js/hoverIntent.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/superfish.min.js"></script>	
			<script src="${pageContext.request.contextPath}/static/js/jquery.ajaxchimp.min.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/jquery.magnific-popup.min.js"></script>	
			<script src="${pageContext.request.contextPath}/static/js/owl.carousel.min.js"></script>			
			<script src="${pageContext.request.contextPath}/static/js/jquery.sticky.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/jquery.nice-select.min.js"></script>			
			<script src="${pageContext.request.contextPath}/static/js/parallax.min.js"></script>	
			<script src="${pageContext.request.contextPath}/static/js/waypoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/jquery.counterup.min.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/mail-script.js"></script>
			<script src="${pageContext.request.contextPath}/static/js/main.js"></script>	
</body>
</html>