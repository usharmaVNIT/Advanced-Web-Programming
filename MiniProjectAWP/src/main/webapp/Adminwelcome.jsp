<%-- 
    Document   : Adminwelcome
    Created on : 15 Jun 2020, 15:13:57
    Author     : Official
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uname = (String)session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Welcome</title>
    </head>
    <body>
        <h1 align="center">Welcome <%=uname%></h1>
        
        <h2 align ="center">Please Select From Below</h2>
        
        <table border ="2" align="center">
            <thead>
            <th>Database Name</th>
            <th>Action</th>
            </thead>
            <tr>
                <td>User</td>
                <td><a href="userdel.jsp"><button>Modify</button></a></td>
            </tr>
            <tr>
                <td>Hotels</td>
                <td><a href="Hotelmodify.jsp"><button>Modify</button></a></td>
            </tr>
            <tr>
                <td>Flights</td>
                <td><a href="Flightdeladd.jsp"><button>Modify</button></a></td>
            </tr>
        </table>
    </body>
</html>
