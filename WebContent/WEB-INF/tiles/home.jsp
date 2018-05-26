<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!--  <div style="float:right;margin-right:15px;">
<br/>

	<sec:authorize access="hasRole('ROLE_ADMIN')">

		<a href="<c:url value='/admin'/>">Admin</a>

</sec:authorize>
&nbsp;&nbsp;&nbsp;
<sec:authorize access="isAuthenticated()">

		<a href="<c:url value='/messages'/>">Messages (<span id="numberMessages">0</span> )</a>

</sec:authorize>
<br/>
<br/>
</div>
<table class="offers">
	<tr>
		<td>Name</td>
		<td>Email</td>
		<td>Offer</td>
	</tr>

	<c:forEach var="offer" items="${offers}">
		<tr>

			<td><c:out value="${offer.user.name}"></c:out></td>

			<td><a href="<c:url value='/message?uid=${offer.username}'/>">contact</a></td>

			<td><c:out value="${offer.text}"></c:out></td>

		</tr>
	</c:forEach>
</table>

<p/>
<c:choose>
	<c:when test="${hasOffer}">
		<a href="${pageContext.request.contextPath}/createoffer">Edit or delete your current offer.</a>
	</c:when>
	<c:otherwise>
		<p>
			<a href="${pageContext.request.contextPath}/createoffer">Add a
				new offer.</a>
		</p>
</c:otherwise>

</c:choose>-->






<!--  <script type="text/javascript">-->
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
<!--</script>-->

<section class="banner-area relative" id="home" data-parallax="scroll"
	data-image-src="${pageContext.request.contextPath}/static/img/header-bg.jpg">
	<div class="overlay-bg overlay"></div>
	<div class="container">
		<div
			class="row fullscreen d-flex align-items-center justify-content-center">
			<div class="banner-content col-lg-8 col-md-12">
				<h4 class="text-white text-uppercase">Discover the Colorful
					World</h4>
				<h1 class="text-uppercase">Build Your Dream</h1>
				<p class="text-white">
					Build your project with industry with industry professionals<br>Your dream project wont be a dream any more join with us to build your dream house.
				</p>
				<a href="#" class="primary-btn header-btn text-uppercase">Discover
					Now</a>
			</div>
		</div>
	</div>
</section>

<section class="features-area pt-100" id="feature">
	<div class="container">
		<div class="feature-section">
			<div class="row">
				<div class="single-feature col-lg-4">
					<img src="${pageContext.request.contextPath}/static/img/f1.png"
						alt="">
					<h4 class="pt-20 pb-20">Building Drawings</h4>
					<p>Architectural drawings are made according to a set of conventions, which include particular views (floor plan, section etc.), sheet sizes, units of measurement and scales, annotation and cross referencing.
					</p>
				</div>
				<div class="single-feature col-lg-4">
					<img src="${pageContext.request.contextPath}/static/img/f2.png"
						alt="">
					<h4 class="pt-20 pb-20">Home maintance</h4>
					<p>Use our spring home maintenance checklist to make sure everything in your home from the basement to the roof is in tip-top shape.
					</p>
				</div>
				<div class="single-feature col-lg-4">
					<img src="${pageContext.request.contextPath}/static/img/f3.png"
						alt="">
					<h4 class="pt-20 pb-20">House painting</h4>
					<p>To maintain a wet edge, start near a corner and run the roller up and down the full height of the wall, moving over slightly with each stroke.
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="offered-area section-gap" id="offered">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-60 col-lg-8">
				<div class="title text-center">
					<h1 class="mb-10">Some Features that Made us Unique</h1>
					<p>Who are in extremely love with eco friendly system.</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<div class="single-offered">
					<img class="img-fluid" src="img/s1.png" alt=""> <a href="#"><h4
							class="pt-20 pb-20">Basic & Common Repairs</h4></a>
					<p>Computer users and programmers have become so accustomed to
						using Windows, even for the changing capabilities and the
						appearances of the graphical.</p>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-offered">
					<img class="img-fluid" src="img/s2.png" alt=""> <a href="#"><h4
							class="pt-20 pb-20">Brake Repairs & Services</h4></a>
					<p>This is an annoyance that most homeowners have to deal with from time to time as the washers in the faucets wear out with use. </p>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-offered">
					<img class="img-fluid" src="img/s3.png" alt=""> <a href="#"><h4
							class="pt-20 pb-20">Preventive Maintenance</h4></a>
					<p>reventive maintenance (or preventative maintenance) is maintenance that is regularly performed on a piece of equipment to lessen the likelihood of it.</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="service-area section-gap" id="service"
	style="margin-top: -10%;">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-md-8 pb-40 header-text">
				<h1>Why we are the best</h1>
				<p>Who are in extremely love with eco friendly system.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6 pb-30">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-user"></span>Expert Technicians
					</h4>
					<p>Expert knowledge and understanding of system operation, building plans, working drawings, plumbing and pipe system layout, and building code</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 pb-30">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-license"></span>Professional Service
					</h4>
					<p>Professional services are occupations in the tertiary sector of the economy requiring special training in the arts or sciences.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 pb-30">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-phone"></span>Great Support
					</h4>
					<p>The same steps are used to install the three types of foundation. The only difference is that with a basement foundation. </p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-rocket"></span>Technical Skills
					</h4>
					<p>Building houses is no easy task. Carpenters need a bevy of skills, as well the ability to learn and adapt quickly on the job. Specialized training.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-diamond"></span>Highly Recomended
					</h4>
					<p>We higly reccommond our service because , because we provide best service with best people in the country. We garentee our projects.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-service">
					<h4>
						<span class="lnr lnr-bubble"></span>Positive Reviews
					</h4>
					<p>Any one can check our reviews downbelow. people who used our services can give us a feed back.</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="testimonial-area relative section-gap">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row">
			<div class="active-testimonial">

				<c:forEach var="feedback" items="${feedbacks}">
					<div class="single-testimonial item d-flex flex-row">
						<div class="thumb">
							<img class="rounded-circle img-thumbnail"  style="width:50px"
								src="${pageContext.request.contextPath}/static/img/user_user.png"
								alt="">
						</div>
						<div class="desc">
							<p>
								<c:out value="${feedback.text}"></c:out>
							</p>
							<h4>
								<c:out value="${feedback.name}"></c:out>
							</h4>
							<p>
								<c:out value="${feedback.email}"></c:out>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
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

