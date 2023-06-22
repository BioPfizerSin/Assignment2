<!-- file: new-store.jsp -->
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Store</title>

<!-- Bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Font Awesome CDN  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<!-- Nav Bar -->
	<nav
		class="navbar navbar-expand-lg navbar-light sticky-top bg-light shadow p-3">
		<div class="container-fluid">
			<a class="navbar-brand ml-5" href="/"> <img
				src="assets/logo/Logo.png" alt="Logo" width="120" height="120"
				class="d-inline-block align-text-top">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav mr-auto mb-2 mb-lg-0 ">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="stores">Store</a></li>

				</ul>

				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link" href="#">Log In</a></li>

				</ul>
			</div>
		</div>

	</nav>
	<!-- Nav Bar -->


	<!--  my code -->


	<div class="container mt-5 shadow-sm p-3 mb-5 bg-white rounded "
		style="width: 50vh; margin: auto;">

		<div class="container-fluid mb-3">
			<h3 class="">Update Store</h3>

		</div>
		<hr class="pt-1" style="background-color: #81b622;">
		<form action="/update-store" method="post" modelAttribute="store">

			<div class="form-group mb-3 d-none">
				<label class="form-label">Store ID </label> <input
					class="form-control" name="id" value="${store.id}"
					aria-label="Store ID" readonly="true" />
			</div>

			<div class="form-group mb-3">
				<label class="mb-2">Store Name*</label> <input type="text"
					class="form-control" name="name" id="name" value="${store.name}"
					aria-label="Store name" required>
			</div>

			<div class="form-group mb-3">
				<label class="mb-2">Phone No.*</label> <input type="tel"
					class="form-control" name="phone" id="phone"
					aria-label="Store phone number" value="${store.phone}" required>
			</div>

			<div class="form-group mb-3">
				<label class="mb-2">Description*</label> <input type="text"
					class="form-control" name="des" id="des" aria-label="Store desc."
					value="${store.des}" required>
			</div>

			<div class="form-group mb-3">
				<label class="mb-2">Location*</label> <select id="inputState"
					class="form-control" name="location" id="location" required>
					<option selected>${store.location}</option>
					<option>Kuala Lumpur</option>
					<option>Penang</option>
					<option>Johor</option>
					<option>Melaka</option>
					<option>Ipoh</option>
				</select>
			</div>

			<div class="form-group mb-3">
				<label class="mb-2" for="customFile">Upload Media/Document</label> <input
					type="file" class="form-control" name="img" id="customFile">
				<div class="text-muted fs-7">*Previous: ${store.img}</div>
			</div>


			<div class="text-right">
				<button type="submit" class="btn btn-primary">Update</button>
				<a href="/stores" class="btn btn-secondary">Cancel</a>
			</div>





		</form>
		
	</div>

	<!--  my code -->



	<!-- footer -->
	<div class="container-fluid mt-5"
		style="background-color: #808080; color: #FFFFFF;">
		<footer class="pb-5 pt-5 text-right"> &copy; 2023. Powered by
			OneStop Groceries. </footer>
	</div>
	<!-- footer -->


	<script src="https://kit.fontawesome.com/e19fcdf015.js"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS CDN -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
		
	</script>

	<!-- JQUERY CDN  -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>