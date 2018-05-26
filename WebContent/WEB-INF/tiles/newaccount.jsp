<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  <h2>Create New Account</h2>

<sf:form id="details" method="post"
	action="${pageContext.request.contextPath}/createaccount"
	commandName="user">

	<table class="formtable">
		<tr>
			<td class="label">Username:</td>
			<td><sf:input class="control" path="username" name="username"
					type="text" /><br />
				<div class="error">
					<sf:errors path="username"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Name:</td>
			<td><sf:input class="control" path="name" name="name"
					type="text" /><br />
				<div class="error">
					<sf:errors path="name"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Email:</td>
			<td><sf:input class="control" path="email" name="email"
					type="text" />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Telephone number:</td>
			<td><sf:input class="control" path="tel_no" name="tel_no"
					type="text" />
				<div class="error">
					<sf:errors path="tel_no"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Your address:</td>
			<td><sf:input class="control" path="address" name="address"
					type="text" />
				<div class="error">
					<sf:errors path="address"></sf:errors>
				</div></td>
		</tr>
		<tr>
		<td class="label">Your Job type:</td>
		<td>
			<sf:select path="type" name="type">
			  <sf:option value="user">User</sf:option>
			  <sf:option value="engineer">Engineer</sf:option>
			  <sf:option value="architecture">Architecture</sf:option>
			  <sf:option value="interior_designer">Interior designer</sf:option>
			  <sf:option value="quantity_surveyor">Quantity surveyor</sf:option>
			  <sf:option value="carpenter">Carpenter</sf:option>
			  <sf:option value="contractor">Contractor</sf:option>
			</sf:select>
			</td>
		</tr>
		<tr>
			<td class="label">Bio:</td>
			<td>
			<sf:textarea path="bio" name="bio"></sf:textarea>
				<div class="error">
					<sf:errors path="bio"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Password:</td>
			<td><sf:input id="password" class="control" path="password"
					name="password" type="password" />
				<div class="error">
					<sf:errors path="password"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Confirm Password:</td>
			<td><input id="confirmpass" class="control" name="confirmpass"
				type="password" />
				<div id="matchpass"></div></td>
		</tr>
		<tr>
			<td class="label"></td>
			<td><input class="control" value="Create account" type="submit" /></td>
		</tr>
	</table>

</sf:form>-->




<div class="container">
<div class="row">
	<aside class="col-sm-4" style="margin-bottom:100px;margin-left:20%;">
	
	<center><h3 class="display-4" style="margin-top:50px;margin-bottom:60px;width:150%;margin-left:30%;">Enter Your Details</h3></center>

<div class="card" style="width:200%;">
<article class="card-body">


<center><h4 class="card-title mb-4 mt-1">Sign up</h4></center>
	 <sf:form id="details" method="post"
	action="${pageContext.request.contextPath}/createaccount"
	commandName="user">
	
    <div class="form-group">
    	<label>Enter Your Username</label>
        <sf:input class="form-control" path="username" name="username"
					type="text" /><br />
				<div class="error">
					<sf:errors path="username"></sf:errors>
				</div>

    </div>
    
    <div class="form-group">
    	<label>Enter Your Name</label>
        <sf:input path="name" name="name" class="form-control"
					type="text" /><br />
				<div class="error">
					<sf:errors path="name"></sf:errors>
				</div>
    </div>
     <div class="form-group">
    	<label>Enter Your Email</label>
					<sf:input  path="email" name="email" class="form-control"
					type="text" />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div>
				</div>
				

     <div class="form-group">
    	<label>Enter Your Telephone Number:</label>
<sf:input  path="tel_no" name="tel_no" class="form-control"
					type="text" />
				<div class="error">
					<sf:errors path="tel_no"></sf:errors>
				</div>
    </div> 
   
     <div class="form-group">
    	<label>Enter Your Address:</label>
<sf:input  path="address" name="address" class="form-control"
					type="text" />
				<div class="error">
					<sf:errors path="address"></sf:errors>
				</div>
    </div> 
     <div class="form-group">
    	<label>Select Your Job type:</label>
			<sf:select path="type" name="type" class="form-control">
			  <sf:option value="user">User</sf:option>
			  <sf:option value="engineer">Engineer</sf:option>
			  <sf:option value="architecture">Architecture</sf:option>
			  <sf:option value="interior_designer">Interior designer</sf:option>
			  <sf:option value="quantity_surveyor">Quantity surveyor</sf:option>
			  <sf:option value="carpenter">Carpenter</sf:option>
			  <sf:option value="contractor">Contractor</sf:option>
			</sf:select>
    </div> 
    
    
         <div class="form-group">
    	<label>Enter Your Bio:</label>
<sf:textarea path="bio" name="bio" class="form-control"></sf:textarea>
				<div class="error">
					<sf:errors path="bio"></sf:errors>
				</div>
    </div>
    
             <div class="form-group">
    	<label>Enter Your Password:</label>
					<sf:input id="password"  path="password" class="form-control"
					name="password" type="password" />
				<div class="error">
					<sf:errors path="password"></sf:errors>
				</div>
    </div>
    
                 <div class="form-group">
    	<label>Confirm Your Password:</label>
					<input id="confirmpass" class="form-control" name="confirmpass"
				type="password" />
				<div style="color:red" id="matchpass"></div>	
    </div>
    
    
    
    <div class="form-group"> 
    <p class="label"></p>
    </div>
    
    <div class="form-group">
        <button value="Create account" type="submit" name="submit" class="btn btn-primary btn-block" style="width:45%;float:right" > Submit Your Details  </button>
    </div> <!-- form-group// -->                                                           
</sf:form>
</article>

</div> <!-- card.// -->

	</aside> <!-- col.// -->
	</div>
	</div>
	
