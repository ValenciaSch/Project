<%-- 
    Document   : all
    Created on : Jun 8, 2015, 11:12:23 PM
    Author     : A
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${shop}" var="shop1">
            <div>${shop1.Name} - ${shop1.Price}</div>
        </c:forEach>
    </body>
</html>
