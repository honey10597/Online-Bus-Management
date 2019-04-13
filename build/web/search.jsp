<%-- 
    Document   : search
    Created on : 2 Apr, 2019, 2:52:14 PM
    Author     : Honey
--%>

<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Source Code Pro' rel='stylesheet'>

        <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
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
    height: 520px;
    margin: auto;
    margin-top: 28px;
    box-shadow: 25px;
    background: white;
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

form {
    margin: 0 auto;
    margin-top: -20px;
    
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
input[type=password]:hover,#select_box:hover,#cnclbtn
{
    background: #acd6ef;
    color: #262626;
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
input[type=submit],input[type=button],#cnclbtn {
    width: 270px;
    height: 30px;
    font-size: 14px;
    font-weight: bold;
    color: white;
    background-color: dodgerblue;
    border-radius: 10px;
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

            
            body{
                margin: 0;
            }
            .main{
                opacity: 1;
                align-content: center;
                justify-content: center;
                display: flex;
                margin: 120px;
            }
            .d1,.d2,.d3{
                opacity: 0.6;
                border-radius: 8px;
                padding: 70px;
                margin: 50px;
                background-color:  #66a6ff;
            }
            
            .d1:hover,.d2:hover,.d3:hover{
                opacity : 1;
                transition-duration: 0.5s;
                transform: translate(0px, -10px);
            }
            
    button:hover{
                background-color: #537895;
                color: white;
                opacity: 1;
            }
            
     button{
                border: 2px solid #50c9c3;
                opacity: 1;
                background-color: white;
                color: black;
                border-radius: 6px;
                padding: 14px 28px;
                text-align: center;
                text-decoration: none;
                font-size: 16px;
                margin: 4px 2px;
                -webkit-transition-duration: 0.4s; 
                transition-duration: 0.4s;
                cursor: pointer;
            }
            
@keyframes animatezoom {
            from {transform: scale(0)} 
            to {transform: scale(1)}
}

</style>
    </head>
    <body>
        <form action="DisplayServlet">
            <div class="main">
                <div class="d1"><button type="submit" >Display</button></div>
            </div>
        </form>
    </body>
</html>