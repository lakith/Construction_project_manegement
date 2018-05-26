<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
   
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Title -->
          <h1 class="mt-4"><c:out value="${posts.post_name}"></c:out></h1>

          <!-- Author -->
          <p class="lead">
            by
            <a href="#">User</a>
          </p>
          
          <!-- Preview Image -->
          <img class="img-fluid rounded" src=" http://localhost:8080/web_proj/view_image.php?id=${posts.post_id}" alt="">

          <hr>

          <!-- Post Content -->
          <p class="lead"><c:out value="${posts.short_discription}"></c:out></p>

          <p><c:out value="${posts.discription}"></c:out></p>

          <p><c:out value="${posts.other}"></c:out></p>

          <blockquote class="blockquote">
            <p class="mb-0"><c:out value="${posts.recommendation}"></c:out></p>
            <footer class="blockquote-footer">Reccomandations By 
              <cite title="Source Title">User</cite>
            </footer>
          </blockquote>

          <hr>

          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">Leave a Comment:</h5>
            <div class="card-body">
            <sf:form id="details" method="post" class="form-area mt-60 contact-form text-right"
				action="${pageContext.request.contextPath}/savecomment"
				commandName="post_comments">
				<sf:input type="hidden" name="comment_id" path="comment_id" />
                <div class="form-group">
                <label>Your name</label>
                <sf:input class="form-control" path="commeent_name" name="commeent_name"
					type="text" /><br />
				
                 <label>Comment</label>
               	  <sf:textarea path="comment" name="comment" class="form-control" rows="3"></sf:textarea>
                </div>
                <button value="Save advert" type="submit" class="btn btn-primary">Submit</button>
              </sf:form>
            </div>
          </div>

								
									
								
								
	<c:if test="${comment.equals(true)}">
	<c:forEach var="post_comment2" items="${post_comments2}">
          <!-- Single Comment -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
           
            <div class="media-body">
              <h5 class="mt-0"><c:out value="${post_comment2.commeent_name}"></c:out></h5>
             <c:out value="${post_comment2.comment}"></c:out>
            </div>
          </div>
          </c:forEach>
	</c:if>
          <!-- Comment with nested comments -->


        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Architecture</a>
                    </li>
                    <li>
                      <a href="#">Carpenter</a>
                    </li>
                    <li>
                      <a href="#">Contractor</a>
                    </li>
                    <li>
                      <a href="#">Engineer</a>
                    </li>
                    <li>
                      <a href="#">Interior designer</a>
                    </li>
                   <li>
                      <a href="#">Quantity_surveyor</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <c:out value="${posts.architecture}"></c:out>
                    </li>
                    <li>
                      <c:out value="${posts.carpenter}"></c:out>
                    </li>
                    <li>
                     <c:out value="${posts.contractor}"></c:out>
                    </li>
                     <li>
                      <c:out value="${posts.engineer}"></c:out>
                    </li>
                     <li>
                      Chalana kalpitha
                    </li>
                     <li>
                      <c:out value="${posts.quantity_surveyor}"></c:out>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->