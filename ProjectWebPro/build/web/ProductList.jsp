<%-- 
    Document   : ProductList
    Created on : Nov 16, 2018, 5:16:58 AM
    Author     : Zeron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div class ="container">


            <table id="example" class="table">
                  <thead>
                    <tr>
                        <th>No</th>
                        <th>image</th>                        
                        <th>Product ID</th>
                        <th>Product Name</th>                                            
                        <th>Price</th>
                        <th>Add to Cart</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${product}" var="p" varStatus="vs">
                    
                    <tr>
                        <td>${vs.count}</td>
                        <td><img src="model-images/${p.productId}.jpg" width="120"></td>
                        
                        <td>${p.productId}</td>
                        
                        <td>${p.productName}</td>                       
                        <td>${p.price}</td>
                        
                        <td>
                            <form action="AddItemToCart" method="post">
                                <input type="hidden" value="${p.productId}" name="productCode"/>
                                <input type="submit" value="Add To Cart"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
