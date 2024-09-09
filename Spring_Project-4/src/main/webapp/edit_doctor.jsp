<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE   >
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | Doctor-Edit</title>
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

			<div class="col-md-4 offset-md-4">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center">Edit Doctor Details</p>

						<form action="edit_doctor/${data.id}" method="post">

							<div class="mb-3">
								<input type="hidden" name=id value=${data.id }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required="required" name="name" value=${data.name }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required="required" name="dob" value=${data.dob }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required="required" name="qual" value=${data.qual }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									name="specialistname" required="required" class="form-control">
									<option value="${data.specialistname }">${data.specialistname }
									</option>
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
									required="required" name="email" value=${data.email }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required="required" name="mobno" value=${data.mobno }
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input type="text"
									required="required" name="password" value=${data.password }
									class="form-control">
							</div>
							<button type="submit" class="btn btn-primary col-md-12">
								Update</button>
						</form>

					</div>

				</div>

			</div>

		</div>
	</div>
</body>
</html>