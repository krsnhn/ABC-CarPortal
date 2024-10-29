<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
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
    <link href="/css/style.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>
    <style>
        body {
            background-color: #1c0d342a;
        }

        /* Custom styles for the table */
        .table th, .table td {
            text-align: center; /* Center-align table text */
        }

        .table th {
            background-color: #FFC23C; /* Light background for headers */
            color: #343a40; /* Dark text for headers */
        }

        .table-hover tbody tr:hover {
            background-color: #e9ecef; /* Light hover effect */
        }
    </style>
</head>

<body>
    <%@ include file="menu.jsp" %>

    <div class="car-list-header">
        <h2>All Users</h2>
    </div>
    <div class="table-content"style="width: 80%;">

        <table class="table table-bordered table-responsive table-striped table-hover" id="table-list" style="width: 100%;">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>User ID</th>
                    <th>Role ID</th>
                    <th>Full Name</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% int i = 1; %>
                <c:forEach var="user" items="${userlists}">
                    <tr>
                        <td><%= i %></td>
                        <td>${user.id}</td>
                        <td><c:if test="${user.roles ne null}">${user.roles.iterator().next().id}</c:if></td> <!-- Access the first role's ID if roles is not null -->
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                        <td>******</td>
                        <td>
                            <!-- Add delete button/link -->
                            <c:if test="${user.roles ne null}">
                                <c:if test="${user.roles.iterator().next().id ne 1}">
                                    <form action="/adminDelete" method="get" style="display: inline;">
                                        <input type="hidden" name="userId" value="${user.id}">
                                        <button class="btn btn-danger" type="submit">Delete</button>
                                    </form>
                                </c:if>
                            </c:if>
                            
                            <!-- Conditionally show/hide "Make Admin" button -->
                            <c:if test="${user.roles ne null}">
                                <c:if test="${user.roles.iterator().next().id == 2}">
                                    <form action="/userMakeAdmin" method="post" style="display: inline;">
                                        <input type="hidden" name="userId" value="${user.id}">
                                        <button class="btn btn-success" type="submit">Make Admin</button>
                                    </form>
                                </c:if>
                            </c:if>

                            <!-- Conditionally show/hide "Make User" button -->
                            <c:if test="${user.roles ne null}">
                                <c:if test="${user.roles.iterator().next().id == 1}">
                                    <form action="/userMakeUser" method="post" style="display: inline;">
                                        <input type="hidden" name="userId" value="${user.id}">
                                        <button class="btn btn-success" type="submit">Make User</button>
                                    </form>
                                </c:if>
                            </c:if>
                        </td>
                    </tr>
                    <% i++; %>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
