
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
html, body {  
    margin: 0;
 width: 100%;   

font-family: "Helvetica Neue", Helvetica, sans-serif;   
color: #444;   
-webkit-font-smoothing: antialiased; 
   border-radius: 25px;
background-image: url("dotted_2.jpg");
background-repeat: no-repeat;
background-attachment: fixed;
}

#container{  
top: 50%;
left: 50%;
margin: auto;
height: 460px;  
width: 700px;
border: 10px solid grey;
border-radius: 10px;
margin-top: 10px;
background-color:lightgoldenrodyellow;
}

.icon {
    padding: 10px;
    background: dodgerblue;
    color: white;
    min-width: 50px;
    text-align: center;
}

#field_set{  
border-radius:8px;			
border: 1px #F00 solid;
border-color: black;
width: 375px;
height: 400px;
margin: auto;
margin-top: 28px;
box-shadow: 25px;
background: white;
}
#forgot{
    margin-left: 55px;
}
form {
    margin: 0 auto;
    margin-top: 20px;
}
label {
    color: #555;
    display: inline-block;
    margin-left: 18px;
    padding-top: 10px;
    font-size: 22px;
}
#em,#pas{
    @include transition(all 0.30s ease-in-out);
    border: 1px solid #DDDDDD;
    
}
input[type="email"]:focus,input[type="password"]:focus{
    box-shadow:1px 1px 1px 1px rgba(81, 203, 238, 1);
}

input {
    font-family: "Helvetica Neue", Helvetica, sans-serif;
    font-size: 12px;
    outline: none;
    background-color: ;
}
input[type=email],input[type=text],
input[type=password],#select_box{
    padding-left: 10px;
    margin: 12px 0 18px 0;
    display: inline-block;
    width: 290px;
    height: 35px;
    border-bottom: 4px;
    border: none;
    background: rgba(0,0,0,0.1);  
}

#heading_tag
{
    background-color:white;
}

button[type=submit]:hover,input[type=button]:hover,input[type=submit]:hover
{
	background: #efed40;
	color: #262626;
}

input[type=text]:hover,input[type=number]:hover,input[type=email]:hover,
input[type=password]:hover,#select_box:hover
{
    /*background: #acd6ef;*/
/*    color: #262626;*/
}

#cnclbtn:hover{
    background: #efed40;
	color: #262626;
}

#cnclbtn
{
    margin: 0 auto;
    padding: 0px;
}

input[type=submit],input[type=button],button[type=submit] ,cnclbtn{
    margin-left: 8px;
    margin-top: 5px;
    width: 270px;
    height: 30px;
    font-size: 14px;
    font-weight: bold;
    color: white;
    background-color: dodgerblue;
    border-radius: 30px;
    border: 1px solid #66add6;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
    cursor: pointer;
}
.logo_img{
    margin-left: 35%;
    width: 50%;
}

.heading{
	display: flex;
	justify-content: center;
	align-items: center;
	height: 50px;
        padding: 15px;
        background-color: khaki;
        box-shadow: 0px 0px 10px;
}
          
    .modal {
        display: none; 
        position: fixed; 
        z-index: 1; 
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4); 
        padding-top: 60px;
}

@keyframes animatezoom {
            from {transform: scale(0)} 
            to {transform: scale(1)}
}
</style>

</head>
<body> 
    <%
        
    %>
    <div id="heading_tag">
<div class="heading"><h1 align="center" ><i><font face="Comic Sans MS"  size="500"  color: #7c795d;>BUS MANAGEMENT</font></i></h1></div>
    </div>
<div id="container">
 <fieldset id="field_set" >
    <form name="login_form" action="LoginServlet" onsubmit="return myValidation()" method="post">
            <img src="login_logo.png" style="height:100px;width:100px;" class="logo_img">
        <table>
            <tr>
                <th>
                    <div><i class="fa fa-envelope icon"></i> <input type="email" id="em" placeholder="Email" name="email" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div> <i class="fa fa-key icon"></i><input type="password" id="pas" placeholder="password" name="password" ></div>
                </th>
            </tr>
           <tr>
                <th>
                    <div>  <i class="fa fa-user icon"></i> 
                        <select id="select_box" name = "select_box">
                        <option value="Admin">Admin</option>
                        <option value="Staff">Staff</option>
                        <option value="Student">Student</option>
                        </select>
                    </div>
                </th>
            </tr>
            <tr>
                <th>
                    <a href="#"><input type="submit" value="LogIn"></a>
                </th>
            </tr>
        </table>
    </form>
    <button onclick="document.getElementById('id01').style.display='block'"  id="forgot" type="submit" value="submit">Forgot Password</button>
</fieldset> 
</div>

    <div id="id01" class="modal">
    <form name="create" action="ForgotPassword" method="post">
         <!--<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
        <fieldset id="field_set" >
            <img src="login_logo.png" style="height:100px;width:100px;" class="logo_img">
        <table>
            <tr>
                <th>
                    <div><i class="fa fa-pencil icon"></i> <input type="text" placeholder="Email" name="route_no" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div><i class="fa fa-pencil icon"></i> <input type="text" placeholder="New Password" name="bus_number" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div> <i class="fa fa-pencil icon"></i><input type="text"  placeholder="Confirm New Password" name="route_name" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <a href="#"><input type="submit" value="submit"></a>
                </th>
            </tr>
            
            <tr>
                <th>
                    <input type="button" onclick="document.getElementById('id01').style.display='none'" value="Cancel">
                </th>
            </tr>
        </table>
        </fieldset>
    </form>
</div>
        
    <footer>
	<center>
		<div style = "padding: 20px;color: crimson;background-color: white;width: 30%;border-radius: 20px;">
			All rights reserved © 2019
		</div>
	</center>
</footer>    

</body>

<script  type="text/javascript" language="javascript">
    
    var modal = document.getElementById('id01');
            window.onclick = function(event){
                if(event.target == modal){
                    modal.style.display = "none";
                }
            }
  
	function myValidation(){
	
                var ele1 = document.forms["login_form"]["email"].value;
		var ele2 = document.forms["login_form"]["password"].value;
		var flag = true;
                
                if(ele1 == "" || ele2 == "")
                {
//                    alert("email or password should not be empty");
                    document.getElementById("em").style.borderColor="red";
                    flag = false;
                }
                if(ele2 == "")
                {
                    document.getElementById("pas").style.borderColor="red";
                    flag = false;
                }
                if(ele2.length<7 && ele2.length>12)
                {   
                    alert("Password too short");
                    document.getElementById("pas").style.borderColor="red";
                }
		return flag;
	}

</script>


</html>
