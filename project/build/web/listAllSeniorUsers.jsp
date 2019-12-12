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
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from senioruser order by customerID asc;
</sql:query>
 
<table border="1">
<tr>
   <th>Senior User ID</th>
   <th>Company ID</th>
 
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.seniorUserID}"/></td>
   <td><c:out value="${row.customerID}"/></td>
 
</tr>
</c:forEach>
</table>
 
</body>
</html>