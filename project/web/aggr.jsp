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
select distinct user.userID, user.name, 
	   (select distinct count(directComment) from comment where user.userID = comment.userID) as NumofComments
from comment
inner join user on comment.userID = user.userID
order by NumofComments desc
limit 20;
</sql:query>

<table border="1">
<tr>
   <th>User ID</th>
   <th>Name</th>
   <th>Number of Comments</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.userID}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.NumofComments}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>