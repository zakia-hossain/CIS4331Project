<%-- 
    Document   : index
    Created on : Nov 29, 2019, 2:57:12 PM
    Author     : zakia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CIS 4331 Project</title>
        <style> 
            input[type=button], input[type=submit], input[type=reset] {
                background-color: #395697;
                border: none;
                color: white;
                padding: 3px 3px;
                text-decoration: none;
                margin: 5px 5px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <h1>käm?ent</h1>
        <form action="allCustomer.jsp">
            Click me to see all the customers working with us (^-^) 🠗 <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;CLICK ME!&nbsp;&nbsp;">
        </form>
        <br>
        <form action="customer.jsp">
            Company ID: <br>
            <a href="sUser.jsp"></a>
            <input type="text" name="customerID">
            <input type="submit" value="&nbsp;Enter&nbsp;">
        </form> 
        <br>
        <form action="aggr.jsp">
            The top-20 users by the number of comments they post <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;HERE&nbsp;&nbsp;">
        </form>
        <br>
        <form action="aggr1.jsp">
            The top-20 users by the number of replies they post <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;HERE&nbsp;&nbsp;">
        </form>
        <br>
        <form action="aggr2.jsp">
            The top-20 users by the number of like/dislike they post <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;HERE&nbsp;&nbsp;">
        </form>
        <br>
        <form action="aggr3.jsp">
            The top-10 websites with the most requests for article comments <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;HERE&nbsp;&nbsp;">
        </form>
        <br>
        <form action="aggr4.jsp">
            The top-10 websites with the most sales this month/week/year <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;HERE&nbsp;&nbsp;">
        </form>
        <br>
        <form action="listAllSeniorUsers.jsp">
            Click me to see all the senior users selected by our customers for their specific companies<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="&nbsp;&nbsp;CLICK ME!&nbsp;&nbsp;">
        </form>
        <br>
        <form action="sUser.jsp">
            If you are selected as a senior user by our customers, please enter your user ID and the company ID to review flagged comments.<br>
            Company ID: 
            <input type="text" name="customerID"><br>
            User ID:
            <input type="text" name="seniorUserID">
            <input type="submit" value="&nbsp;Enter&nbsp;">
        </form> 
</html>
