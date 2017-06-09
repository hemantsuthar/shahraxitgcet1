<%-- 
    Document   : icecream
    Created on : Feb 20, 2016, 3:57:05 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icecream","root","");
    Statement st=con.createStatement();
    
    String spageid=request.getParameter("pageno");  
    int pageid=Integer.parseInt(spageid);  
    int total=5;  
    if(pageid==1){}  
    else{  
        pageid=pageid-1;  
        pageid=pageid*total+1;  
    }  
    
    String name;
    String flavordb;
String flavor=request.getParameter("flavor");
if(flavor!=null){

ResultSet rs=st.executeQuery("select price from flavors where flavor like '"+flavor+"'");
rs.next();
int price=rs.getInt(1);
String id=session.getId();
st.executeUpdate("insert into items values('"+id+"','"+flavor+"','"+price+"')");
session.setAttribute("price",(Integer)session.getAttribute("price")+price);
}
else
{
name=request.getParameter("name");
session.setAttribute("name",name);
session.setAttribute("price",0);  
//st.executeUpdate("delete from items where 1");
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ice cream</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <%
        
        out.println("<p>HELLO WORLD! "+(String)session.getAttribute("name")+"</p>");
        %>
        <p>Select the ice cream</p>
        <table>
        <%
        ResultSet rs1=st.executeQuery("select * from flavors limit "+(pageid-1)+","+total);
        if(rs1!=null){
         
        while(rs1.next()){
        flavordb=rs1.getString(1);%><tr><td><%
        out.println("<a href='icecream.jsp?flavor="+flavordb+"'>"+flavordb+"</a><br>");
        %>
        <td><tr>
                <%
       /* <a href="icecream.jsp?flavor=chocolate">Chocolate</a><br>
        <a href="icecream.jsp?flavor=strawberry">Strawberry</a> */
        
        }}
        else
{
out.println("DATABASE EMPTY");
}
        %>
        <%
                 out.println("<p>TOTAL OUTSTANDING "+session.getAttribute("price")+"</p>");
        %>
        </table>
        <%
            ResultSet rss1=st.executeQuery("select count(*) from flavors");
            rss1.next();
        int count=Integer.parseInt(rss1.getString(1));
        int pagecount=count/total;
        if (count%total!=0)pagecount++;
        for(int i=0;i<pagecount;i++){
        
        out.println("<a href='icecream.jsp?pageno="+(i+1)+"'>"+(i+1)+"</a>");
        
        }
        

        %>
        <a href="minus.jsp">Click Here To View Your Order</a><br>
        <a href="index.html">HOME PAGE</a>
    </body>
</html>
