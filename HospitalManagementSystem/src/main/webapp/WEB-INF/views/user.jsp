<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/8/2021
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

    <title>All hospiatls</title>
</head>
<body>

<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Hospital Name</th>
        <th scope="col">Thana</th>
        <th scope="col">district</th>
        <th scope="col">HospitalType</th>
        <th scope="col">icu</th>
        <th scope="col">bed</th>
        <th scope="col">Choose </th>


    </tr>
    </thead>
    <tbody>

    <c:forEach var="hospital" items="${hospitals}" >
        <tr>
            <th scope="row">${hospital.hosId}</th>
            <td><c:out value="${hospital.name}">null</c:out></td>
            <td><c:out value="${hospital.thana}">null</c:out></td>
            <td><c:out value="${hospital.district}">null</c:out></td>
            <td><c:out value="${hospital.hospitalType}">null</c:out></td>
            <td><c:out value="${hospital.icu}">null</c:out></td>
            <td><c:out value="${hospital.bed}">null</c:out></td>
            <td><a href="${pageContext.request.contextPath}/hospitalId=${hospital.hosId}">
                <img src="https://img.icons8.com/pastel-glyph/25/000000/edit--v2.png"/></a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<div class="container">
    <h5>Search with your district</h5>
    <div class="input-group rounded">
        <form action="${pageContext.request.contextPath}/districtwiseHospitals" method="post">
            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" name="search"
                   aria-describedby="search-addon" />
            <span class="input-group-text border-0" id="search-addon">
    <i class="fas fa-search"></i>
  </span>
            <input type="submit" value="Submit">
        </form>
    </div>

</div>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
-->
</body>
</html>

