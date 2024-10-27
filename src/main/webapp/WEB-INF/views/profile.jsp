<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page import="com.abc.carportal.entity.User"%>
<!DOCTYPE html>
<html lang="en">
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
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <%@ include file="menu.jsp"%>

    <div class="container">
        <h2>View Profile</h2>
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="${user.username}" disabled>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" disabled>
        </div>
        <a href="/editProfile" class="btn btn-primary">Edit Profile</a>
    </div>
</body>
</html>
