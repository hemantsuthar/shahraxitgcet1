<%-- 
    Document   : cart
    Created on : Jun 9, 2017, 4:24:36 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icecream","root","");
    Statement st=con.createStatement();
    String name=request.getParameter("name");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART</title>
    </head>
    <body>
        <h1>Your Products :</h1>
        <table>
        <%
        //String id=session.getId();
        ResultSet rs=st.executeQuery("select * from cart where name like '"+name+"'");
        while(rs.next()){
        %>
            <tr><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getString(2));%></td></tr>
        <%}
        %>
        </table>
        <%
        session.invalidate();
        %>
        <a href="index.html">HOME PAGE</a>
    </body>
</html>
