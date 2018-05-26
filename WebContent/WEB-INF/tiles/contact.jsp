<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container" style="margin-top:70px;margin-bottom:70px;">
<div class="row">
<div class="col-md-8">

<center><h2 style="margin-top:20px;margin-bottom:20px;"><span class="d-inline p-2 bg-dark text-white">Send Message</span></h2></center>


<sf:form method="post" commandName="message">
	
	<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
	<input type="hidden" name="_eventId" value="send" />
	
	<div class="form-group">


			<label for="name">Your name</label>
			<sf:input class="control form-control"  id="name" path="name" type="text" value="${fromName}" /><br />
				<div class="error">
					<sf:errors path="name"></sf:errors>
				</div>
		</div>
		<div class="form-group">
			<label for="email">Your email:</label>
			<sf:input class="control form-control" id="email" path="email" type="text" value="${fromEmail}" /><br />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div>
		</div>
		<div class="form-group">
			<label for="Subject">Subject:</label>
			<sf:input class="control form-control" id="Subject" path="subject" type="text" /><br />
				<div class="error">
					<sf:errors path="subject"></sf:errors>
				</div>
		</div>
		<div class="form-group">
			<label for="ymessage">Your Message:</label>
			<sf:textarea id="ymessage" class="control form-control" path="content" name="name"
					type="text" /><br />
				<div class="error">
					<sf:errors path="content"></sf:errors>
				</div>
		</div>
		<div class="form-group">
			<button type="submit" class="control btn btn-primary">Send message</button>
		</div>
	

</sf:form>
</div>
<div class="col-md-4">
	<img src="${pageContext.request.contextPath}/static/img/message10.jpg" width="420px" style="margin-left:20px;margin-top:150px;">
</div>
</div>
</div>

