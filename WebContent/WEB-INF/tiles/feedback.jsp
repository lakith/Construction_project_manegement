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
						<h1 class="mb-10">Give us your feedbacks</h1>
						<p>We Have Industry professionals to fulfill Your Dreams</p>
					</div>
				</div>
			</div>
			<form:form method="post"
				class="form-area mt-60 contact-form text-right"
				action="${pageContext.request.contextPath}/savefeedback"
				commandName="feedback">
				<form:input type="hidden" name="id" path="id" />
				<div class="row">
					<div class="col-lg-6 form-group">
						<sf:input path="name" name="name" placeholder="Enter your name"
							class="common-input mb-20 form-control" type="text" />

						<sf:input path="email" name="email"
							placeholder="Enter email address"
							class="common-input mb-20 form-control" type="text" />

					</div>
					<div class="col-lg-6 form-group">
						<form:textarea class="common-textarea mt-10 form-control"
							name="text" path="text" placeholder="Enter Your Feedback"></form:textarea>
						<button value="Save advert" type="submit" class="primary-btn mt-20">Send Message<span class="lnr lnr-arrow-right"></span></button>
						<div class="mt-10 alert-msg"></div>
					</div>
				</div>
			</form:form>
		</div>
	</section>
</div>