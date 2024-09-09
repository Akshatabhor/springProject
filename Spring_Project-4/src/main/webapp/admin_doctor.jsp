<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE   >
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Doctor</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="all_js_css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="admin_navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center">Add Doctor</p>

						<form action="add_doctor" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required="required" name="name" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required="required" name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required="required" name="qual"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									name="specialistname" class="form-control">
									<option value="">--select--</option>

									<option value="Cardiologist">Cardiologist</option>
									<option value="Dermatologist">Dermatologist</option>
									<option value="General practitioner">General
										practitioner</option>
									<option value="Anesthesiologist">Anesthesiologist</option>
									<option value="Dentist">Dentist</option>
									<option value="Surgeon">Surgeon</option>
									<option value="Neurologist">Neurologist</option>

									<option value="Plastic surgery">Plastic surgery</option>

									<option value="Pharmacist">Pharmacist</option>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									required="required" name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required="required" name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" required="required" name="password"
									class="form-control">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>

				</div>

			</div>


			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text center">
							<a href="fetch_all_doctors"
								style="text-decoration: none; color: black;">Doctor Details</a>
						</p>

						<table class="table">

							<thead>
								<tr>
									<th scope="col">ID</th>

									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Action</th>

								</tr>

							</thead>
							<tbody>

								<c:forEach var="doc" items="${e_data}">
									<tr class="table-active">

										<td>${doc.id }</td>

										<td>${doc.name }</td>
										<td>${doc.dob }</td>
										<td>${doc.qual }</td>
										<td>${doc.specialistname }</td>
										<td>${doc.email }</td>
										<td>${doc.mobno }</td>


										<td><a href="<c:url value='/${doc.id }'/>"
											class="btn btn-sm btn-primary">Update</a></td>
										<td><a href="<c:url value='/Delete/${doc.id }'/>"
											class="btn btn-sm btn-danger">Delete</a></td>

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