<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="admin_navbar.jsp"%>

	<div class="container p-5">
		<div class="row">

			<div class="col-md-12">

				<div class="col-md-12 mt-4">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="fas fa-user-circle fa-3x"></i><br>
							<p class="fs-4 text-center">Admin</p>
						</div>
					</div>
				</div>

				<div class="col-md-12 mt-4">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="fas fa-user-md fa-3x"> </i><br>
							<p class="fs-4 text-center">Doctor</p>
						</div>
					</div>
				</div>


			</div>

		</div>
</body>
</html>