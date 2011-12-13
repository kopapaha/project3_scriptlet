<%-- 
    Document   : index
    Created on : Dec 11, 2011, 1:12:02 AM
    Author     : kopapaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>



<%! int coffeeTotal=0,coffeeS=0; %>
<%! int sugarTotal=0,sugarS=0; %>
<%! int waterTotal=0,waterS=0; %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>A Simple Basket</h1>

        <form method="POST">
        <table border="3" width="1" cellspacing="1" cellpadding="15">
           
            <tbody>
                <tr>
                    <td>Item</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                </tr>
                <tr>
                    <td>coffee</td>
                    <td><%=application.getInitParameter("coffeePrice")%></td>
                    <td><input type="text" name="coffeeQ"</input></td>
                    <td>
                        <% 
                        if (request.getParameter("coffeeQ")!=null&& !request.getParameter("coffeeQ").isEmpty()) 
                        {
                            coffeeS= Integer.parseInt(request.getParameter("coffeeQ"));
                        }
                        %>
                         <%=coffeeTotal=coffeeS*Integer.parseInt(application.getInitParameter("coffeePrice")) %>
                    </td>
                </tr>
                <tr>
                    <td>sugar</td>
                    <td><%=application.getInitParameter("sugarPrice")%></td>
                    <td><input type="text" name="sugarQ"</input></td>
                    <td>
                        <% 
                        if (request.getParameter("sugarQ")!=null&& !request.getParameter("sugarQ").isEmpty()) 
                        {
                            sugarS= Integer.parseInt(request.getParameter("sugarQ"));
                        }
                        %>
                         <%=sugarTotal=sugarS*Integer.parseInt(application.getInitParameter("sugarPrice")) %>
                    </td>
                </tr>
                <tr>
                    <td>water</td>
                    <td><%=application.getInitParameter("waterPrice")%></td>
                    <td><input type="text" name="waterQ" </input></td>
                    <td>
                        <% 
                        if ((request.getParameter("waterQ")!=null)&& !request.getParameter("waterQ").isEmpty()) 
                        {
                            waterS= Integer.parseInt(request.getParameter("waterQ"));
                        }
                        %>
                         <%=waterTotal=waterS*Integer.parseInt(application.getInitParameter("waterPrice")) %>
                    </td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td><%= sugarTotal+waterTotal+coffeeTotal %></td>
                </tr>
            </tbody>
        </table>
        <input type="submit" value="OK" />
        
            <a href="http://kopapahatexwww.wordpress.com" target="_blank">?</a>
            <a href="https://github.com/kopapaha" target="_blank">S</a>
            <a href="https://github.com/kopapaha">T</a>
    </body>
</html>
