<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Team Mate</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<style>
*{
    margin: 0;
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
  .topnav-right {
    float: right;
    margin-right: 10px;
  }


  /* Globe image */
  .a{
      background-color: black;
      height: 500px;
      
  }
  #globe{
      float: right;
      height: 500px;
      width: 600px;
      margin-top: 0px;
  }
  .a h1{
      font-size: 60px;
      float: left;
      text-align: center;
      margin-left: 30px;
  }

  /* Login / SIgnup Buttons */
.button1{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
  margin-top: 380px;
  margin-left: -95px;
  border-radius: 5px 5px;
}
.button2{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
  border-radius: 5px 5px;
  margin-left: 10px; 
}
 

.btna{
  color: white;
  text-decoration: none;
}
 




/* COnnect statement */
  #connect{
      font-family: 'Courier New', Courier, monospace;
      font-size: 25px;
      color: red;
     text-align: left;
     margin-top: 60px;
    
  } 

  /* About Us Content */
  #about-content{
    text-align: center;
    font-size: 25px;
    margin-left: 20%;
    margin-right: 20%;
 
 }

 /* ABout Us heading */
 #About-Heading
{
width: auto;
padding: 10px 10px 10px;
margin-left: 40%;
font-weight: 400;
}
  /* About Us icon */
#About-Heading span{

    font-size: 40px;
    display: inline-block;
    color: blue;
    margin-right: 0.5em;
    padding-top: 10px;

}
#About-Heading span h1 {
    text-shadow: 2px 3px #b6b4b4;
  }

  /* Latest Update Heading */
  #lupdate{
      background-color: rgb(228, 225, 225);
  }
  #Update-Heading
  {
  width: auto;
  padding: 10px 10px 10px;
  margin-left: 35%;
  font-weight: 400;
  }

  #Update-Heading span{

    font-size: 40px;
    display: inline-block;
    color: blue;
    margin-right: 0.5em;
    padding-top: 10px;

}
#Update-Heading span h1 {
    text-shadow: 2px 3px #b6b4b4;
  }

  /* Latest updates container */
  /* flip card 1 */

 .flipCardContainer{
    display: flex;
  align-items: center;
  justify-content: space-between;
}

.flip-card {
    background-color: transparent;
    width: 300px;
    height: 300px;
    perspective: 1000px;
  }
  #avtarImg{
    width: 100%;
    height: 300px;
}
  
  .flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
    transition: transform 0.6s;
    transform-style: preserve-3d;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  }
  
  .flip-card:hover .flip-card-inner {
    transform: rotateY(180deg);
  }
  
  .flip-card-front, .flip-card-back {
    position: absolute;
    width: 100%;
    height: 100%;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
  }
  
  .flip-card-front {
    background-color: #bbb;
    color: black;
  }
  
#fcb1{
    background-color: #af5705;
    color: white;
    transform: rotateY(180deg);
}
#fcb2{
    background-color: #1d581d;
    color: white;
    transform: rotateY(180deg);
}
#fcb3{
    background: rgb(12, 60, 192);
    color: rgb(245, 241, 241);
    transform: rotateY(180deg);
}
#fcb4{
    background-color: #3b9e3b;
    color: white;
    transform: rotateY(180deg);
}


.flip-card-back h1{
  font-size: 80px;
}


/*  footer */

#footer{
  height: 400px;
  width: 100%;
  background-image: linear-gradient(  rgb(3, 3, 53) 20%,rgb(5, 2, 7));
}

#img-foot{
  float: right;
  height: inherit;
  width: 50%;
}

#Foot-Heading{
  font-size: 70px;
  color: white;
  margin-left: 15%;
}

#Foot-Heading span{

  font-size: 40px;
  display: inline-block;
  color: rgb(245, 245, 250);
  margin-right: 0.5em;
  padding-top: 10px;

}

.my-details-info-container {
  margin-left: 100px;
  margin-bottom: 20px;
  color: #d9dcdd;
  font-size: 30px;
}

.my-details-info-container span {
  margin-left: 0.9rem;
  font-size: 1.6rem;

}

.my-details-info-container i {
  color: white;

}


</style>
</head>
<body>

    
    <div class="topnav">
    <ul>
       <li><img  src="<%=request.getContextPath()%>/resources/images/logo1.png" alt=""></li> 
       <li><h1>Team Mate</h1></li>
       <div class="topnav-right">
        <li><a href="#"><b>Home</b></a></li>
        <li><a href="#About-Us"><b>About Us</b></a></li>
        <li><a href="#lupdate"><b>Latest Updates</b></a></li>
        <li><a href="#footer"><b>Help</b></a></li> 
        </div>
    </ul>
    </div>
    

    <div class="a">
        <h1 style="background-color: black; color: blanchedalmond;font: size 900px; font-family: URW Chancery L, cursive;" ><br>" Technology is best <br> when it brings<br> people together "<br>
        <div id="connect">Connect people around the globe</div></h1>
       
        <input type = button onClick="parent.location='/TeamMate/letsgo'" class="button1" value='Register' name="Register"> 
        <input type = button onClick="parent.location='/TeamMate/loginpage'" class="button2" value='Login' name="Login"> 
        
       
