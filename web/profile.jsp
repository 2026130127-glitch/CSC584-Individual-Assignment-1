<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.*, java.io.*"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Personal Profile | My Profile</title>
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500;600;700&family=Jost:wght@400;500;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%
            String name = (String) request.getAttribute("name");
            String studentId = (String) request.getAttribute("studentId");
            String programme = (String) request.getAttribute("programme");
            String email = (String) request.getAttribute("email");
            String hobbies = (String) request.getAttribute("hobbies");
            String intro = (String) request.getAttribute("intro");

            if (name == null)
            {
                response.sendRedirect("index.html");
                return;
            }

            String initial = name.trim().substring(0, 1).toUpperCase();
        %>

        <div class="hero hero-small">
            <h1>My Personal Profile</h1>
        </div>

        <div class="container">
            <div class="card">

                <div class="profile-head">
                    <div class="avatar"><%= initial %></div>
                    <div>
                        <h2 class="profile-name"><%= name %></h2>
                        <p class="profile-programme"><%= programme %></p>
                    </div>
                </div>

                <h3 class="section-title">Personal Details</h3>
                <table class="info-table">
                    <tr>
                        <th>Full Name</th>
                        <td><%= name %></td>
                    </tr>
                    <tr>
                        <th>Student ID</th>
                        <td><%= studentId %></td>
                    </tr>
                    <tr>
                        <th>Programme</th>
                        <td><%= programme %></td>
                    </tr>
                    <tr>
                        <th>Email Address</th>
                        <td><%= email %></td>
                    </tr>
                    <tr>
                        <th>Hobbies</th>
                        <td><%= hobbies %></td>
                    </tr>
                    <tr>
                        <th>About Me</th>
                        <td><%= intro %></td>
                    </tr>
                </table>

                <div class="submit-row">
                    <a href="index.html" class="btn btn-primary">Back to Form</a>
                </div>
            </div>
        </div>
    </body>
</html>