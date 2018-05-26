<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<div class="container">
	<section class="contact-area section-gap" id="contact">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-30 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Add your Post</h1>
						<p>We Have Industry professionals to fulfill Your Dreams</p>
					</div>
				</div>
			</div>
			<form:form method="post"
				class="form-area mt-60 contact-form text-right"
				action="${pageContext.request.contextPath}/savepost"
				commandName="posts">
				<form:input type="hidden" name="id" path="post_id" />
				<div class="row">
					<div class="col-lg-6 form-group">
						<label style="float:left">Enter Post name</label>
						<sf:input path="post_name" name="post_name" placeholder="Enter your name"
							class="common-input mb-20 form-control" type="text" />
						<label style="float:left">Select an engineer</label>
						<sf:select path="engineer" name="engineer"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('engineer')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Select an carpenter</label>
						<sf:select path="carpenter" name="carpenter"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('carpenter')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Select an architecture</label>
						<sf:select path="architecture" name="architecture"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('architecture')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Select an interior designer</label>
						<sf:select path="Interior_designer" name="Interior_designer"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('interior_designer')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Select an quantity surveyor</label>
						<sf:select path="quantity_surveyor" name="quantity_surveyor"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('quantity_surveyor')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Select an contractor</label>
						<sf:select path="contractor" name="contractor"
							class="common-input mb-20 form-control">
							<c:forEach var="user" items="${users}">
								<c:if test="${user.type.equals('contractor')}">
									<sf:option value="${user.name}">${user.name}</sf:option>
								</c:if>
							</c:forEach>
						</sf:select>
						<label style="float:left">Upload your post picture</label>
						<sf:input path="image" name="image" onchange="readURL(this);" 
							class="common-input mb-20 form-control" type="file" />
							
					<div class="form-group col-sm-2 inlineclass" > 
                         <img src="${pageContext.request.contextPath}/static/img/1.jpg" width="120px" height="100px" style="margin-left: 5%;" id="bla1" style="height: 100px;width: 120px;" class="vikarakarannaepayako">
                      </div>
                 
							
						
					</div>
					<div class="col-lg-6 form-group">
						<label style="float:left">Add Post Discription</label>
						<form:textarea class="common-textarea mt-10 form-control"
							name="discription" path="discription"
							placeholder="Enter Post Discription"></form:textarea>
						<label style="float:left">Add A Short Discription</label>
						<form:textarea class="common-textarea mt-10 form-control"
							name="short_discription" path="short_discription"
							placeholder="Enter A short Discription"></form:textarea>
						<label style="float:left">Add Your Recommentations</label>
						<form:textarea class="common-textarea mt-10 form-control"
							name="recommendation" path="recommendation"
							placeholder="Enter Your Recommendations"></form:textarea>
						<label style="float:left">Add Other Post Details</label>
						<form:textarea class="common-textarea mt-10 form-control"
							name="other" path="other" placeholder="Enter Other Details"></form:textarea>
						<button value="Save advert" type="submit"
							class="primary-btn mt-20">
							Submit your post<span class="lnr lnr-arrow-right"></span>
						</button>
						<div class="mt-10 alert-msg"></div>
					</div>
				</div>
			</form:form>
		</div>
	</section>
</div>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#bla1').attr('src', e.target.result).width(120).height(100);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
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