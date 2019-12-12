<%-- 
    Document   : aggr1
    Created on : Dec 6, 2019, 3:48:30 AM
    Author     : zakia
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
 
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="EaglePride123~"/>
 
<sql:query dataSource="${snapshot}" var="result1">
select distinct customer.name, 
	(select distinct count(*) from billing where billing.articleID = article.articleID and dateOfBill = '2019-09-22') as mostSales 
from customer
inner join article on article.customerID = customer.customerID
order by mostSales desc
limit 10
</sql:query>
 
</table>
<table border="1">
<tr>
   <th>Name</th>
   <th>Most Sales</th>
</tr>
<c:forEach var="row" items="${result1.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.mostSales}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>