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
select distinct user.userID, user.name, 
	   (select distinct count(*) from comment where user.userID = comment.userID and likeDislike = true) as likes,
       (select distinct count(*) from comment where user.userID = comment.userID and likeDislike = false) as dislike
from comment
inner join user on comment.userID = user.userID
order by likes desc, dislike desc
limit 20;
</sql:query>
 
</table>
<table border="1">
<tr>
   <th>User ID</th>
   <th>Name</th>
   <th>Like</th>
   <th>Dislike</th>
</tr>
<c:forEach var="row" items="${result1.rows}">
<tr>
   <td><c:out value="${row.userID}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.likes}"/></td>
   <td><c:out value="${row.dislike}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>