<%-- 
    Document   : minus
    Created on : Feb 20, 2016, 4:46:55 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icecream","root","");
    Statement st=con.createStatement();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>minus</title>
    </head>
    <body>
        <h1>Your Products :</h1>
        <table>
        <%
        String id=session.getId();
        ResultSet rs=st.executeQuery("select * from items where id like '"+id+"'");
        while(rs.next()){
        %>
            <tr><td><%out.println(rs.getString(2));%></td><td><%out.println(rs.getInt(3));%></td></tr>
        <%}
        %>
        </table>
        <%
        session.invalidate();
        %>
        <a href="index.html">HOME PAGE</a>
    </body>
</html>
