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
	<%@include file="navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/Images/hosp1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="/Images/hosp2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="/Images/hosp1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Keep your top two side rails up at all times. Ask for
									help to get out of bed and wear slippers or shoes with non-skid
									soles.</p>
							</div>

						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Enviroment</p>
								<p>Keep your top two side rails up at all times. Ask for
									help to get out of bed and wear slippers or shoes with non-skid
									soles.</p>

							</div>
						</div>

					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Keep your top two side rails up at all times. Ask for
									help to get out of bed and wear slippers or shoes with non-skid
									soles.</p>

							</div>
						</div>

					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research Doctor</p>
								<p>Keep your top two side rails up at all times. Ask for
									help to get out of bed and wear slippers or shoes with non-skid
									soles.</p>

							</div>
						</div>

					</div>

				</div>

			</div>

			<div class="col-md-4">
				<img alt="" src="/Images/doctor1.jpg">
			</div>

		</div>

	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="/Images/doctor1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">tejas</p>
						<p class="fs-7">(CEO & chairman)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="Images/doctor2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">vivek</p>
						<p class="fs-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="/Images/doctor3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">vaibhav</p>
						<p class="fs-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="/Images/doctor4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">abhijeet</p>
						<p class="fs-7">(Chief Doctor)</p>

					</div>
				</div>
			</div>

		</div>

	</div>


	<%@include file="footer.jsp"%>

</body>
</html>