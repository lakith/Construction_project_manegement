 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<sf:form id="details" method="post"
	action="${pageContext.request.contextPath}/savecomment"
	commandName="post_comments">
	<sf:input type="hidden" name="comment_id" path="comment_id" />
	<table class="formtable">
		<tr>
			<td class="label">Username:</td>
			<td><sf:input class="control" path="commeent_name" name="commeent_name"
					type="text" /><br />
				<div class="error">
					<sf:errors path="commeent_name"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Bio:</td>
			<td>
			<sf:textarea path="comment" name="comment"></sf:textarea>
				<div class="error">
					<sf:errors path="comment"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label"></td>
			<td><input class="control" value="Save advert" type="submit" /></td>
		</tr>

	</table>

</sf:form>
          
          