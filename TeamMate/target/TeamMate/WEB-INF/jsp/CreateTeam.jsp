<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Your Team</title>
 <style>
 
*{
    margin: 0;
    padding: 0;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url('<%=request.getContextPath()%>/resources/images/help.jpg')  ;
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


  /* box on top of bg */

  .box{
      height: 550px;
      width: 80%;
      background-color: rgb(20, 20, 20);
      margin-top: 90px;
      margin-left: 140px;
      opacity: 0.9;
      color: white;

  }

  /* box inputs */
.project_team_name{
    
        width: 100%;
        overflow: hidden;
        font-size: 27px;
        padding: 10px 0;
        margin: 10px 0;
        border-bottom: 4px solid rgb(208, 255, 0) ;
    
    
}

.project_team_name input{
    border: none;
    outline: none;
    background:none;
    color: rgb(255, 255, 255);
    font-size: 30px;
    width: 80%;
    float: left;
    margin: 0 10px;
    text-align: center;
    align-content: center;

}



/* Recruitments */
.required_position{
    padding-left: 5px;
}

.first{
    padding-left: 100px;
    padding-right: 105px;
}

.rec{
    padding-left: 40px;
    padding-right: 20px;

}

.number{
    width: 70px;
    padding-left: 10px;

}
/* Second Recruitment */
.second{
    padding-left: 100px;
    padding-right: 105px;
}
.required_position2{
    padding-left: 5px;
}
.number2{
    width: 70px;
    padding-left: 10px;

}

/* Third Recruitment */
.third{
    padding-left: 100px;
    padding-right: 105px;
}
.required_position3{
    padding-left: 5px;
}
.number3{
    width: 70px;
    padding-left: 10px;

}

/* Fourth Recruitment */
.fourth{
    padding-left: 100px;
    padding-right: 105px;
}
.required_position4{
    padding-left: 5px;
}
.number4{
    width: 70px;
    padding-left: 10px;

}

/* Fifth Recruitment */
.fifth{
    padding-left: 100px;
    padding-right: 105px;
}
.required_position5{
    padding-left: 5px;
}
.number5{
    width: 70px;
    padding-left: 10px;

}


/* Submit button */
.subBtn{
    
    width:200px;
    height:40px;
    cursor:pointer;
    padding: auto;
    background-color:transparent;
    border: 1px solid;   
    color: rgb(128, 126, 126); 
    font-size: 30px;
}

.subBtn:hover{ 
    color: rgb(255, 249, 249);
}

.error{
   color=yellow;
   
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
        
        </div>
        </ul>
        </div>
        

        <!-- div on top of bg -->
        <div class="box" >
           
                <!-- Project name input -->
                <div class="project_team_name">
                    <form:form action="createt" method="post" modelAttribute="createteammodel">  
					<form:input path="project_team_name" placeholder="Project Team"/><br>
					<form:errors path="project_team_name" cssClass="error"></form:errors>
                </div>
                <br><br><br>
            <!-- FIrst Recruitment -->
                    <div class="first">
                   <span class="rec"><b>Position Recruitment : 1</b> </span>
                    <form:select path="required_position">
					<form:option value=""></form:option>
					<form:option value="Project Assistant"></form:option>
					<form:option value="Web Developer"></form:option>
					<form:option value="Database Security Manager"></form:option>
					<form:option value="Data Analyst"></form:option>
					<form:option value="Code Tester"></form:option>
					<form:option value="Communicator"></form:option>
					</form:select>  

                      <span class="rec"><b>Number of Recruitments : </b> </span>
                      <form:input path="number" class="number"/><br><br>
                      

                    </div>
                    <br><br>
                <!-- Second Recruitment -->
                <div class="second">
                    <span class="rec"><b>Position Recruitment : 2</b> </span>
                     <form:select path="required_position2">
					<form:option value=""></form:option>
					<form:option value="Project Assistant"></form:option>
					<form:option value="Web Developer"></form:option>
					<form:option value="Database Security Manager"></form:option>
					<form:option value="Data Analyst"></form:option>
					<form:option value="Code Tester"></form:option>
					<form:option value="Communicator"></form:option>
					</form:select>  

                      <span class="rec"><b>Number of Recruitments : </b> </span>
                      <form:input path="number2" class="number2"/><br><br>
                     
 
                     </div>
                     <br><br> 

                     <!-- Third Recruitment -->
                     <div class="third">
                        <span class="rec"><b>Position Recruitment : 3</b> </span>
                         <form:select path="required_position3">
					<form:option value=""></form:option>
					<form:option value="Project Assistant"></form:option>
					<form:option value="Web Developer"></form:option>
					<form:option value="Database Security Manager"></form:option>
					<form:option value="Data Analyst"></form:option>
					<form:option value="Code Tester"></form:option>
					<form:option value="Communicator"></form:option>
					</form:select>  

                      <span class="rec"><b>Number of Recruitments : </b> </span>
                      <form:input path="number3" class="number3"/><br><br>
                      
     
                         </div>
                         <br><br> 
                          <!-- Fourth Recruitment -->
                     <div class="fourth">
                        <span class="rec"><b>Position Recruitment : 4</b> </span>
                         <form:select path="required_position4">
					<form:option value=""></form:option>
					<form:option value="Project Assistant"></form:option>
					<form:option value="Web Developer"></form:option>
					<form:option value="Database Security Manager"></form:option>
					<form:option value="Data Analyst"></form:option>
					<form:option value="Code Tester"></form:option>
					<form:option value="Communicator"></form:option>
					</form:select>  

                      <span class="rec"><b>Number of Recruitments : </b> </span>
                      <form:input path="number4" class="number4"/><br><br>
                   
     
                         </div>

                         <br><br> 
                         <!-- Fifth Recruitment -->
                    <div class="fifth">
                       <span class="rec"><b>Position Recruitment : 5</b> </span>
                        <form:select path="required_position5">
					<form:option value=""></form:option>
					<form:option value="Project Assistant"></form:option>
					<form:option value="Web Developer"></form:option>
					<form:option value="Database Security Manager"></form:option>
					<form:option value="Data Analyst"></form:option>
					<form:option value="Code Tester"></form:option>
					<form:option value="Communicator"></form:option>
					</form:select>  

                      <span class="rec"><b>Number of Recruitments : </b> </span>
                      <form:input path="number5" class="number5"/><br><br>
                      
                         

                          <!-- Submit button -->
                          <div style="padding-left: 420px;">
                          <form:button class="subBtn">SUBMIT</form:button>
                          
    
                        </div>
                        </div>
                        </form:form>
        </div>
</body>
</html>