<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
	<!-- Bootstrap 5 CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="card shadow">
				<div class="card-header text-center bg-primary text-white">
					<h3>Registration Form</h3>
				</div>
				<div class="card-body">
					<form action="saveuser" method="post">
						<div class="mb-3">
							<label for="firstName" class="form-label">First Name</label>
							<input type="text" class="form-control" id="firstName" name="firstName" required>
						</div>
						<div class="mb-3">
							<label for="lastName" class="form-label">Last Name</label>
							<input type="text" class="form-control" id="lastName" name="lastName" required>
						</div>
						<div class="mb-3">
							<label class="form-label d-block">Gender</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
								<label class="form-check-label" for="male">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="female" value="Female">
								<label class="form-check-label" for="female">Female</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="other" value="Other">
								<label class="form-check-label" for="other">Other</label>
							</div>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email address</label>
							<input type="email" class="form-control" id="email" name="email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label>
							<input type="password" class="form-control" id="password" name="password" required>
						</div>
						<div class="d-grid">
							<button type="submit" class="btn btn-primary">Register</button>
							<a href="login">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
