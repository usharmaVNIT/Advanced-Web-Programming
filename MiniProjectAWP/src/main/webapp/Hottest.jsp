<%-- 
    Document   : FlightsWelcome
    Created on : 4 Jun 2020, 21:18:18
    Author     : Official
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.lang.Exception"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.PreparedStatement"%>

<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MINIProject","root","Rootuser");
    String query = "SELECT * FROM Hotels";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query); 
    String username=(String)session.getAttribute("username");  
    %>

<!DOCTYPE html>
<html>
    <head>
        <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
	<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
	<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/ryanparag/pen/LLrVbo?depth=everything&order=popularity&page=10&q=movie&show_forks=false" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link href="CSS/hotelcards.css" rel="stylesheet" type="text/css"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-inverse">
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
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Feed Back</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=username%></a></li>
      </ul>
    </div>
  </div>
</nav>
        </header>
        <h1 align ="center" style="color:white">Hotels Names</h1>
        <div class ="maindiv">
        <%
            while(rs.next()){
                String name = rs.getString("Name");
                int imid = rs.getInt("imageid");
                String imurl = "HotelImages/"+imid+".jpeg";
                String desc = rs.getString("Description");
                int p1,p2,p3;
                p1 = rs.getInt("Luxury");
                p2 = rs.getInt("Semi-Luxury");
                p3 = rs.getInt("Normal");
                int avg = (p1+p2+p3)/3;
        %>
        <div class="Hotel-card">
            <div class="Hotel-header" style="background : url('<%=imurl%>');background-repeat: no-repeat;background-size: cover;
                 background-position: center;">
            </div>
            <div class="Hotel-content">
                <div class="Hotel-content-header">
                    <h3 class="Hotel-title" align="center"><a href="querydisplay.jsp?name=<%=name%>"><%=name%></a></h3>
                </div>
                <div class="info-section">
                    <div class="Hotel-info">
                    <label> Description </label>
                    <span>
                        <%=desc%>
                    </span>
                </div>
                <div class="info-section">
                    <label>Avg. Cost per Night</label>
                    <span> <%=avg%> Rs.</span>
                </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
        </div>
    </body>
</html>
