<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="conteiner-fluid" style="margin-top:30px;">
<center>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Engineers</a>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Architect</a>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Interior designer</a>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Quantity surveyor</a>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Carpenter</a>
<a href="#" style="margin-left:10px;margin-right:10px; font-size:20px;">Contractor</a>
</center>
</div>

<div class="container">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-6">
<c:forEach var="user" items="${users}">
<div class="card" style="width:400px;margin-top:20px;">

<div class="card-body" style="width:100%;" >
          <div class="row user-detail">
              <div class="col-lg-12 col-sm-12 col-12">
                 <center> <img src="${pageContext.request.contextPath}/static/img/user_user.png" width="150px;" class="img-circle img-responsive"></center>
                 <center> <h5><c:out value="${user.name}"></c:out></h5>
                  <p><i class="fa fa-map-marker" aria-hidden="true"></i> <c:out value="${user.address}"></c:out></p></center>
                  <hr>
                  <a style="margin-left:50px;" href="viewprofile?user=${user.username}" class="btn btn-success btn-sm">View Profile</a>
				  <a class="btn btn-info btn-sm" href="<c:url value='/message?uid=${user.username}'/>">Send Message</a>
                  <hr>
                  <span><c:out value="${user.bio}"></c:out></span>
              </div>
          </div>
          <div class="row user-social-detail" style="margin-left:120px;">
              <div class="col-lg-12 col-sm-12 col-12">
                  <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                  <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
              </div>
          </div>
      </div>
</div>
</c:forEach>
<div class="col-md-2"></div>
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
