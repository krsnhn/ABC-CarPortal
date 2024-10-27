<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <!-- Enable Bootstrap -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
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
                <div class="input-group">
                    <!-- Wrap input and button in input-group -->
                    <input class="form-control" type="search" placeholder="Search" name="keyword" />
                    <div class="input-group-btn">
                        <!-- Use input-group-btn for button -->
                        <button type="submit" class="btn btn-primary">Search</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="card-group">
                    <c:if test="${empty search_cars}">
                                <h4 class="text-danger text-center">No Matching Item Found. Try another keyword.</h4>
                    </c:if>

                    <c:if test="${not empty search_cars}">
                        <c:forEach var="car" items="${search_cars}">
                            <div class="card">
                                <img src="/images/${car.carphoto}" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">${car.price}</h5>
                                    <div class="card-text">
                                        <p>Car Make: ${car.make}</p>
                                        <p>Car Model: ${car.model}</p>
                                        <p>Sell Price: ${car.price}</p>
                                    </div>
                                    <div class="card-buttons">
                                        <small class="text-muted">
                                            <sec:authorize access="hasRole('ADMIN')">
                                                <a href="edit?id=${car.id}" class="btn btn-info">Update</a>
                                                <a href="delete?id=${car.id}" class="btn btn-danger">Delete</a>
                                            </sec:authorize>
                                            <a href="car_detail?id=${car.id}" class="btn btn-primary">View</a>
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>

        <!-- End Car Lists -->

    </div>
</body>

</html>
