<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/9/2021
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Therap JAVA Fest</title>


    <link rel="shortcut icon" type="image/png" href="accusoft-brands.svg">

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">


    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/26f3072640.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous"
          referrerpolicy="no-referrer">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer">

</head>
<body>


<!--Navbar Starts Here-->
<nav class="random">

    <div class="burgers">
        <div class="line1" style="margin-top: 4px; height:2px"></div>
        <div class="line1"></div>
        <div class="line1"></div>
    </div>
    <a class="navbar-brand" href="#">
        <i class="fas fa-stethoscope" style="width:30 ;height:30 ;color:rgb(17, 245, 207)"></i>
        Hospital Management
    </a>

    <ul class="nav_links">

        <a href="#">
            <li class="work">HOME</li>
        </a>
        <a href="#">
            <li class="work">ABOUT US</li>
        </a>
        <a href="#">
            <li class="work">SPECIALITIES</li>
        </a>
        <a href="#">
            <li class="work">FOR PATIENTS</li>
        </a>
        <a href="#">
            <li class="work">FOR DOCTOR</li>
        </a>
        <div class="dropdown-container" >
            <a href="#">
                <li class="work"> <i class="fas fa-caret-down"></i> Login Process</li>
            </a>
<c:choose>
<c:when test = "${user ==  null}">
            <div class="dropdown-content" >
                <a href="${pageContext.request.contextPath}/user/adduser">
                    <li class="hov">  Account Login</li>
                </a>
                <a href="#">
                    <li class="hov"> CONTACT US</li>
                </a>
                <a href="#">
                    <li class="hov"> FUNDS & DONATION</li>
                </a>
            </div>
            </c:when>
            <c:otherwise>
                <li class="work" style="color: #4b2f2f;font-weight: bold">Welcome ${user}</li>
            </c:otherwise>
</c:choose>

        </div>

    </ul>
</nav>

<!--Navbar Ends Here-->

<div class="carousel">
    <div class="owl-carousel owl-theme">

        <div class="item" > <img src="https://www.evercarebd.com/wp-content/uploads/2020/04/1.jpg"></div>
        <div class="item" > <img src="https://www.evercarebd.com/wp-content/uploads/2020/04/2.jpg"></div>
        <div class="item" > <img src="https://www.evercarebd.com/wp-content/uploads/2021/04/1590X380-Evercare-CTG-NOW-Open.jpg"></div>

    </div>
</div>

<!--Carousel Ends-->

<!-- Middle Part-->

<div class="row">

    <!--Common Work-->
    <div class="notice">
        <marquee>The project is under  maintainance. Responsiveness is not taken care of.  Pictures are taken from
            Evercare Hospital Website.
        </marquee>
    </div>

    <div class="wrapper">
        <div class="button">
            <div class="icon">
                <i class="fab fa-facebook-f"></i>
            </div>
            <span class="wrap"  style="margin-left: 20px; margin-bottom:40px;">FACEBOOK</span>
        </div>
        <div class="button">
            <div class="icon">
                <i class="fab fa-twitter"></i>
            </div>
            <span class="wrap"  style="margin-left: 20px; margin-bottom:40px;">TWITTER</span>
        </div>
        <div class="button">
            <div class="icon">
                <i class="fab fa-instagram"></i>
            </div>
            <span class="wrap"  style="margin-left: 20px; margin-bottom:40px;">INSTAGRAM</span>
        </div>
        <div class="button">
            <div class="icon">
                <i class="fab fa-github"></i>
            </div>
            <span class="wrap"  style="margin-left: 20px; margin-bottom:40px;">GITHUB</span>
        </div>

        <div class="button">
            <div class="icon">
                <i class="fas fa-search"></i>
            </div>
            <span class="wrap" style="margin-left: 20px; ">
            <input type="text" id="lname" name="lname" style="border-radius:20px; width:84%;height:65%">
          </span>
        </div>
    </div>
</div>

<!--common work-->

<a href="${pageContext.request.contextPath}/user/gethospitals">
<div class="row2">

    <div class="col21">
        <button class="buttons checkwork1">
            <div class="icon">
                <i class="fas fa-stethoscope"></i>
            </div>
            <span>Look for Hospital </span>
        </button>
    </div>
