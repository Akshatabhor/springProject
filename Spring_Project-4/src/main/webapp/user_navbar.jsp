<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light bg-info">
	<div class="container-fluid">
		<a class="navbar-brand" href="home_user"> <i
			class="fa-solid fa-house-medical"></i> Medi Home
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="appointment_user">Appointment</a></li>

				<li class="nav-item"><a class="nav-link active" href="view_app">View
						Appointment</a></li>



			</ul>

			<form class="d-flex">

				<div class="dropdown">
					<button class="btn btn-info dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fa-solid fa-circle-user"></i> ${username}
					</button>

					<ul class="dropdown-menu" aria-labelleby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">change password</a></li>

						<li><a class="dropdown-item" href="userlogout">Logout</a></li>

					</ul>

				</div>

			</form>

		</div>
	</div>
</nav>