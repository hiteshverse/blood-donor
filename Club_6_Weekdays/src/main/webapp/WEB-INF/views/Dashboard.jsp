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
        iframe {
            width: 100%;
            height: 90vh;
            border: none;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2 style="padding: 15px;">Zepto Dashboard</h2>
        <a href="Dashboard" target="contentFrame">Dashboard</a>
        <a href="inputarea" target="contentFrame">Check Area</a>
        <a href="addzipcode" target="contentFrame">Add Zipcode</a>
        <a href="listzipcodes" target="contentFrame">Get Zipcode</a>
        <a href="#" target="contentFrame">Settings</a>
        <a href="#" target="contentFrame">Logout</a>
    </div>
    <div class="main-content">
    	<h1>Welcome</h1>
        <p>This is the main page for the dashboard.</p>
    </div>
</body>
</html>