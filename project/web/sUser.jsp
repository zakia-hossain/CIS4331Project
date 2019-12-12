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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>

        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="EaglePride123~"/>

        <sql:query dataSource="${snapshot}" var="result">
            select commentID, userID, seniorUserID, articleID, comment.customerID, directComment, reply from
            comment 
            inner join senioruser
            on senioruser.customerID = comment.customerID
            where comment.flag = true and senioruser.customerID = ${param.customerID} and seniorUserID = ${param.seniorUserID};
        </sql:query>

        <table border="1">
            <tr>
                <th>Comment ID</th>
                <th>User ID</th>
                <th>Senior User ID</th>
                <th>Article ID</th>
                <th>Customer ID</th>
                <th>Comment by User on the Article</th>
                <th>User Responses to Comments</th>
                <th>Mark as Derogatory?</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.commentID}"/></td>
                    <td><c:out value="${row.userID}"/></td>
                    <td><c:out value="${row.seniorUserID}"/></td>
                    <td><c:out value="${row.articleID}"/></td>
                    <td><c:out value="${row.customerID}"/></td>
                    <td><c:out value="${row.directComment}"/></td>
                    <td><c:out value="${row.reply}"/></td>
                    <c:if test= "${button.value == YES}">
                        <sql:update dataSource="${snapshot}" var="temp">
                            UPDATE comment SET derogatory = true where commentID = "${row.commentID}"
                        </sql:update>
                    </c:if>
                    <td>
                        <form name="der" method = "POST">
                            &nbsp;
                            <input type = "checkbox" name="no" value="NO" onclick="msgNo1()"/> NO
                            &nbsp;&nbsp;
                            <input type = "checkbox" name="yes" value="YES" onclick="msgNo2()" /> YES
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
            <br>
            <input type = "submit" value = "Submit" />

        <script>
            function msgNo1() {
                alert("Not a derogatory comment. ");
            }

            function msgNo2() {
                alert("Marked as a derogatory comment. ");
            }
        </script>

    </body>
</html>
