<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="container" style="margin-top:30px;">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<c:forEach var="post" items="${posts}">
<div class="card" style="width:100%;margin-top:20px;margin-bottom:20px">
  <img class="card-img-top" src=" http://localhost:8080/web_proj/view_image.php?id=${post.post_id}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${post.post_name}"></c:out></h5>
    <p class="card-text"><c:out value="${post.short_discription}"></c:out></p>
    <div style="float:right">
    <a href="viewpost?post_id=${post.post_id}" class="btn btn-primary">View Post</a>
    <a href="#" class="btn btn-danger">Delete Post</a>
    <a href="#" class="btn btn-info">Update Post</a>
    </div>
  </div>
</div>

</c:forEach>
</div>
</div>
<div class="col-md-3"></div>
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