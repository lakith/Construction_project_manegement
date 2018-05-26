<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() {
		document.f.j_username.focus();
	});
</script>




<!-- <form name='f'
	action='${pageContext.request.contextPath}/j_spring_security_check'
	method='POST'>
	<table class="formtable">
		<tr>
			<td>User:</td>
			<td><input type='text' name='j_username' value=''></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type='password' name='j_password' /></td>
		</tr>
		<tr>
			<td>Remember me:</td>
			<td><input type='checkbox' name='_spring_security_remember_me'
				checked="checked" /></td>
		</tr>
		<tr>
			<td colspan='2'><input name="submit" type="submit" value="Login" /></td>
		</tr>
	</table>
</form>

<p>
	<a href="<c:url value="/newaccount"/>">Create new account</a>
</p>-->

<div class="container">
<div class="row">
	<aside class="col-sm-4" style="margin-bottom:100px;margin-left:35%;">
	
	<center><h3 class="display-5" style="margin-top:50px;margin-bottom:60px;">Login with Username and Password</h3></center>

<c:if test="${param.error != null}">

	<p class="error" style="color:red">Login failed. Check that your username and
		password are correct.</p>
</c:if>

<div class="card">
<article class="card-body">
<a href="<c:url value="/newaccount"/>" class="float-right btn btn-outline-primary">Sign up</a>
<h4 class="card-title mb-4 mt-1">Sign in</h4>
	 <form name='f'
	action='${pageContext.request.contextPath}/j_spring_security_check'
	method='POST'>
    <div class="form-group">
    	<label>Your Username</label>
        <input name='j_username' class="form-control" placeholder="Email" value='' type='text'>

    </div> <!-- form-group// -->
    <div class="form-group">
    	<a class="float-right" href="#">Forgot?</a>
    	<label>Your password</label>
        <input name='j_password' class="form-control" placeholder="Password" type='password'>
    </div> <!-- form-group// --> 
    <div class="form-group"> 
    <div class="checkbox">
      <label> <input type='checkbox' name='_spring_security_remember_me' checked="checked" /> Keep me logged in </label>
      
    </div> <!-- checkbox .// -->
    </div> <!-- form-group// -->  
    <div class="form-group">
        <button type="submit" name="submit" class="btn btn-primary btn-block" value="Login" > Login  </button>
    </div> <!-- form-group// -->                                                           
</form>
</article>
</div> <!-- card.// -->

	</aside> <!-- col.// -->
	</div>
	</div>
	


