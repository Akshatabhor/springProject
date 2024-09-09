<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="user_navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">

						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="ap" items="${apoin}">
									<tr class="table-active">


										<th>${ap.name }</th>
										<td>${ap.gender }</td>
										<td>${ap.age }</td>
										<td>${ap.appointment_date }</td>
										<td>${ap.diseases }</td>

										<td><a href="appoi_con" class="btn btn-sm btn-danger">Pending</a></td>


									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>