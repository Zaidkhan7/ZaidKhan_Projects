<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<html>
<head>

   <link rel="stylesheet" href="resources\css\signup_style.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <title>SIGN UP</title>
   <style>
   
*{
    margin: 0;
    padding: 0;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url('<%=request.getContextPath()%>/resources/images/lll.jpg');
    background-repeat: no-repeat;
    height: 100%;
    width: 100%;
    /* background-size: cover; */	
   
    
}

/* top nav */
.topnav{
    margin-top: 0;
    color: black;
    background-color: rgb(167, 164, 161);
    height: 60px;
    width: 100%;

}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: rgb(207, 204, 204);
  }
  li {
    float: left;
  }
  
  li a {
    display: block;
    color: rgb(27, 2, 2);
    text-align: center;
    padding: 25px 40px;
    text-decoration: none;
    font-size: 25px;
    
  }

  
  li a:hover {
    background-color: rgb(201, 197, 197);
  }

  .topnav li  img{
      height: 70px;
  }
.topnav li h1{
    color: rgb(20, 20, 20);
    text-align: center;
    margin-top: 4px;
    margin-left: 40px;
    font-size: 60px;
}
  .topnav li  img{
    height: 70px;
}
.topnav li h1{
  color: rgb(20, 20, 20);
  text-align: center;
  margin-top: 4px;
  margin-left: 40px;
  font-size: 60px;
}

.right-topnav {
    float: right;
    margin-right: 10px;
 
  }


/* Signup */

.signup_box{
    width: 280px;
    position: absolute;
    top: 28%;
    left: 25%;
    color: white;
}

.signup_box h1{
    float: left;
    font-size: 40px;
    border-bottom: 6px solid rgb(218, 247, 91) ;
    margin-bottom: 50px;
    padding: 13px 0 ;


}
.text_box{
    width: 100%;
    overflow: hidden;
    font-size: 20px;
    padding: 8px 0;
    margin: 8px 0;
    border-bottom: 1px solid rgb(218, 247, 91) ;

}

.text_box i{
    width: 26px;
    float: left;
    text-align: center;
}

.select{
width: 100%;
border : 1px solid black;
color: black;
}

.text_box input{
    border: none;
    outline: none;
    background:none;
    color: white;
    font-size: 18px;
    width: 80%;
    float: left;
    margin: 0 10px;

}

.btn{
    width: 100%;
    background: none;
    border: 2px solid rgb(218, 247, 91) ;
    color: white;
    padding: 5px;
    font-size: 18px;
    cursor: pointer;
    margin: 12px 0;
}
.btn:hover{
    background-color: rgb(9, 3, 43) ;
    opacity: 50%;
    color: white;
}

::placeholder { 
    color: rgb(255, 255, 255);
    opacity: 0.8;
    
  }
  
  	.error
  	{
  		color:yellow;
  	}
  	 h3{
  color:yellow;
  text-align:center;
  margin-top:70px;
   }
   </style>
  
   
</head>
<body>

    <div class="topnav" >
        <ul>
            <div class="left-topnav">
            <li><img  src="<%=request.getContextPath()%>/resources/images/logo1.png" alt=""></li>
            <li><h1>Team Mate</h1></li>
             
        </div>
        <div class="right-topnav">
            <li><a href="/TeamMate/start"><b>Home</b></a></li>
        <li><a href="/TeamMate/loginpage"><b>Log In</b></a></li>
        </div>
        </ul>  
        </div>
        
        <h3>${msg}</h3>
        
<form:form action="signup"  method="post" modelAttribute="usermodel">
<div class="signup_box">
            <h1>Sign Up</h1>
            
           
            <div class="text_box">
                <i class="fas fa-address-card"></i>
                <form:input path="fname" placeholder="First Name"/><br>
                <form:errors path="fname" cssClass="error" />
            </div>
        
            <div class="text_box">
                <i class="fas fa-address-card"></i>
                <form:input path="lname" placeholder="Last Name"/><br>
                <form:errors path="lname" cssClass="error" />
            </div>

            <div class="text_box">
                <i class="fas fa-address-card"></i>
                <form:input path="age" placeholder="Age"/><br>
                <form:errors path="age" cssClass="error" />
            </div>


            <div class="text_box">
                <i class="fas fa-user"></i>
                <form:input path="email" placeholder="Email"/><br>
                <form:errors path="email" cssClass="error" />
            </div>

            <div class="text_box">
                <i class="fas fa-lock"></i>
                <form:password path="password"  placeholder="Password" /><br>
                <form:errors path="password" cssClass="error" />
            </div>
            <div class="text_box">
                <i class="fas fa-lock"></i>
                <form:password path="password"  placeholder="Confirm Password" /><br>
                <form:errors path="confirmpassword" cssClass="error" />
            </div>
            
            

            <div class="text_box">
                 <form:select class="select" path="user_position">
                <form:option value="Select Position"></form:option>
 				<form:option value="Project Assistant"></form:option>
				<form:option value="Web Developer"></form:option>
				<form:option value="Database Security Manager"></form:option>
				<form:option value="Data Analyst"></form:option>
				<form:option value="Code Tester"></form:option>
				<form:option value="Communicator"></form:option>
				</form:select>
            </div>

            <form:button class= "btn">Submit</form:button>
            </form:form>
            
        </div>
</body>
</html>