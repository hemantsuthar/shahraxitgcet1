<%-- 
    Document   : who
    Created on : Feb 22, 2016, 7:19:46 PM
    Author     : NICE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        //ut.println(request.getParameter("name1"));
        String name=request.getParameter("name1");
        
        RequestDispatcher rd;
        if(name.equals("Customer")){
            out.println("Hello");
        rd=request.getRequestDispatcher("icecream.jsp");
        }
        else{
        rd=request.getRequestDispatcher("manager.jsp");
        }
        rd.forward(request, response);
        %>
    </body>
</html>
