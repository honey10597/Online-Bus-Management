<%-- 
    Document   : home_sf
    Created on : 18 Feb, 2019, 8:07:02 PM
    Author     : Honey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            
            body{
                margin: 0;
            }
            
            .header{
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: 7c795d;
                
               
                background-color: khaki;
                box-shadow: 0px 0px 10px;
            }
            
            
            
           
            
           
                #logout{
                    
                    float: right;   
                }
                
                
              

        #frame_container{
              border:2px solid; 
           }
           
           a:hover{
               transition-duration: 0.5s;
		transform: translate(0px,-2px);
                text-shadow : 0px 0px 15px dodgerblue;

           }
           
           #logout a:hover{  
              background-color: lightgoldenrodyellow;
           }
           
           .im{
               float: left;
               margin-left: px;
               margin-right: auto;
               width: 50%;  
           }
           
        </style>
    </head>
    <body>
       <% if(request.getSession().getAttribute("Name")==null)
                  {
                      System.out.println("alert('you are not logged in');");
                      response.sendRedirect("login.jsp");
                  }
                  %>
        <div class="header">
           <h1 align="" ><i><font face="Comic Sans MS"  size="500"  color: #7c795d;>BUS MANAGER</font></i></h1>
        </div>
        
        <nav class="navbar navbar-expand-sm bg-warning navbar-danger"> 
           <div class="navbar-header"> 
                <a class="navbar-brand" href="home_name.jsp" target="iframe">HOME</a> 
             </div> 
            
            <div class="navbar-header"> 
                <a class="navbar-brand" href="search.jsp" target="iframe">SEARCH</a> 
            </div> 
            
            <div class="navbar-header"> 
                 <a class="navbar-brand" href="#" target="iframe">ABOUT US</a> 
            </div>
            
     <div id="logout"><a href="login.jsp"><button class="btn btn-danger navbar-btn">LOGOUT</button></a></div>
        </nav>
       
        <div id="frame_container">
                <iframe height="700px" width="100%" src="home_name.jsp" name="iframe"></iframe>
        </div>
    </body>
</html>