</a>

    <form action="/getHospitals">
        <!-- check hospital modal-->
        <div class="modal-bgwork1">
            <div class="modalwork1">

                <h2 style="margin-top: 5%;">PROVIDE INFORMATION TO CHECK HOSPITAL REQUEST STATUS</h2>
                <label for="name" > Provide Mobile Number </label>
                <input class="placeholder1"  name="number" placeholder=" +880**********" required>
                <div class="button-handle">
                    <input class="modal-closepart8" type="submit" value="Request for process">

                    <button class="modal-close8"> Close The Tab</button>
                </div>
            </div>
        </div>
    </form>

    <div class="col22">
        <button class="buttons checkwork2">
            <div class="icon">
                <i class="fas fa-user-nurse"></i>
            </div>
            <span>Look for doctor </span>
        </button>
    </div>

    <form action="">
        <!-- check doctor Appointment Modal-->
        <div class="modal-bgwork2">
            <div class="modalwork2">

                <h2 style="margin-top: 5%;">PROVIDE INFORMATION TO CHECK DOCTOR APPOINTMENT STATUS</h2>
                <label for="name" > Provide Mobile Number </label>
                <input class="placeholder1"  name="number" placeholder=" +880**********" required>
                <div class="button-handle">
                    <input class="modal-closepart9" type="submit" value="Request for process">

                    <button class="modal-close9 "> Close The Tab</button>
                </div>
            </div>
        </div>
    </form>


    <div class="col24">
        <button class="buttons checkwork4">
            <div class="icon">
                <i class="fas fa-procedures"></i>
            </div>
            <span> Look for Ambulance </span>
        </button>
    </div>

</div>

<form action="index.html">
    <!-- Check Hire Ambulance Modal-->
    <div class="modal-bgwork4">
        <div class="modalwork4">

            <h2 style="margin-top: 5%;">PROVIDE INFORMATION TO CHECK AMBULANCE HIRE STATUS</h2>
            <label for="name" > Provide Mobile Number </label>
            <input class="placeholder1"  name="number" placeholder=" +880**********" required>
            <div class="button-handle">
                <input class="modal-closepart10" type="submit" value="Request for process">

                <button class="modal-close10"> Close The Tab</button>
            </div>
        </div>
    </div>
</form>


<div class="row4">
    <div class="col21">
        <button class="buttons working">
            <div class="icon">
                <i class="fas fa-clinic-medical"></i>
            </div>
            <span> Admit for Hospital </span>
        </button>
    </div>
    <div class="col22">
        <button class="buttons working2">
            <div class="icon">
                <i class="fas fa-user-md"></i>
            </div>
            <span> Appoint for Doctor </span>
        </button>
    </div>
    <div class="col24">
        <button class="buttons working4">
            <div class="icon">
                <i class="fas fa-ambulance"></i>
            </div>
            <span> Hire Ambulance </span>
        </button>
    </div>
</div>


<!--Common Work-->

<form action="#">
    <!-- Main Modal 1 done-->
    <div class="modal-bg">
        <div class="modal">

            <h2 style="margin-top: 5%;">Admit process</h2>

            <label for="name" > Patient Name </label>
            <input class="placeholder" type="text" name="name">

            <label for="name" > Patient Sickness Detail </label>
            <input class="placeholder" type="text" name="sickness info">

            <label for="name" > Patient Contact No </label>
            <input  class="placeholder" type="text" name="sickness info">

            <label for="name" > Blood Group </label>
            <input  class="placeholder" type="text" name="sickness info">

            <p>Please select your gender</p>
            <div class="radiowork">
                <input class="radiobox"  type="radio" id="male" name="gender" value="male">
                <label  class="radiolabel" for="male">Male</label><br>
                <input class="radiobox"  type="radio" id="female" name="gender" value="female">
                <label class="radiolabel" for="female" >Female</label><br>
                <input class="radiobox"  type="radio" id="other" name="gender" value="other">
                <label class="radiolabel" for="other">Other</label>
            </div>
            <div class="button-handle">
                <button class="modal-closepart"> Request for process</button>
                <button class="modal-close"> Close The Tab</button>
            </div>

        </div>
    </div>
</form>

<!-- internal second modal starts -->
<div class="modal-bgs">
    <div class="modal1">
        <h2 style="margin-top: 5%;"> Wait for confirmation Apply Successful</h2>
        <div class="tickmark">
            <i class="fas fa-check-circle"></i>
        </div>
        <div class="button-handle">
            <button class="modal-closes"> Close The Tab</button>
        </div>

    </div>