<img src="<%=request.getContextPath()%>/resources/images/globe2.gif"  id="globe" alt="">

    </div>

  <section id="About-Us">
        <div id ="About-Heading">
            <span> <i class="fas fa-address-card"></i></></span>
            <span><h1>About Us</h1></span>
        </div>



    <div id="about-content">
        <p style="text-align: center;"><b>Team Mate is a platform for million of technology people to connect with each other , work together and come out with a valuable output.
            Connect different technology people around the globe.
        It helps you to build up your CV by providing help to different people in their projects. </b></p><br><br>
        </div>
</section>

        <!-- Latest Updates -->
        <section id="lupdate" style="height: 580px;">
            
                <div id ="Update-Heading">
                    <span> <i class="far fa-newspaper"></i></></span>
                    <span><h1>Latest Updates</h1></span>
                </div>
<br><br>
    <!-- FLip Card  -->

    <div class="flipCardContainer" id="flipCardContainer">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <img src="<%=request.getContextPath()%>/resources/images/java.jpg" alt="Avatar" id="avtarImg">
            </div>
            <div class="flip-card-back" id="fcb1">
              <h1>Java</h1> <br>
              <h3 style="color: rgb(250, 247, 54);">JDK 16: What’s coming in Java 16 from InfoWorld Java</h3>
              <p>JDK 16 will be the reference implementation of the version of standard Java set to follow JDK 15, which arrived September 15. The six-month release cadence for standard Java would have JDK 16 arriving next March.</p> <br>
              
            </div>
          </div>
        </div>
  
    <div class="flip-card">
        <div class="flip-card-inner">
          <div class="flip-card-front">
            <img src="<%=request.getContextPath()%>/resources/images/python.jpg" alt="Avatar" id="avtarImg">
          </div>
          <div class="flip-card-back"  id="fcb2">
            <h1>Python</h1> <br>
            <h3 style="color: rgb(250, 247, 54);">Python 3.5 is no longer supported from Python Insider</h3>
            <p>Python 3.5 is no longer supported.  There will be no more bug fixes or security patches for the 3.5 series, and Python 3.5.10 is the last release.  The Python core development community recommends that all remaining Python 3.5 users should upgrade to the latest version.</p> <br>
            
          </div>
        </div>
      </div>
      <div class="flip-card">
        <div class="flip-card-inner">
          <div class="flip-card-front">
            <img src="<%=request.getContextPath()%>/resources/images/net.jpg" alt="Avatar" id="avtarImg">
          </div>
          <div class="flip-card-back"  id="fcb3" style="background-color: rgb(6, 8, 136);">
            <h1>.NET</h1>  <br>
            <h3>.NET Framework republishing of July 2020 Security Only Updates from .NET Blog</h3>
            <p>Today, we are republishing the July 2020 Security Only Updates for .NET Framework to resolve a known issue that affected the original release.  You should install this version (V2) of the update as part of your normal security routine.</p> <br>
            
          </div>
        </div>
      </div>

      <div class="flip-card">
        <div class="flip-card-inner">
          <div class="flip-card-front">
            <img src="<%=request.getContextPath()%>/resources/images/angular.png" alt="Avatar" id="avtarImg">
          </div>
          <div class="flip-card-back"  id="fcb4" style="background-color:rgb(234, 0, 255);">
            <h1>Angular</h1> <br>
            <h3>Angular localization with Ivy from Angular Blog</h3>
            <p>Part of the new Angular rendering engine, Ivy, includes a new approach to localizing applications — specifically extracting and translating text. This article explains the benefits and some of the implementation of this new approach.
            </p> 
            
          </div>
        </div>
      </div>
   
        </section>


        <section id="footer">
            <img src="<%=request.getContextPath()%>/resources/images/foot1.jpg" alt="" id="img-foot">
            <div id ="Foot-Heading">
                <span> <i class="fas fa-id-card"></i></span>
                <span><h1>Help Desk</h1></span>
            </div>
            <br><br><br>

            <div class="my-details-info-container">
                <i class="fas fa-mobile-alt"></i>
                <span>122-004-122-998</span>
            </div>

            <div class="my-details-info-container">
                <i class="far fa-envelope"></i>
                <span>teammate.helpdesk@gmail.com</span>
            </div>
           
        </section>




</body>
</html>