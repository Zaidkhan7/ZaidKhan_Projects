<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Preference</title>
<style>
	
        *{
            margin: 0;
            padding: 0;
        }
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background:url('<%=request.getContextPath()%>/resources/images/tech.jpg')  ;
            height: 100%;
            width: 100%;
            background-size: cover;
            
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
            margin-right: 80px;
         
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
          .box{
            height: 450px;
            width: 850px;
            background-color: rgb(255, 255, 255);
            margin-left: 20%;
            margin-top: 5%;
            opacity: 0.6;
          }

#cp{
    text-align: center;
    font-size: 50px;
    border-bottom: 4px solid black;
    padding-top: 20px;
    padding-bottom: 20px;
}
        

        /* Submit button */
.subBtn{
  
  width:150px;
  height:40px;
  cursor:pointer;
  padding: auto;
  background-color:transparent;
  border: 4px solid;   
  color: rgb(0, 0, 0); 
  font-size: 30px;
  margin-left: 120px;
}

.subBtn:hover{
  background-color: rgb(228, 227, 227);
  color: rgb(83, 81, 81);
}


        
        </style>
</head>
<body>
    <div class="topnav" >
        <ul>
            <div class="left-topnav">
            <li><img src="<%=request.getContextPath()%>/resources/images/logo1.png" alt=""></li>
            <li><h1>Team Mate</h1></li>
        </div>
        <div class="right-topnav">
            <li><a href="/TeamMate/start"><b>Home</b></a></li>
        
        </div>
        </ul>
        </div>
        <br><br><br><br>  
        <div class="box">
<h1 id="cp">Change Preference</h1>
<br><br><br>	
<form:form action="editt" method="post" modelAttribute="usermodel">
 <form:select class="select" style ="font-size: 30px; margin-left: 210px;" path="user_position">
 				<form:option value="Enter New Job Preference"></form:option>
                <form:option value="Select Position"></form:option>
 				<form:option value="Project Assistant"></form:option>
				<form:option value="Web Developer"></form:option>
				<form:option value="Database Security Manager"></form:option>
				<form:option value="Data Analysit"></form:option>
				<form:option value="Code Tester"></form:option>
				<form:option value="Communicator"></form:option>
				</form:select><br><br>
				

  <br><br><br><br><br>
  <!-- Submit button -->
   
   <div style="padding-left: 220px;">
    <form:button class="subBtn">SUBMIT</form:button>
        </div>
</form:form>
       

    
</body>
</html>