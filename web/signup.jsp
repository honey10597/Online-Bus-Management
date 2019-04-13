
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
height: 550px;  
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
height: 480px;
margin: auto;
margin-top: 28px;
box-shadow: 25px;
background: white;

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
    background: #acd6ef;
    color: #262626;
}
input[type=submit],input[type=button] {
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
</style>

</head>
<body> 
    
<!--    <%
       String str = request.getParameter("X");
        if(str!=null)
        {
            if(str.equals("1"))
            {
               %>
               alert("Password Did not match");
               <%
            }
        }
    %>    -->
    
    
    <div id="heading_tag">
<div class="heading"><h1 align="center" ><i><font face="Comic Sans MS"  size="500"  color: #7c795d;>Sign Up</font></i></h1></div>
    </div>
<div id="container">
    <form name="signup_form" action="SignupServlet" onsubmit="return myValidation()" method="post">
        <fieldset id="field_set" >
            <img src="login_logo.png" style="height:100px;width:100px;" class="logo_img">
        <table>
            <tr>
                <th>
                    <div><i class="fa fa-user icon"></i> <input type="text" placeholder="Name" name="name" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div><i class="fa fa-envelope icon"></i> <input type="email" placeholder="Email" name="email" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div> <i class="fa fa-key icon"></i><input type="password"  placeholder="password" name="password" ></div>
                </th>
            </tr>
            <tr>
                <th>
                    <div> <i class="fa fa-key icon"></i><input type="password"  placeholder="Confirm Password" name="cpassword" ></div>
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
                    <a href="#"><input type="submit" value="submit"></a>
                </th>
            </tr>
        </table>
        </fieldset>
    </form>
</div>
<!--<footer>
	<center>
		<div style = "padding: 20px;color: crimson;background-color: white;width: 30%;border-radius: 20px;">
			All rights reserved © 2019
		</div>
	</center>
</footer>-->

<script>
	
	function myValidation(){
		
		var ele1 = document.forms["login_form"]["email"].value;
		var ele2 = document.forms["login_form"]["password"].value;
		var flag = true;

                if(ele1 == "" || ele2 == "")
                {
                    alert("email or password should not be empty");
                    flag = false;
                }
		return flag;
	}

</script>

</body>
</html>
