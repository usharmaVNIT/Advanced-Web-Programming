<%-- 
    Document   : HotelWelcomeNotRegistered
    Created on : 12 Jun 2020, 00:22:44
    Author     : Official
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MINIProject","root","Rootuser");
    String query = "SELECT * FROM Hotels";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    String username=(String)session.getAttribute("usernamename");
    int i=0;
    %>
    
    
<html>
<head>
    <title>Hotel Welcome</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
      
 
      body {
        background-image: url("Backgrounds/hotbacnotr.jpg");
        background-size: cover;
      }

      
  </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="#">AWP Mini Project</a>
        <form class="form-inline" action="">
          <input class="form-control mr-sm-2" type="text" placeholder="Enter a hotel name">
          <button class="btn btn-success" type="submit">SEARCH</button>
        </form>
    </nav>
    <br>
    
    <div class="container">
        <br>
        <center><h1>LUXURY STAY</h1></center>
        </br>
        <div class="card-deck">
        <%
            while(rs.next()){
                String name = rs.getString("Name");
                int imid = rs.getInt("imageid");
                String imurl = "HotelImages/"+imid+".jpeg";
                String desc = rs.getString("Description");
                int p1,p2,p3;
                p1 = rs.getInt("Luxury");
                p2 = rs.getInt("SemiLuxury");
                p3 = rs.getInt("Normal");
                int avg = (p1+p2+p3)/3;
                
        %>
        <div class="card">
          <div class="card-body text-center">
          <img class="card-img-top" src="<%=imurl%>" alt="<%=name%>" style="width:100%">
          <br>
          <br>
            <h4 class="card-title"><%=name%></h4>
            <a href="RestrictedHotels" class="btn btn-dark stretched-link">BOOK</a>
            <br>
            <br>
            <i class="fas fa-heart"></i>
            <i class="fas fa-heart"></i>
            <i class="fas fa-heart"></i>
            <i class="fas fa-heart"></i>
            <i class="fas fa-heart"></i>
          </div>
        </div>
        <%if((i+1)%3==0){
            out.println("</div>");
            out.print("<br>");
            out.println("<div class=\"card-deck\">");
        }
          i+=1;  }%>

    </div>
    <br>
    <table class="table table-dark">
      <thead>
        <tr>
          <th></th>
          <th>AMENITIES</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Pool</td>
          <td>Wifi</td>
          <td>Laundry</td>
        </tr>
        <tr>
          <td>Club</td>
          <td>Bar</td>
          <td>Gaming zone</td>
        </tr>
        <tr>
          <td>Private Suit</td>
          <td>Helipad</td>
          <td>24*7 Room Service</td>
        </tr>
      </tbody>
    </table>
  </body>
  </html>