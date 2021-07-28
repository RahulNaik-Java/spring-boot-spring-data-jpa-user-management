<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<br>
	<header>
		<h1>
			<code>Spring MVC + JSP + JPA + Spring Boot 2</code>
		</h1>
	</header>
	<table class="table table-hover">
		<thead class="thead-dark">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</div>
<%@ include file="common/footer.jspf"%>