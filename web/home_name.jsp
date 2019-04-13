<%-- 
    Document   : home_name
    Created on : 18 Feb, 2019, 8:52:08 PM
    Author     : Honey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron" > 
    <h1 size="1" align="center" style="color: #6ec2e8;">Welcome <%= session.getAttribute("Name")%></h1>
  </div>
  </div>
</div>

</body>
</html>
