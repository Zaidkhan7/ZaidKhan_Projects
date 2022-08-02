<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Team</title>
<style>

*{
    margin: 0;
    padding: 0;
}
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url('<%=request.getContextPath()%>/resources/images/pic.jpg')  ;
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




  /* table */
  .tableadded{
   
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 80%;
        margin-left: 100px;
      }
      
      .tableadded td, .tableadded th {
        border: 3px solid rgb(190, 190, 190);
        padding: 8px;
      }
      .tableadded tr:nth-child(even){background-color: #fcfcfc;}

      .tableadded tr:hover {background-color: rgb(210, 216, 216);}
      
      .tableadded th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #010125;
        color: white;
      }
      h1{
      	color:yellow;
      	text-align:center;
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
            <li><a href="/TeamMate/start"><b>Log out</b></a></li>
        
        </div>
        </ul>
        </div>
        <br><br><br><br> 
       <h1>${msg}</h1>
       
<c:forEach items="${list}" var="list">

		 <table class="tableadded"> 
		 <tr>
           <th>Team Members</th>
           <th>Team Name</th>
           <th>Email</th>
           <th>Role</th>
           </tr>
         <tr>
           <td width="60" align="left">${list.team_member}</td>
           <td width="60" align="left">${list.team_name}</td>
           <td width="60" align="left">${list.email}</td>
           <td width="60" align="left">${list.role}</td>
         </tr>
         </table>
         </c:forEach>
</body>
</html>