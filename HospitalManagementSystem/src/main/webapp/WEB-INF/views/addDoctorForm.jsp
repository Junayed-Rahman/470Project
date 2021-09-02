<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/8/2021
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/18/2021
  Time: 12:29 AM
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Add Doctor</title>
</head>
<body>
<form action="success" method="post">
    <div class="form-group">
        <label for="name">Doctor's Name</label>
        <input type="text" class="form-control" id="name" name="name"  placeholder="Enter your name: ">
    </div>
<%--    <div class="form-group">--%>
<%--        <label for="department">Your Department:</label>--%>
<%--        <input type="text" class="form-control" id="department" name="department" placeholder="Enter your department: ">--%>
<%--    </div>--%>
    <h4>Select Your department:</h4>
    <select class="form-select" aria-label="Default select example">




            <option value="" selected="selected">Choose Department:</option>
            <option value="Cardiology">Cardiology</option>
            <option value="Cardiothoracic Anaesthesia">Cardiothoracic Anaesthesia</option>
            <option value="Cardiothoracic &amp; Vascular Surgery">Cardiothoracic &amp; Vascular Surgery</option>
            <option value="General &amp; Lap Surgery">General &amp; Lap Surgery</option>
            <option value="Nephrology">Nephrology</option>
            <option value="Urology">Urology</option>

            <option value="Cardiac Electrophysiology, Heart Failure &amp; Interventional Cardiology">Cardiac Electrophysiology, Heart Failure &amp; Interventional Cardiology</option><option value="146">Dermatology</option>
            <option value="Orthopaedics">Orthopaedics</option>
           <option value="Dialysis">Dialysis</option>
            <option value="Rheumatology">Rheumatology</option>
            <option value="Obstetrics and Gynaecology">Obstetrics and Gynaecology</option>
            <option value="Fertility Centre">Fertility Centre</option>
            <option value="Paediatric Surgery &amp; Paediatric Urology">Paediatric Surgery &amp; Paediatric Urology</option>
            <option value="Neonatology">Neonatology</option>
            <option value="Neonatal ICU">Neonatal ICU</option>
            <option value="Neurology">Neurology</option>
            <option value="Neurosurgery">Neurosurgery</option>
            <option value="Dermatology &amp; Venereology">Dermatology &amp; Venereology</option>
            <option value="Hip Centre">Hip Centre</option>
            <option value="ENT">ENT</option>
            <option value="Internal Medicine">Internal Medicine</option>
            <option value="Ophthalmology">Ophthalmology</option>
            <option value="Dental &amp; Maxillofacial Surgery">Dental &amp; Maxillofacial Surgery</option>
            <option value="Diagnostic &amp; Interventional Radiology">Diagnostic &amp; Interventional Radiology</option>
            <option value="Plastic, Reconstructive &amp; Cosmetic Surgery">Plastic, Reconstructive &amp; Cosmetic Surgery</option>
            <option value="Endocrinology &amp; Diabetology">Endocrinology &amp; Diabetology</option>
            <option value="Psychiatry">Psychiatry</option>
            <option value="Anaesthesia">Anaesthesia</option>
            <option value="Nuclear Medicine">Nuclear Medicine</option>
            <option value="Gastroenterology &amp; Hepatology">Gastroenterology &amp; Hepatology</option>
            <option value="Respiratory Medicine">Respiratory Medicine</option>
            <option value="Paediatrics">Paediatrics</option>
            <option value="Joint Care &amp; Wellness Centre">Joint Care &amp; Wellness Centre</option>
            <option value="Paediatric Cardiology">Paediatric Cardiology</option>
            <option value="Critical Care">Critical Care</option>
            <option value="Hematology &amp; Stem Cell Transplant">Hematology &amp; Stem Cell Transplant</option>
            <option value="Paediatrics &amp; Neonatology">Paediatrics &amp; Neonatology</option>
            <option value="Child Development Centre">Child Development Centre</option>
            <option value="Cosmetic Clinic">Cosmetic Clinic</option>
            <option value="Spine Clinic">Spine Clinic</option>
            <option value="Accident &amp; Emergency">Accident &amp; Emergency</option>
            <option value="Counsellor">Counsellor</option>
            <option value="Critical Care (Medical ICU )">Critical Care (Medical ICU )</option>
            <option value="Cancer Care Centre">Cancer Care Centre</option>
            <option value="Cardiac Electrophysiology and Heart Failure">Cardiac Electrophysiology and Heart Failure</option>
            <option value="Endocrine">Endocrine</option>

            <option value="Not Known">Not Known</option>

    </select>
    <div class="form-group">
        <label for="phNumber">Your Phone Number:</label>
        <input type="number" class="form-control" id="phNumber" name="phoneNumber" placeholder="Enter PhoneNumber:">
    </div>
    <div class="form-group">
        <label for="email">Your Email:</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email:">
    </div>
    <div class="form-group">
        <label for="degree">Your Medical Degrees:</label>
        <input type="text" class="form-control" id="degree" name="degree" placeholder="Enter your degrees:">
    </div>


    <div class="form-group">
        <label for="startTime">Start Consultation Time:</label>
        <input type="text" class="form-control" id="startTime" name="startConsultation" placeholder="Enter startTime:">
    </div>
    <div class="form-group">
        <label for="endTime">End Consultation Time:</label>
        <input type="text" class="form-control" id="endTime" name="endConsultation" placeholder="Enter Time:">
    </div>

    <div class="form-group mt-1">
        <h3>Enter Your Hospital:</h3>
        <select name="hospital" class="form-control">
            <c:forEach var="hospital" items="${hospitals}">
                <option value="<c:out value="${hospital}"/>"><c:out value="${hospital.name}"/></option>
            </c:forEach>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
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