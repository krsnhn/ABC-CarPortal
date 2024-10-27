<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thank You</title>
        <!-- Custom CSS -->
        <style>
            body {
                background-color: #1c0d342a;
                font-family: Arial, sans-serif;
                text-align: center;
                padding-top: 50px;
            }
            h2 {
                margin-bottom: 30px;
            }
            .container {
                width: 80%;
                margin: 0 auto;
            }
            .btn {
                background-color: #FFC23C;
                color: #100720;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                display: inline-block;
                margin-top: 20px;
                transition: background-color 0.3s;
            }
            .btn:hover {
                background-color: #d8a800;
                color: #100720;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Thank You for Registering!</h2>
            <p>Your registration was successful.</p>
            <p>You will be redirected to the login page shortly.</p>
            <p>If not redirected, <a href="/loginform">click here</a>.</p>
        </div>
        <script > setTimeout(function() {
            window.location.href = "/loginform";
        }, 3000); // 5 seconds</script>
    </body>
    </html>