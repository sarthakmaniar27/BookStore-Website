<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Books Store Application</title>
</head>
<style>
h1{
      margin-top: 50px;
      color: white;
      font-weight: bolder;
      font-size: 60px;
    }
    body{
    background-image: url("https://wallpaperaccess.com/full/2862101.jpg");
    
    }
table, th, td{
        border: 3px solid white;
        border-collapse: collapse;
    }
    table th, table td{
        padding: 5px; /* Apply cell padding */
    }
    td,th{
    color: white;
    }
    a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: green;
  color: white;
}
</style>
<body>
        <h1 align="center">Books Management</h1> 
        <h2 align="center">
            <a href="/BookStore/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/BookStore/list">List All Books</a>  
        </h2>  
    <div align="center">
        <table border="1">
            <caption>
              <h2 style="color:white;">List of Books</h2>
            </caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                        <a href="/BookStore/edit?id=<c:out value='${book.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/BookStore/delete?id=<c:out value='${book.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>