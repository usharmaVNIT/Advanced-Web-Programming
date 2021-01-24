<%-- 
    Document   : userdel
    Created on : 14 Jun 2020, 20:30:10
    Author     : Official
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MINIProject","root","Rootuser");
    String query = "SELECT * FROM Hotels";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    String uname = (String)session.getAttribute("username");
    %>
    
    
    
    
    
    <!DOCTYPE html>
<html lang="en">
<head>
	<title>Hotel Modify</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Table/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Table/css/util.css">
	<link rel="stylesheet" type="text/css" href="Table/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
            <h2 align="center"><%=uname%></h2>
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th>Hotel I.D</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th><th></th><th></th><th></th><th></th><th></th>
                                                                    <th>Name</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th>Description</th>
                                                                    <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
                                                                    <th></th><th></th><th></th><th></th><th>Luxury</th><th></th><th></th><th></th>
                                                                    <th>Semi-Luxury</th>
                                                                    <th>Normal</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
            <%
                        while(rs.next()){

            %>
                        <tr class="row100 body">
                            <td class="cell100 column1"><%=rs.getString("imageid")%></td>
                            <td class="cell100 column1"><%=rs.getString("name")%></td>
                            <td class="cell100 column1"><%=rs.getString("description")%></td>
                            <td class="cell100 column1"><%=rs.getString("Luxury")%></td>
                            <td class="cell100 column1"><%=rs.getString("SemiLuxury")%></td>
                            <td class="cell100 column1"><%=rs.getString("Normal")%></td>
                        </tr>
                        <%}%>
							</tbody>
						</table>
                                                         <form method="get" action="Hotelchange">
                                                            <table border="1">
                                                                <tr class="row100 body">
                                                                    <td class="cell100 column1"><label>Hotel Id :</label> </td> <td class="cell100 column1"> <input type="text" name="tableid"></td>
                                                                </tr>
                                                                <tr class="row100 body"><td class="cell100 column1"><label>New Description :</label> </td> <td class="cell100 column1"> <input type="text" name="description" required=""></td></tr>
                                                                <tr class="row100 body"><td class="cell100 column1"> <label>Luxury Price :</label></td> <td class="cell100 column1"> <input type="text" name="luxury" required=""></td></tr>
                                                                <tr class="row100 body"><td class="cell100 column1"><label>Semi-Luxury Price :</label>  </td><td class="cell100 column1"><input type="text" name="Semi" required=""> </td></tr>
                                                                <tr class="row100 body"><td class="cell100 column1"><label>Normal Price :</label>  </td><td class="cell100 column1"><input type="text" name="normal" required=""> </td></tr>
                                                                <tr class="row100 body"><td class="cell100 column1"><input type="submit" value="Change"></td></tr>
                                                            </table>
                                                            </form>
					</div>
				</div>
			</div>
		</div>
	</div>
              
                                                        <div class="container-table100">

                                                            
                                                        </div>


<!--===============================================================================================-->	
	<script src="Table/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Table/vendor/bootstrap/js/popper.js"></script>
	<script src="Table/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Table/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Table/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="Table/js/main.js"></script>

</body>
</html>
    