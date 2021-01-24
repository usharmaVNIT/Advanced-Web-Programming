<%-- 
    Document   : FlightConfirm
    Created on : 13 Jun 2020, 20:52:48
    Author     : Official
--%>
<%

    String uname = (String)session.getAttribute("username");
    String fname = request.getParameter("fname");
    String nochild = (String)session.getAttribute("nochild");
    String noadult = (String)session.getAttribute("noadult");
    String oneway = (String)session.getAttribute("oneway");
    String depdate = (String)session.getAttribute("depdate");
    String des = (String)session.getAttribute("des");
    String dep = (String)session.getAttribute("dep");
    String ttype = (String)session.getAttribute("ttype");
    String retdate = null;
    String deptime = request.getParameter("deptime");
    String rettime= null;
    String ppt = request.getParameter("ppt");
    String totald = request.getParameter("totald");
    String totalr=null;
    String pptret=null;
    int nop=Integer.parseInt(nochild) + Integer.parseInt(noadult);
    int tpd = Integer.parseInt(totald)*nop;

    String cnfmurl = "payment/payment.jsp?totalprice="+tpd;
    if(oneway.equals("false")){
        retdate = (String)session.getAttribute("retdate");
        rettime = request.getParameter("rettime");
        pptret = request.getParameter("pptret");
        totalr = request.getParameter("totalr");
        int tpr = Integer.parseInt(totalr)*nop;
        cnfmurl = "payment/payment.jsp?totalprice="+(tpd+tpr);
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Flight Confirm</title>
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
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Site Name</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
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
                        <h1 class="text-uppercase text-white font-weight-bold">Please Confirm your order.</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <%
                            if(oneway.equals("true")){
                        %>
                        <p class="text-white-75 font-weight-light mb-5">Your Flight is one way</p>
                        <p class="text-white-75 font-weight-light mb-5">Your Flight name is : <%=fname%></p>
                        <p class="text-white-75 font-weight-light mb-5">Your Departure City is : <%=dep%>, Time is <%=deptime%> and Date = <%=depdate%></p>
                        <p class="text-white-75 font-weight-light mb-5">Number of Adults :<%=noadult%> , Number of Children : <%=nochild%></p>
                        <p class="text-white-75 font-weight-light mb-5">Your Ticket class : <%=ttype%></p>
                        <p class="text-white-75 font-weight-light mb-5">Price per ticket : <%=ppt%> Rs.</p>
                        <p class="text-white-75 font-weight-light mb-5">Total Price : <%=totald%> Rs.</p>
                        <%}else{%>
                        <p class="text-white-75 font-weight-light mb-5">Your Flight is Round Trip and Your Flight name is : <%=fname%></p>
                        <p class="text-white-75 font-weight-light mb-5">Your Departure City is : <%=dep%>, Date is : <%=depdate%> and Time is <%=deptime%></p>
                        <p class="text-white-75 font-weight-light mb-5">Your Return City is : <%=des%>, Date is : <%=retdate%> and Time is <%=rettime%></p>
                        <p class="text-white-75 font-weight-light mb-5">Number of Adults :<%=noadult%> , Number of Children : <%=nochild%></p>
                        <p class="text-white-75 font-weight-light mb-5">Your Ticket class : <%=ttype%></p>
                        <p class="text-white-75 font-weight-light mb-5">Price/ticket(Departure): <%=ppt%> and Price/ticket(Return): <%=pptret%></p>
                        <p class="text-white-75 font-weight-light mb-5">Total Price Departure: <%=totald%> and Total Price Return: <%=totalr%></p>
                        <p class="text-white-75 font-weight-light mb-5"></p>
                        <p class="text-white-75 font-weight-light mb-5"></p>
                        <%
                            }
                        %>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="<%=cnfmurl%>">Confirm</a>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="Flight Welcome/FlightWelcome.jsp">Cancel</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        
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
