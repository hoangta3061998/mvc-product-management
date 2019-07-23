<%--
  Created by IntelliJ IDEA.
  User: nguyenxuanhoang
  Date: 2019-07-23
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search product</title>
</head>
<body>
<p>
    <a href="/products">Back to product list</a>
</p>
<h5>Enter product name</h5>
<form method="post">
    <input type="text" name="searchName" id="searchName">
    <input type="submit" value="Search">
</form>
<c:if test='${requestScope["product"] != null}'>
    <table>
        <tr>
            <td>Name:</td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <td>Company:</td>
            <td>${requestScope["product"].getCompany()}</td>
        </tr>
    </table>
</c:if>
</body>
</html>
