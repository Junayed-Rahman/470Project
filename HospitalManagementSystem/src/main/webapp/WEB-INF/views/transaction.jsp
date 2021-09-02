<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/18/2021
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored = "false" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Transaction</title>
</head>
<body>
<div class="container">
<form action="transactionDone", method="post">

    <div class="mb-3">
        <label for="transAmount" class="form-label">Transaction Amount</label>
        <input type="number" class="form-control" id="transAmount" value="500" name="amount" aria-describedby="emailHelp" readonly>

    </div>
    <h3> Transaction Type</h3>
    <div class="form-check" >
        <input class="form-check-input" type="radio" name="transactionType" id="flexRadioDefault1" value="Card">
        <label class="form-check-label" for="flexRadioDefault1" >
         Card
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="transactionType" id="flexRadioDefault2" value="handCash" checked>
        <label class="form-check-label" for="flexRadioDefault2">
            HandCash
        </label>
    </div>
    <div class="mb-3" hidden>
        <label for="hosId" class="form-label" >HosId</label>
        <input type="number" class="form-control"  id="hosId" value="${hId}" name="hosId">

    </div>


    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
-->
</body>
</html>