</div>

<!--internal second modal ends -->

<!-- Main Modal 1 done-->

<!-- Main modal 2 starts-->
<form action="#">
    <!-- Main Modal 2 starts-->
    <div class="modal-bg2">
        <div class="modal2">

            <h2 style="margin-top: 5%;">Doctor Appointment</h2>

            <label for="name" > Patient Name </label>
            <input class="placeholder" type="text" name="name">

            <label for="name" > Patient Sickness Detail </label>
            <input class="placeholder" type="text" name="sickness info">

            <label for="name" > Patient Contact No </label>
            <input  class="placeholder" type="text" name="sickness info">


            <p>Please select your gender</p>
            <div class="radiowork">
                <input class="radiobox"  type="radio" id="male" name="gender" value="male">
                <label  class="radiolabel" for="male">Male</label><br>
                <input class="radiobox"  type="radio" id="female" name="gender" value="female">
                <label class="radiolabel" for="female" >Female</label><br>
                <input class="radiobox"  type="radio" id="other" name="gender" value="other">
                <label class="radiolabel" for="other">Other</label>
            </div>
            <div class="button-handle">
                <button class="modal-closepart2"> Request for process</button>
                <button class="modal-close2"> Close The Tab</button>
            </div>

        </div>
    </div>
</form>

<!-- internal second modal starts -->
<div class="modal-bgs2">
    <div class="modal12">
        <h2 style="margin-top: 5%;"> Wait for confirmation Apply Successful</h2>
        <div class="tickmark">
            <i class="fas fa-check-circle"></i>
        </div>
        <div class="button-handle">
            <button class="modal-closes2"> Close The Tab</button>
        </div>

    </div>
</div>

<!--second modal ends -->

<!-- Main Modal 2 done-->

<!-- Main modal 4 starts-->
<form action="#">
    <div class="modal-bg4">
        <div class="modal-4">

            <h2 style="margin-top: 5%;">Hire Ambulance</h2>

            <label for="name" > Patient Name </label>
            <input class="placeholder" type="text" name="name">

            <label for="name" > Patient Sickness Detail </label>
            <input class="placeholder" type="text" name="sickness info">

            <label for="name" > Patient Attendee Contact </label>
            <input  class="placeholder" type="text" name="sickness info">


            <p>Please select your gender</p>
            <div class="radiowork">
                <input class="radiobox"  type="radio" id="male" name="gender" value="male">
                <label  class="radiolabel" for="male">Male</label><br>
                <input class="radiobox"  type="radio" id="female" name="gender" value="female">
                <label class="radiolabel" for="female" >Female</label><br>
                <input class="radiobox"  type="radio" id="other" name="gender" value="other">
                <label class="radiolabel" for="other">Other</label>
            </div>
            <div class="button-handle">
                <button class="modal-closepart4"> Request for process</button>
                <button class="modal-close4"> Close The Tab</button>
            </div>

        </div>
    </div>
</form>

<!-- internal second modal starts -->

<div class="modal-bgs4">
    <div class="modal14">
        <h2 style="margin-top: 5%;"> Wait for confirmation Apply Successful</h2>
        <div class="tickmark">
            <i class="fas fa-check-circle"></i>
        </div>
        <div class="button-handle">
            <button class="modal-closes4"> Close The Tab</button>
        </div>

    </div>
</div>

<!--last modal ends -->
<!--Footer starts-->


<div class="footer">
    <div class="container">
        <div class="row">
            <div class="column">
                <p style="margin-top: 1rem; color:rgb(250, 250, 250); font-weight: bolder;"> &copy; Copyright 2018 | All rights reserved. Hospital Management System.
                </p>
                <!--html entities dite "&copy;" use korbo-->
            </div>
            <div class="column colum2">

                <p style="margin-top: 1rem; color:rgb(250, 250, 250); font-weight: bolder">
                    <i class="fab fa-canadian-maple-leaf"></i>
                    Powered by Asif Hasan & Junayed Rahman
                </p>
                <!--html entities dite "&copy;" use korbo-->
            </div>
        </div>

    </div>
</div>
<script src="<c:url value="/resources/js/style.js" />"></script>


<!--footer ends-->
</body>
</html>


