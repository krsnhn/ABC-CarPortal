<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

        .container {
            padding-top: 0px;
            display: flex;
            margin-left: 30px; /* Adjust the margin to give way to the menu */
            width: calc(80% - 250px); /* Calculate the width to accommodate the menu */
            border-radius: 10px;
            overflow: hidden; /* Ensure content doesn't exceed container */
        }

        .car-detail {
            flex: 1;
            background-color: #ffffff;
            padding: 20px;
            box-sizing: border-box; /* Include padding and border in the element's total width */
            border-left: 2px solid #FFC23C; /* Set border on the right side only */
            border-top: 2px solid #FFC23C;
            border-bottom: 2px solid #FFC23C;
            border-radius: 10px 0 0 10px; /* Rounded corners only on the left side */
        }

        .bid-history {
            flex: 1;
            background-color: #dcdcdc;
            padding: 20px;
            box-sizing: border-box; /* Include padding and border in the element's total width */
            border-right: 2px solid #FFC23C; /* Set border on the left side only */
            border-top: 2px solid #FFC23C;
            border-bottom: 2px solid #FFC23C;
            border-radius: 0 10px 10px 0; /* Rounded corners only on the right side */
        }

        .bid-history h4 {
            color: #333;
        }

        .car-detail img {
            max-width: 400px;
            height: 300px;
            display: block; /* Ensures margin: auto works */
            margin: auto; /* Centers the image horizontally */
        }

        .car-detail h5 {
            margin-top: 0;
        }

        .car-detail p {
            margin: 5px 0;
        }

        .bid-history div {
            margin-bottom: 10px;
        }

        .bid-history hr {
            margin: 20px 0;
            border: none;
            border-top: 1px solid #333;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Ensure padding and border are included in element's total width and height */
            font-size: 16px;
        }

        .input-group input[type="number"]:focus {
            outline: none;
            border-color: #007bff; /* Example color change on focus */
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn.btn-warning {
            background-color: #ffc107;
            color: #fff;
        }

        .btn.btn-warning:hover {
            background-color: orange;
        }

        .btn-dark {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease;
            background-color: rgba(255, 38, 38, 0.856); /* Change the background color to match btn-warning */
            color: #fff;
        }

        .btn-dark:hover {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: red; /* Change the background color to match btn-warning */
            color: #fff;
        }

        .text-red {
            color: red;
        }
    </style>
</head>

<body>
    <%@ include file="menu.jsp" %>
    <div class="container">
        <div class="car-detail">
            <div class="car-list-header">
                <h2>Car Details</h2>
            </div>

            <form:form method="post" action="/car_detail">
                <img src="/images/${car.carphoto}">
                <div>
                    <h5 class="text-center">${car.make} ${car.bodyStyle} ${car.model}</h5>
                    <div>
                        <p>Car Price :$ ${car.price}</p>
                        <p>Status: ${car.active ? 'Active' : 'Inactive'}</p> <!-- Show status -->
                    </div>

                    <br>
                    
                    <!-- Activate/Deactivate Button -->
                    <sec:authorize access="hasRole('ADMIN')">
                        <div class="card-buttons">
                            <c:choose>
                                <c:when test="${car.active}">
                                    <a href="deactivate?id=${car.id}" class="btn btn-danger">Deactivate</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="activate?id=${car.id}" class="btn btn-success">Activate</a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </sec:authorize>
                    <br>
                    <!-- Error Messages -->
                    <c:if test="${not empty error_message}">
                        <div class="alert alert-danger text-red" role="alert">
                            ${error_message}
                        </div>
                    </c:if>

                    <!-- Bid Form -->
                    <div class="input-group">
                        <input type="hidden" name="id" value="${car.id}" />
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <input type="number" placeholder="Enter Bid Price" name="bitprice" ${car.active ? '' : 'disabled'} /> <!-- Disable input if car is inactive -->
                    </div>
                
                    <div style="padding: 20px;">
                        <input type="submit" value="Bid Car" class="btn btn-warning" ${car.active ? '' : 'disabled'} /> <!-- Disable submit button if car is inactive -->
                        <a href="cars" class="btn btn-dark">Go Back</a>
                    </div>
                </div>
            </form:form>
        </div>


        <!-- Display Bidding History -->
        <div class="bid-history">
            <h3>Latest Bid</h3>
            <hr>
            <c:choose>
            <c:when test="${empty bidinfo}">
                <p>No latest bid available.</p>
            </c:when>
            <c:otherwise>
                <!-- Display only the latest bid -->
                <c:forEach var="car_bidding" items="${bidinfo}" varStatus="status">
                    <c:if test="${status.index eq bidinfo.size() - 1}">
                        <div>
                            <div>
                                <p>${car_bidding.bidderName}</p>
                            </div>
                            <div>
                                <div>
                                    <p><small>${car_bidding.bid_date_time}</small></p>
                                    <p>Bidded Price: $ ${car_bidding.bidderPrice}0</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </c:otherwise>
            </c:choose>
            <hr> <!-- Moved the HR outside the c:choose block -->
            <h6>Bidding History</h6>
            <c:choose>
                <c:when test="${empty bidinfo}">
                    <p>No bidding history available.</p>
                </c:when>
                <c:otherwise>
                    <c:forEach var="car_bidding" items="${bidinfo}">
                        <div>
                            <div>
                                <p>${car_bidding.bidderName}</p>
                            </div>
                            <div>
                                <div>
                                    <p><small>${car_bidding.bid_date_time}</small></p>
                                    <p>Bidded Price: $ ${car_bidding.bidderPrice}0</p>
                                </div>
                            </div>
                        </div>
                        <hr />
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Display Latest Bid -->
        
    </div>
</body>

</html>
