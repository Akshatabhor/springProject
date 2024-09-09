<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<%@include file="doctor_navbar.jsp"%>
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
								<c:forEach var="hp" items="${doct}">
									<tr class="table-active">


										<td>${hp.name}</td>
										<td>${hp.gender}</td>
										<td>${hp.age }</td>
										<td>${hp.appointment_date }</td>
										<td>${hp.diseases }</td>

										<td><a href="appoi_con" class="btn btn-sm btn-danger">Appointment
												Book</a></td>


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