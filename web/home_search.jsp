<%-- 
    Document   : home_search
    Created on : 18 Feb, 2019, 9:57:49 PM
    Author     : Honey
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Routes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
  <style>
    
    #search{
        padding-left: 34%;
    }
    
    #myInput {
  background-image: url('/css/searchicon.png');
  background-repeat: no-repeat;
  width: 60%;
  font-size: 16px;
  padding: 10px;
  border: 1px solid #ddd;
}

#inp{
    padding-left: 25%;
}
</style>
<body>

<div class="container">
  <div class="tron" > 
    <h1 size="1" align="center" style="color: #6ec2e8;">Enter Bus No.   or    Route No.</h1>
  </div>
  </div>

    
    <div id="inp"><input class="form-control" type="text" id="myInput"  placeholder="Search for Starting place" >
</div>
<br>
<br>
<div class="container">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Route No.</th>
        <th>Bus Number</th>
        <th>Route Name</th>
        <th>Driver Name</th>
        <th>Driver No.</th>
      </tr>
    </thead>
    <tbody id="myTable">
       <%
                List<Routes> record =(List<Routes>)request.getAttribute("dis");
                int i=0;
                for(Routes r:record)
                {
                    %>
                    <tr>
                        <td><%=r.getRouteno()%></td>
                        <td><%=r.getBusnumber()%></td>
                        <td><%=r.getRoutename()%></td>
                        <td><%=r.getDrivername()%></td>
                        <td><%=r.getContactno()%></td>
                    </tr>
                    <%
                }   
                %>
    </tbody>
  </table>
</div>

<script>
    
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

</script>


</body>
</html>

