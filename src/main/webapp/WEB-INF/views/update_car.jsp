<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page import="com.abc.carportal.entity.Car"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

   <head>
        <!-- meta data -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">
        
        <!-- title of site -->
        <title>ABC Cars | Cars Lists</title>

        
      <!--animate.css-->
        <link rel="stylesheet" href="css/animate.css">
       
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- bootsnav -->
        <link rel="stylesheet" href="css/bootsnav.css">

        <!--style.css-->
        <link rel="stylesheet" href="css/style.css">

        <!--responsive.css-->
        <link rel="stylesheet" href="css/responsive.css">

        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    <!-- Enable Bootstrap -->
    <!-- Bootstrap CSS -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <link href="/css/style2.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>
	<style>
		.container {
    padding-top: 0px;
	}

	
	body {
		background-color: #1c0d342a;
    }
.container{
	display: flex;
    justify-content: center;
    align-items: center;
}
	
.text-group {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
	height: 50px;
}
	</style>
</head>

<body>

    <%@ include file="menu.jsp"%>

    <!-- First Container -->
    <div class="container">
		
		<form:form method="POST" action="/cars" modelAttribute="car" enctype="multipart/form-data">
            <input type="hidden" value="${_csrf.token}" />
            <form:hidden path="id" />
            <h2 class="text-center">Sell a Car</h2>

            <div class="form-group">
                <label for="carphoto">Upload Car Photo:</label>
                <input type="file" name="file" class="form-control" required onchange="previewImage(event)" />
                <img id="photoPreview" src="" alt="Car Photo Preview" style="display: none;" />
            </div>

		
				<div class="form-group">
					<label for="make">Car Make:</label>
					<div class="text-group">
						<select name="make" class="form-control" path="make" required>
							<option value="default">Select Make</option><!-- /.option-->
							<option value="toyota">Toyota</option><!-- /.option-->
							<option value="holden">Holden</option><!-- /.option-->
							<option value="mercedes-benz">Mercedes-Benz</option><!-- /.option-->
							<option value="honda">Honda</option><!-- /.option-->
							<option value="ford">Ford</option><!-- /.option-->
							<option value="chevrolet">Chevrolet</option><!-- /.option-->
							<option value="nissan">Nissan</option><!-- /.option-->
							<option value="audi">Audi</option><!-- /.option-->
							<option value="bmw">BMW</option><!-- /.option-->
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="model">Car Model:</label>
					<div class="text-group">
						<select name="model" class="form-control" path="model" required>
							<option value="default">Select Model</option>
							<option value="corolla">Corolla</option>
							<option value="camry">Camry</option>
							<option value="hilux">Hilux</option>
							<option value="rav4">RAV4</option>
							<option value="civic">Civic</option>
							<option value="accord">Accord</option>
							<option value="cruze">Cruze</option>
							<option value="malibu">Malibu</option>
							<option value="sonata">Sonata</option>
							<option value="elantra">Elantra</option>
							<option value="santa-fe">Santa Fe</option>
							<option value="sentra">Sentra</option>
							<option value="altima">Altima</option>
							<option value="maxima">Maxima</option>
							<option value="a3">A3</option>
							<option value="a4">A4</option>
							<option value="c-class">C-Class</option>
							<option value="e-class">E-Class</option>
							<option value="3-series">3 Series</option>
							<option value="5-series">5 Series</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="body">Body Style:</label>
					<div class="text-group">
						<select name="bodyStyle" class="form-control"  path="bodyStyle" required>
							<option value="default">Select Body Style</option>
							<option value="sedan">Sedan</option>
							<option value="hatchback">Hatchback</option>
							<option value="coupe">Coupe</option>
							<option value="convertible">Convertible</option>
							<option value="suv">SUV (Sport Utility Vehicle)</option>
							<option value="crossover">Crossover</option>
							<option value="minivan">Minivan</option>
							<option value="pickup">Pickup Truck</option>
							<option value="van">Van</option>
							<option value="wagon">Station Wagon</option>
							<option value="truck">Truck</option>							
						</select>
					</div>
				</div>
				
				<div class="form-group">
						<label for="price">Car Price:</label>
						<form:input path="price"  class="text-group" type="number" />
				</div>				
		
				<input type="submit" class="btn btn-success" name="Add" value="Save" />
				<input type="button" class="btn btn-danger" value="Cancel" onclick="cancel()" />
	
				<script>
					function cancel() {
						window.location.href = "cars";
					}
	
					function previewImage(event) {
						const file = event.target.files[0];
						const preview = document.getElementById('photoPreview');
						const reader = new FileReader();
	
						reader.onload = function() {
							preview.src = reader.result;
							preview.style.display = 'block'; // Show the image
						}
	
						if (file) {
							reader.readAsDataURL(file);
						} else {
							preview.src = '';
							preview.style.display = 'none'; // Hide if no file
						}
					}
				</script>
			</form:form>
		</div>
	</body>
</html>
