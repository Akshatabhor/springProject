<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="all_js_css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="user_navbar.jsp"%>

	<div class="container p-12">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">

						<p class="text-center fs-4">User Appointment</p>
						<form action="appoin" method="post">
							<input type="hidden" name="userid" value="${username.id}">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required="required" class="form-control" name="name">
							</div>

							<div class="mb-3">
								<label>Gender</label> <select class="form-control" name="gender"
									required="required">
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Age</label> <input type="number"
									required="required" class="form-control" name="age">
							</div>

							<div class="mb-3">
								<label class="form-label">Appointment Date</label> <input
									type="date" required="required" class="form-control"
									name="appointment_date">
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									required="required" class="form-control" name="email">
							</div>

							<div class="mb-3">
								<label class="form-label">Phone No</label> <input maxlength="10"
									type="number" required="required" class="form-control"
									name="phno">
							</div>

							<div class="mb-3">
								<label class="form-label">Diseases</label> <input type="text"
									required="required" class="form-control" name="diseases">
							</div>



							<div class="mb-3">
								<label>Full Address</label>
								<textarea class="form-control" name="address"
									required="required" rows="3" cols=""></textarea>
							</div>


							<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>