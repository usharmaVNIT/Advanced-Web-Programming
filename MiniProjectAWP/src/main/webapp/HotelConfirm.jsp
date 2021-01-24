<%-- 
    Document   : HotelConfirm
    Created on : 13 Jun 2020, 22:56:58
    Author     : Official
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String hname = (String)session.getAttribute("hname");
    String room = request.getParameter("room");
    String[] ri = room.split(",");
    String cidate = request.getParameter("cidate");
    String codate = request.getParameter("codate");
    String ppl = request.getParameter("people");
    String uname = (String)session.getAttribute("username");
    String[] ci = cidate.split("/");
    String[] co = codate.split("/");
    int nodays = ((Integer.parseInt(co[0]) - Integer.parseInt(ci[0]))*30 +(Integer.parseInt(co[1])-Integer.parseInt(ci[1])+1) + (Integer.parseInt(co[2])-Integer.parseInt(ci[2]))*365);
    int pr = Integer.parseInt(ri[1]);
    int pt = pr*nodays;
    %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Hotel Confirm</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <link href="CSS/Introduction.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">AWP Mini Project</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href=""><%=uname%></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">Please Confirm your Booking.</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">Hotel Name : <%=hname%></p>
                        <p class="text-white-75 font-weight-light mb-5">Check in date : <%=cidate%></p>
                        <p class="text-white-75 font-weight-light mb-5">Check out date : <%=codate%></p>
                        <p class="text-white-75 font-weight-light mb-5">Guests : <%=ppl%></p>
                        <p class="text-white-75 font-weight-light mb-5">Room : <%=ri[0]%></p>
                        <p class="text-white-75 font-weight-light mb-5">Total Price : <%=pt%> , { <%=ri[1]%>/day(night) }</p>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="payment/payment.jsp?totalprice=<%=pt%>">Confirm</a>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="HotelWelcomeRegisteredjstl.jsp">Cancel</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container"><div class="small text-center text-muted">Copyright © 2020 BT18CSE021 AND TEAM </div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="Javascript/IntroductionScript.js" type="text/javascript"></script>
    </body>
</html>
