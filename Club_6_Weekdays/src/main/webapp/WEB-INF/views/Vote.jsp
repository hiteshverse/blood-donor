<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background: #fff;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
    }
    label {
        font-weight: bold;
    }
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0 16px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .gender {
        margin-bottom: 16px;
    }
    .gender label {
        font-weight: normal;
        margin-right: 10px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <form action="Voti" method="post">
        <label>Name</label><br> 
        <input type="text" name="name" ><br>
        ${nameError}
        <br>

        <label>Age</label><br> 
        <input type="number" name="age" value="0"><br>
       

        <div class="gender">
            <label>Gender</label><br>
            <input type="radio" name="gender" value="male" id="male">
            <label for="male">Male</label>

            <input type="radio" name="gender" value="female" id="female">
            <label for="female">Female</label>
            ${genderError}
        </div>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
