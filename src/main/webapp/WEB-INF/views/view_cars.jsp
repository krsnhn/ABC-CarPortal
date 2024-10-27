<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <!-- Enable Bootstrap -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="/css/style2.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>
<style>
	body {
		background-color: #1c0d342a;
	}
</style>
</head>

<body>
    <%@ include file="menu.jsp"%>
    <div class="car-container">
        <div class="car-list-header">
            <h2>Car List</h2>
            

            <form action="search" method="get" class="search-form">
				<div class="input-group"> <!-- Wrap input and button in input-group -->
					<input class="form-control" type="search" placeholder="Search" name="keyword" />
					<div class="input-group-btn"> <!-- Use input-group-btn for button -->
						<button type="submit" class="btn-primaryy">Search</button>
					</div>
				</div>
			</form>
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
                            <h5 class="card-title">${car.price}</h5>
                            <div class="card-text">
                                <p>Car Make : ${car.make}</p>
                                <p>Car Model: ${car.model}</p>
                                <p>Car Body Style :${car.bodyStyle}</p>
                                <p>Price:<Price:1>$</Price:1>${car.price}</p>
                            </div>
                            <div class="card-buttons">
                                <small class="text-muted">
                                    <sec:authorize access="hasRole('ADMIN')">
                                        <a href="edit?id=${car.id}" class="btn btn-success">Update</a>
                                        <a href="delete?id=${car.id}" class="btn btn-danger">Delete</a>
                                    </sec:authorize>
                                    <a href="car_detail?id=${car.id}" class=" btn btn-info">View</a>
                                </small>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
        <!-- End of Card Group -->
    </div>
</body>

</html>