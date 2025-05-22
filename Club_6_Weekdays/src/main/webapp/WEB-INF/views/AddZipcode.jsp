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
        <h2 style="padding: 15px;">Zepto Dashboard</h2>
        <a href="Dashboard">Dashboard</a>
        <a href="inputarea">Check Area</a>
        <a href="addzipcode">Add Zipcode</a>
        <a href="listzipcodes">Get Zipcode</a>
        <a href="#">Settings</a>
        <a href="#">Logout</a>
    </div>
    <div class="main-content">
        <h1>Welcome</h1>
       <h2>Add Zip Code</h2>
        <form action="checkzipcode" method="post">
            <label for="areaName">Area Name</label>
            <input type="text" name="areaName" id="areaName" >
            <div class="error">${areaError}</div>

            <label for="zipCode">Pin Code</label>
            <input type="number" name="zipCode" id="zipCode" >
            <div class="error">${zipCodeError}</div>

            <input type="submit" value="Add Zipcode">
            <div class="success">${message}</div>
        </form>
    </div>
</body>
</html>
