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
        body {
            background-color: #1c0d342a;
        }
        /* Style for the search form */
        .search-form-container {
            display: flex;
            justify-content: center;
        }

        /* Style for the search form */
        .search-form {
            display: flex;
            align-items: stretch; /* Ensures all child elements match in height */
            width: 60%;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        /* Style for the search input field */
        .search-form .form-control {
            border: 2px solid #ccc;
            border-radius: 5px 0 0 5px; /* Rounded corners on the left only */
            padding: 10px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            flex: 1; /* Allow the input field to grow */
            height: auto; /* Ensures it adjusts with the button height */
        }

        /* Style for the search input field on focus */
        .search-form .form-control:focus {
            border-color: #FFC23C;
            outline: none;
        }

        /* Style for the search button */
        .search-form .btn-primaryy {
            border: none;
            border-radius: 0 5px 5px 0; /* Rounded corners on the right only */
            padding: 10px 20px;
            font-size: 16px;
            background-color: #FFC23C;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: flex;
            align-items: center; /* Center text vertically */
            justify-content: center; /* Center text horizontally */
            height: auto; /* Adjusts button height to match input */
        }

        /* Style for the search button hover effect */
        .search-form .btn-primaryy:hover {
            background-color: orange;
        }

    </style>
</head>

<body>
    <%@ include file="menu.jsp"%>
    <div class="car-container">
        <div class="car-list-header">
            <h2>Cars List</h2>
            <div class="search-form-container">
                <form action="search" method="get" class="search-form">
                    <input class="form-control" type="search" placeholder="Search" name="keyword" />
                    <button type="submit" class="btn-primaryy">Search</button>
                </form>
            </div>	            
        </div>

        <c:if test="${empty cars}">
            <sec:authorize access="hasRole('ADMIN')">
                <span>No Cars are added yet.</span>
            </sec:authorize>
            <sec:authorize access="hasRole('USER')">
                <span>No Cars are added yet.</span>
            </sec:authorize>
        </c:if>

        <div class="card-group">
            <c:if test="${not empty cars}">
                <c:forEach var="car" items="${cars}">
                    <div class="card">
                        <img src="/images/${car.carphoto}" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${car.make} ${car.bodyStyle} ${car.model}</h5>
                            <div class="card-text">
                                <p>Price: $${car.price}</p>
                                <p>Status: ${car.active ? 'Active' : 'Inactive'}</p>
                            </div>
                            <br>
                                <div style="justify-content: center;">   
                                    <sec:authorize access="hasRole('ADMIN')">
                                        <input type="button" value="Update" class="btn btn-success" onclick="location.href='edit?id=${car.id}'">
                                        <input type="button" value="Delete" class="btn btn-danger" onclick="location.href='delete?id=${car.id}'">
                                    </sec:authorize>
                                    <input type="button" value="View" class="btn btn-info" onclick="location.href='car_detail?id=${car.id}'">
                                </div>
                            </br>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
        <!-- End of Card Group -->
    </div>

    


</body>

</html>



