<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Simple Calculator</title>
</head>
<body>
    <h2>Calculator</h2>
    <form action="add" method="post">
        <label>Number 1:</label>
        <input type="number" name="num1" required />
        <br>
        <label>Number 2:</label>
        <input type="number" name="num2" required />
        <br>
        <input type="submit">
    </form>

</body>
</html>
