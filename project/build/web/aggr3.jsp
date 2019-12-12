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
	(select distinct count(*) from comment where comment.articleID = article.articleID) as commentReqs 
from customer
inner join article on article.customerID = customer.customerID
order by commentReqs desc
limit 10
</sql:query>
 
</table>
<table border="1">
<tr>
   <th>Name</th>
   <th>Comment Requests</th>
</tr>
<c:forEach var="row" items="${result1.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.commentReqs}"/></td>
</tr>
</c:forEach>
</table>
 
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Name', 'Comment Requests'],
          ['The Plain Dealer', 2],
          ['The Vindicator', 2],
          ['Daily Mail', 2],
          ['The Mercury News', 3],
          ['The Boston Globe', 1],
          ['Star Struck', 1],
          ['The Sun', 1],
          ['Washington Paper', 1],
          ['The Times of India', 1]
        ]);

        var options = {
          title: 'Bar Chart',
          width: 950,
          legend: { position: 'none' },
          chart: { title: 'Bar chart of the data',
                   subtitle: 'Comment requests by customer names' },
          bars: 'verticle', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'bottom', label: 'Name'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
    </script>
  </head>
<div id="top_x_div" style="width: 900px; height: 500px;"></div>
</body>
</html>
  