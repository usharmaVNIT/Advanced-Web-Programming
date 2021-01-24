<%-- 
    Document   : Flightbooking
    Created on : 13 Jun 2020, 15:09:56
    Author     : Official
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>






<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MINIProject","root","Rootuser");
    String query = "SELECT * FROM Flights";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    String username=(String)session.getAttribute("username");
    String oneway=request.getParameter("oneway");
    String dep = request.getParameter("depcity");
    String des= request.getParameter("descity");
    String depdate= request.getParameter("depdate");
    String retdate=null;
    String ttype= request.getParameter("tickettype");
    String noadult= request.getParameter("quantityTicketadult");
    String nochild= request.getParameter("quantityTicketchild");
    if(oneway.equals("false")){    
        retdate = request.getParameter("retdate");
        session.setAttribute("retdate", retdate);
    }
    session.setAttribute("nochild",nochild);
    session.setAttribute("noadult",noadult);
    session.setAttribute("des",des);
    session.setAttribute("depdate", depdate);
    session.setAttribute("dep",dep);
    session.setAttribute("oneway",oneway);
    session.setAttribute("ttype", ttype);
    

%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Flights Booking</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  </head>
  <body style="background : url(../Backgrounds/flightregback.jpg) no-repeat center center fixed;
        background-size: cover">
      <header>
          <nav class="navbar navbar-inverse" style="position: fixed;
  top: 0;
  width: 100%;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">AWP PROJECT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="../Introduction.html#about">About</a></li>
        <li><a href="../Introduction.html#contact">Contact</a></li>
        <li><a href="#">Feed Back</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=username%></a></li>
      </ul>
    </div>
  </div>
</nav>
        </header>
      <div align="center" style="padding: 50px;">
          <h2>Please Select your Flight operator</h2>
          <section class="hero-section" style="background: transparent">
              <div class="card-grid">
                  <%
                      while(rs.next()){
                          String fname = rs.getString("Name");
                          String id = rs.getString("id");
                          int pricedep = Math.abs(dep.hashCode()-des.hashCode())%1000 + (int)Math.random()*(1000) + 5000;
                          int totaldep = pricedep*(Integer.parseInt(noadult)) + pricedep*(Integer.parseInt(nochild));
                          int priceret=0;
                          int totalret=0;
                          if(oneway.equals("false")){
                              priceret = pricedep + (int)(Math.random()*8000) - 3000;
                              totalret = priceret*(Integer.parseInt(noadult)) + priceret*(Integer.parseInt(nochild));
                          }
                          int hr = (int)(Math.random()*24);
                          int min = (int)(Math.random()*60);
                          String deptime=hr+":"+min;
                          int hrret =(int)(Math.random()*24);
                          int minret = (int)(Math.random()*60);
                          String rettime = hrret+":"+minret;

                            String hreftrue = "../FlightConfirm.jsp?fname="+fname+"&deptime="+deptime+"&ppt="+pricedep+"&totald="+totaldep;
                            String hreffalse= "../FlightConfirm.jsp?fname="+fname+"&deptime="+deptime+"&ppt="+pricedep+"&totald="+totaldep+"&rettime="+rettime+"&pptret="+priceret+"&totalr="+totalret;

                  %>
                  
                      <%
                          if(oneway.equals("false")){
                      %>
                      <a class="card" href="<%=hreffalse%>" style="text-decoration: none;
                     background-color: lightblue;">
                  <div class="card__background" style="background-image: url(flightimages/<%=id%>.png);
                       background-repeat:no-repeat;background-size:auto;"></div>
                  <div class="card__content">
                    <p class="card__category">Flight</p>
                    <h3 class="card__heading"><%=fname%></h3>
                  </div>
                  <div class="card__details" style="text-decoration: none;color: red
                       ">
                      <p class="card__category" style="color:red;">Route : <%=dep%> ---> <%=des%></p>
                      <p class="card__category" style="color:red;">Date : <%=depdate%> , Time : <%=hr%>:<%=min%></p>
                      <p class="card__category" style="color:red;">Price : <%=pricedep%> (<%=ttype%>)</p>
                      <p class="card__category" style="color:red;">Total : <%=totaldep%></p>
                      <p class="card__category" style="color:red;">Route : <%=dep%> <--- <%=des%></p>
                      <p class="card__category" style="color:red;">Date : <%=retdate%> , Time : <%=hrret%>:<%=minret%></p>
                      <p class="card__category" style="color:red;">Price : <%=priceret%> (<%=ttype%>)</p>
                      <p class="card__category" style="color:red;">Total : <%=totalret%></p>
                      
                      </div>
                </a>
                      <%}else{
                      %>
                      <a class="card" href="<%=hreftrue%>" style="text-decoration: none;
                     background-color: lightblue;">
                  <div class="card__background" style="background-image: url(flightimages/<%=id%>.png);
                       background-repeat:no-repeat;background-size:auto;"></div>
                  <div class="card__content">
                    <p class="card__category">Flight</p>
                    <h3 class="card__heading"><%=fname%></h3>
                  </div>
                  <div class="card__details" style="text-decoration: none;color: red
                       ">
                      <p class="card__category" style="color:red;">Route : <%=dep%> ---> <%=des%></p>
                      <p class="card__category" style="color:red;">Date : <%=depdate%> , Time : <%=hr%>:<%=min%></p>
                      <p class="card__category" style="color:red;">Price : <%=pricedep%> (<%=ttype%>)</p>
                      <p class="card__category" style="color:red;">Total : <%=totaldep%></p>
                      </div>
                </a>
                      
                      <%}%>
                     
                <%}%>
              <div>
            </section>
           </div>
  <footer>
      <div>Copyright &copy 2020 . All Rights reserved for BT18CSE021 and Team</div>
  </footer>
  </body>
</html>
