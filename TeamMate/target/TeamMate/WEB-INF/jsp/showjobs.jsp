<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select your job</title>
<style>

*{
    margin: 0;
    padding: 0;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url('<%=request.getContextPath()%>/resources/images/tech.jpg')  ;
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



/* Table */


  /* table */
  #tableshowjobs{
   
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 80%;
    margin-left: 100px;
  }
  
  #tableshowjobs td, #tableshowjobs th {
    border: 3px solid rgb(255, 255, 255);
    padding: 8px;
  }
  #tableshowjobs tr:nth-child(even){background-color: #ffffff;}
  #tableshowjobs tr:nth-child(odd){background-color: #b3effa;}

  #tableshowjobs tr:hover {background-color: rgb(202, 236, 236);}
  
  #tableshowjobs th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #010125;
    color: white;
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

<body>
<c:forEach items="${list}" var="list">
 	 <table id="tableshowjobs">
         <tr>
           <th>project_manager_fname</th>
           <th>project_manager_lname</th>
           <th>project_team_name</th>
           <th>Apply</th>
         <tr>
           <td width="60" align="center">${list.project_manager_fname}</td>
           <td width="60" align="center">${list.project_manager_lname}</td>
           <td width="60" align="center">${list.project_team_name}</td>
           <td width="60" align="center"><a href="/TeamMate/jointeam/${list.project_team_name}">join team</a></td>
         </tr>
         </table>
         </c:forEach>
</body>
</html>