<%-- 
    Document   : calculatriangulo
    Created on : 18-ene-2021, 19:43:00
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Area triangulo</h1>
        <%--@page import="clases.triangulo" --%>
        <jsp:useBean id="miTriangulo" class="clases.triangulo"/>
        
        <%
            float base=Float.parseFloat(request.getParameter("base"));
            float altura=Float.parseFloat(request.getParameter("altura"));
            //triangulo miTriangulo=new triangulo();
        %>
        <jsp:setProperty name="miTriangulo" property="altura" value="<%=altura%>"/>
        <jsp:setProperty name="miTriangulo" property="base" value="<%=base%>"/>    
            miTriangulo.setAltura(altura);
            miTriangulo.setBase(base);
        
            <h2>Base: <jsp:getProperty name="miTriangulo" property="base"/></h2>
            <h2>Altura: <jsp:getProperty name="miTriangulo" property="altura"/></h2>
            <h2>Area: <jsp:getProperty name="miTriangulo" property="area"/></h2>
    </body>
</html>
