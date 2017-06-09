<%-- 
    Document   : icecream
    Created on : Feb 20, 2016, 3:57:05 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icecream","root","");
    Statement st=con.createStatement();
    
    
    String flavorc=request.getParameter("flavorc");
    if (flavorc!=null){
    st.executeUpdate("insert into cart values('"+session.getAttribute("name")+"','"+flavorc+"')");
    ResultSet rs=st.executeQuery("select price from flavors where flavor like '"+flavorc+"'");
    rs.next();
    int price=rs.getInt(1);
    session.setAttribute("price",(Integer)session.getAttribute("price")+price);
    }
    
    int pageid=0;
    if (session.getAttribute("pageid")==null){
    pageid=1;
    }
    else{
        pageid=(Integer)session.getAttribute("pageid");
    }
    int total=5;  
    String spageid=request.getParameter("pageno");
    if (spageid!=null){
    pageid=Integer.parseInt(spageid);  
    
    if(pageid==1){}  
    else{  
        pageid=pageid-1;  
        pageid=pageid*total+1;  
    }
    session.setAttribute("pageid", pageid);
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
}
else if (flavor==null && spageid==null && flavorc==null)
{
name=request.getParameter("name");
session.setAttribute("name",name);
session.setAttribute("price",0);
session.setAttribute("pageid",1);
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
        <%
            
        ResultSet rs1=st.executeQuery("select * from flavors limit "+(pageid-1)+","+total);
        if(rs1!=null){
         
        while(rs1.next()){
        flavordb=rs1.getString(1);
        out.println(""+flavordb);
        out.println("<a href='icecream.jsp?flavor="+flavordb+"'>Add to WishList</a>");
        out.println("<a href='icecream.jsp?flavorc="+flavordb+"'>Add to Cart</a><br/>");
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
        
                 
                 ResultSet rss1=st.executeQuery("select count(*) from flavors");
            rss1.next();
        int count=Integer.parseInt(rss1.getString(1));
        int pagecount=count/total;
        if (count%total!=0)pagecount++;
        for(int i=0;i<pagecount;i++){
        
        out.println("<a href='icecream.jsp?pageno="+(i+1)+"'>"+(i+1)+"</a>");
        
        }
        %>
        <br/>
        <%out.println("<a href='cart.jsp?name="+session.getAttribute("name")+"'>Click Here To View Your Order</a><br/>");%>
        <a href="minus.jsp">Click Here To View Your WishList</a><br/>
        <a href="index.html">HOME PAGE</a>
    </body>
</html>
