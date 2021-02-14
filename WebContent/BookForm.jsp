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
        padding: 2px; /* Apply cell padding */
    }
    td,th{
    color: white;
    }
    input[type=submit] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 12px 25px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
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
        <h2  align="center">
            <a href="/BookStore/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/BookStore/list">List All Books</a> 
        </h2>
        
    <div align="center">
        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="2">
            <caption>
                <h2 style="color:white;">
                    <c:if test="${book != null}">
                        Edit Book
                    </c:if>
                    <c:if test="${book == null}">
                        Add New Book
                    </c:if>
                </h2>
            </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
            <tr>
                <th>Title: </th>
                <td>
                    <input type="text" name="title" size="45"
                            value="<c:out value='${book.title}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Author: </th>
                <td>
                    <input type="text" name="author" size="45"
                            value="<c:out value='${book.author}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${book.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>