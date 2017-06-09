<%-- 
    Document   : manager
    Created on : Feb 22, 2016, 7:31:28 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icecream","root","");
    Statement st=con.createStatement();
    
    String flavor=request.getParameter("flavor1");
    String price=request.getParameter("price1");
    int prc=0;
    if(price!=null){
    prc=Integer.parseInt(price);}
    
    if(flavor!=null && price!=null){
    st.executeUpdate("insert into flavors values('"+flavor+"','"+prc+"')");
    }
    else
    {
    out.println("FILL IN");
    }
    //st.executeUpdate("insert into items values('"+flavor+"','"+price+"')");
 %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! Manager</h1>
        <form method="get" action="manager.jsp">
           <table>
               <tr><td>Enter Flavor</td><td><input type="text" name="flavor1"></td></tr>
               <tr><td>Enter Price</td><td><input type="text" name="price1"></td></tr>
               <tr><td></td><td><input type="Submit" value="add"></td></tr>
        <tr><td></td><td><a href="index.html">HOME PAGE</a></td></tr>
           </table>
        </form>
    </body>
</html>
