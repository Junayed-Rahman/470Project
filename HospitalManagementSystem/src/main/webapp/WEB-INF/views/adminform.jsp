<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/1/2021
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
-->
<div class="container">
<form action="done" method="post">
    <div class="mb-3">
        <label for="hospitalName" class="form-label">Hospital Name: </label>
        <input type="text" class="form-control" id="hospitalName" name="name" placeholder="Enter name: " >
    </div>
    <div class="mb-3">
        <label for="ThanaName" class="form-label">Thana</label>
        <input type="text" class="form-control" id="ThanaName" name="thana">
    </div>
    <div class="mb-3">
        <label for="DistrictName" class="form-label">District</label>
        <input type="text" class="form-control" id="DistrictName" name="district">
    </div>
    <div class="mb-3">
        <p>Hospital Type:</p>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="hospitalType" id="firstType" value="Covid" checked>
            <label class="form-check-label" for="firstType">
                covid
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="hospitalType" id="secondType"  value="Non-covid">
            <label class="form-check-label" for="secondType">
                Non-covid
            </label>
        </div>
    </div>
    <div class="mb-3">
        <label for="ICU_Number" class="form-label">ICU:</label>
        <input type="number" class="form-control" id="ICU_Number" name="icu">
    </div>
    <div class="mb-3">
        <label for="bed_Number" class="form-label">Bed:</label>
        <input type="number" class="form-control" id="bed_Number" name="bed">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>



</body>
</html>
