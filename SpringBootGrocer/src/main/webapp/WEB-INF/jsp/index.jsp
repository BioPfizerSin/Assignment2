<!-- file: index.jsp -->
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One Stop Groceries</title>
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

<!-- css -->
<style rel="stylesheet">




</style>
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


	<!-- main section -->
	
			<img src="assets/gif/banner1.gif" alt="gif" class="img-fluid mb-3">

			<div class="jumbotron text-center mx-4 my-4">
				<h1 class="display-4">
					Welcome to One<b style="color: #81b622;">Stop</b> Groceries
				</h1>
				<p class="lead">Shop Anytime, Anywhere</p>
				<hr class="my-4">
				<p>Experience the convenience of shopping 24/7. Our Billing
					Module allows you to place orders and manage your groceries at your
					convenience, anytime, anywhere.</p>
				<p class="lead">
					<a class="btn btn-lg btn-primary" href="stores" type="button">Go Stores</a>
				</p>
			</div>


	<!-- footer -->
	<div class="container-fluid mt-5" style="background-color:#808080; color: #FFFFFF;" >
		<footer class="pb-5 pt-5 text-right">
			&copy; 2023. Powered by OneStop Groceries.
		</footer>
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