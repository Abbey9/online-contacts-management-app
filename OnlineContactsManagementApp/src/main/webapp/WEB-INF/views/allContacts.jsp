<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title" value="All Contacts"></c:param>
</c:import>

<div class="container-wrapper">
	<div class="container">
		<div align="center">
			<div class="page-header">
				<h2>Contacts List</h2>
				<h3><a href="<c:url value="/newContacts" />"> Add a New Contact</a></h3>
				<br>
				<p class="lead">See all your Contacts</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Serial Id</th>
						<th>Full Name</th>
						<th>Nick Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Company</th>
						<th>Job Title</th>
						<th>BirthDay</th>
						<th>Address</th>
						<th>WebSite</th>
						<th>Relationship</th>
						<th>Notes</th>
						<th>Edit/Delete Contacts</th>
					</tr>
				</thead>
                
               <c:forEach items="${contactsList}" var="contacts" varStatus="status">
				<tr>
					<td>${contacts.contactSerialId}</td>
					<td>${contacts.contactFullName}</td>
					<td>${contacts.contactNickName}</td>
					<td>${contacts.contactEmail}</td>
					<td>${contacts.contactPhone}</td>
					<td>${contacts.contactCompany}</td>
					<td>${contacts.contactJobTitle}</td>
					<td>${contacts.contactBirthday}</td>
					<td>${contacts.contactAddress}</td>
					<td>${contacts.contactWebsite}</td>
					<td>${contacts.contactRelationship}</td>
					<td>${contacts.contactNotes}</td>
					<td><a href="<c:url value="/editContact?id=${contacts.contactSerialId}"/>">Edit |</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<c:url value="/deleteContact?id=${contacts.contactSerialId}"/>">Delete</a>
                    </td>
				</tr>
			   </c:forEach>
			</table>
		</div>
	</div>
</div>

<c:import url="footer.jsp"></c:import>
