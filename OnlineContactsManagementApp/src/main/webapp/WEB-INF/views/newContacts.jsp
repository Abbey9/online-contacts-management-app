<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="header.jsp">
	<c:param name="title" value="New Contacts"></c:param>
</c:import>

<div align="center">
	<h2>Add new Contact</h2>
	<form:form action="saveContact" method="post" modelAttribute="contacts">
		<table>
			<form:hidden path="contactSerialId" />
			<tr>
				<td>Full Name:</td>
				<td><form:input path="contactFullName" /></td>
			</tr>
			<tr>
				<td>Nick Name:</td>
				<td><form:input path="contactNickName" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="contactEmail" /></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><form:input path="contactPhone" /></td>
			</tr>
			<tr>
				<td>Company:</td>
				<td><form:input path="contactCompany" /></td>
			</tr>
			
			<tr>
				<td>Job Title:</td>
				<td><form:input path="contactJobTitle" /></td>
			</tr>
			<tr>
				<td>Birth Day:</td>
				<td><form:input path="contactBirthday" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="contactAddress" /></td>
			</tr>
			<tr>
				<td>WebSite:</td>
				<td><form:input path="contactWebsite" /></td>
			</tr>
			<tr>
				<td>Relationship:</td>
				<td><form:input path="contactRelationship" /></td>
			</tr>
			<tr>
				<td>Notes:</td>
				<td><form:input path="contactNotes" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Save"></td>
			</tr>
		</table>
	</form:form>
</div>

<c:import url="footer.jsp"></c:import>