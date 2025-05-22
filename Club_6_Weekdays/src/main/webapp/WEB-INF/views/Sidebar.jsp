<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: white;
            display: flex;
            flex-direction: column;
        }
        .sidebar a {
            padding: 15px;
            text-decoration: none;
            color: white;
            font-size: 1.1em;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .main-content {
            flex: 1;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2 style="padding: 15px;">My Dashboard</h2>
        <a href="Dashboard">Dashboard</a>
        <a href="inputarea">Check Area</a>
        <a href="addzipcode">Add Zipcode</a>
        <a href="List">Get Zipcode</a>
        <a href="#">Settings</a>
        <a href="#">Logout</a>
    </div>
</body>
</html>
