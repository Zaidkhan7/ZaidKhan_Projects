<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Mate</title>
    <style>
    
*{
    margin: 0;
    padding: 0;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url('<%=request.getContextPath()%>/resources/images/choicebg1.gif')  ;
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


  /* Create Team Button */
  .crtBtn{
  
    width:200px;
    height:40px;
    cursor:pointer;
    padding: auto;
   text-align: center;
    border: 4px solid ;   
    color: rgb(34, 33, 33); 
    font-size: 30px;
    background-color: rgb(179, 236, 255);
    border-radius: 10px;
   
}

.crtBtn:hover{
  background-color: rgb(2, 25, 32);
    color: rgb(255, 255, 255);
}



/* JOIN TEAM  */


#right {
  float: right;
  margin-right: 80px;
  margin-top: -400px;
  background-color: rgb(155, 201, 216);
  border: 4px solid black;

}

.joinBtn{
  
  width:200px;
  height:40px;
  cursor:pointer;
  padding: auto;
 text-align: center;
  border: 4px solid;   
  color: rgb(34, 33, 33); 
  font-size: 30px;
  background-color: rgb(179, 236, 255);
  border-radius: 10px;
 
}

.joinBtn:hover{
background-color: rgb(2, 25, 32);
  color: rgb(255, 255, 255);
}







/* print */
#print{
  background-color: rgb(0, 0, 0);
  opacity: 0.9;
  color: white;
  margin-left: 400px;
  height: 80px;
  width: 740px;
  text-align: center;
  font-size: 55px;
  vertical-align: middle;
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
            <li><a href="/TeamMate/edit"><b>Edit</b></a></li>
            <li><a href="/TeamMate/start"><b>Log out</b></a></li>
            <li><a href="/TeamMate/viewteam"><b>View Team</b></a></li>
            
        
        </div>
        </ul>
        </div>
        <br><br><br><br>        
<br><br>

<div id="select">

<!-- CREATE TEAM -->
        <img src="<%=request.getContextPath()%>/resources/images/createteam.png" style="height: 280px; margin-left: 50px;border: 4px solid black;" alt="">
        <br><br>
        <div style="padding-left: 90px; ">
            <input type = button onClick="parent.location='/TeamMate/createteam'" value='Create Team' name="Create Team" class="crtBtn"> 

          </div>
<br><br>
<!-- JOIN TEAM -->
<div id="right">
<img src="<%=request.getContextPath()%>/resources/images/Join.png" style="height: 280px;  width: 250px; margin-left: 50px; margin-right: 20px;" alt="">
</div>
<div style="margin-left: 1170px; margin-top: -70px; ">
    <input type = button onClick="parent.location='/TeamMate/existing'" value='Existing Team' name="Existing Team" class="joinBtn">

  
</div>


</div>

<br><br><br>




</div>
</body>
</html>