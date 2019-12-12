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
        <title>Customer Data Retrieved</title>
    </head>
    <body>

        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/project"
                           user="root"  password="EaglePride123~"/>

        <sql:query dataSource="${snapshot}" var="result">
            select customerID, articleID, title
            from article where customerID = ${param.customerID}
        </sql:query>

        <table border="1">
            <tr>
                <th>Customer ID</th>
                <th>Article ID</th>
                <th>Article Title</th>
                <th>Submit Article for Commenting</th>
            </tr>

            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.customerID}"/></td>
                    <td><c:out value="${row.articleID}"/></td>
                    <td><c:out value="${row.title}"/></td>
                    <c:if test= "${checkbox.value == Open}">
                        <sql:update dataSource="${snapshot}" var="temp">
                            INSERT INTO dummyComments (articleID, directComment, flag) VALUES 
                            (<c:out value="${row.articleID}"/>, 'Open-source 4th generation system engine', false),(<c:out value="${row.articleID}"/>, 'Compatible 24 hour functionalities', false),
                            (<c:out value="${row.articleID}"/>, 'Universal composite service-desk', false),(<c:out value="${row.articleID}"/>, 'Synchronised bottom-line success', false),
                            (<c:out value="${row.articleID}"/>, 'Grass-roots holistic orchestration', false),(<c:out value="${row.articleID}"/>, 'Enhanced homogeneous policy', false),
                            (<c:out value="${row.articleID}"/>, 'Open-architected regional installation', false),(<c:out value="${row.articleID}"/>, 'Universal fault-tolerant groupware', false),
                            (<c:out value="${row.articleID}"/>, 'Open-architected disintermediate customer loyalty', false),(<c:out value="${row.articleID}"/>, 'Triple-buffered disintermediate knowledge base', false),
                            (<c:out value="${row.articleID}"/>, 'Right-sized encompassing framework', false),(<c:out value="${row.articleID}"/>, 'Phased fault-tolerant structure', false),
                            (<c:out value="${row.articleID}"/>, 'Sharable motivating intranet', false),(<c:out value="${row.articleID}"/>, 'Monitored full-range info-mediaries', false),
                            (<c:out value="${row.articleID}"/>, 'Quality-focused client-server focus group', false),(<c:out value="${row.articleID}"/>,'Customizable multi-state groupware', false),
                            (<c:out value="${row.articleID}"/>, 'Customer-focused actuating archive', false),(<c:out value="${row.articleID}"/>, 'Synergistic cohesive application', false),
                            (<c:out value="${row.articleID}"/>, 'Customizable global capacity', false),(<c:out value="${row.articleID}"/>, 'Reactive analyzing migration', false),
                            (<c:out value="${row.articleID}"/>, 'Face to face interactive knowledge base', false),(<c:out value="${row.articleID}"/>, 'Team-oriented zero tolerance framework', false),
                            (<c:out value="${row.articleID}"/>, 'Exclusive multimedia database', false),(<c:out value="${row.articleID}"/>, 'Optimized impactful structure', false),
                            (<c:out value="${row.articleID}"/>, 'Progressive explicit solution', false),(<c:out value="${row.articleID}"/>, 'Bloody Hell interactive database', false),
                            (<c:out value="${row.articleID}"/>, 'Synergistic background goddamn', false),(<c:out value="${row.articleID}"/>, 'bugger generation system engine', false),
                            (<c:out value="${row.articleID}"/>, 'Crikey fault-tolerant structure', false),(<c:out value="${row.articleID}"/>, 'Advanced frigger', false), 
                            (<c:out value="${row.articleID}"/>, 'Organic twat product', false),(<c:out value="${row.articleID}"/>, 'Bloody Hell tolerance contingency', false),
                            (<c:out value="${row.articleID}"/>, 'Cross-group Damn structure', false),(<c:out value="${row.articleID}"/>, 'User-centric non-volatile Graphical User Interface Bloody Oath', false),
                            (<c:out value="${row.articleID}"/>, 'Damn-platform executive protocol', false),(<c:out value="${row.articleID}"/>, 'Multi-channelled national frigger access', false);  
                        </sql:update>
                    </c:if>
                    <td>
                        <form method = "POST">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type = "checkbox" name = "Open" value="Open" onclick="msgNo1()"/> Open
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type = "checkbox" name = "Close" value="Close" onclick="msgNo2()" /> Close
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
            <br>
            <input type = "submit" value = "Submit" />

        <script>
            function msgNo1() {
                alert("Article opened for user commenting. ");
            }
            function msgNo2() {
                alert("Article closed for user commenting. ");
            }
        </script>

    </body>
</html>