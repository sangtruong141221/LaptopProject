<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="bo.giohangbo"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cửa hàng bán máy tính online</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="htmaytinh.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>

  <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 15;
  



}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>
<% 		
	giohangbo gh = (giohangbo) session.getAttribute("gio"); %>
	
	
<div id="main_container">
  
    
  <div id="header">
    
    <div class="oferte_content">
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
      <div class="oferta">
      
        <div class="oferta_content"> <img src="images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          
        </div>
       <h2 style="position: absolute; right: 600px; font-size: 30px; font-family: Serif; color: white ">Cửa hàng bán Laptop S&T</h2>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
        <li><a href="htmaytinh" class="nav1"> Trang chủ</a></li>
      
        <li class="divider"></li>
      
        <li class="divider"></li>
        <li><a href="lichsu" class="nav3">Lịch Sử mua hàng</a></li>
        <li class="divider"></li>
       <li>
			      <% if (session.getAttribute("kh") == null){ %>
			    	 <a href="ktdn" class="nav4"><span class="glyphicon glyphicon-user"></span>Log In</a>
			      <%}else{ %>
			    	 <a href="#" class="nav4"><span class="glyphicon glyphicon-user">
			    	 	
			    	 </a>
			      <%} %>
			      
			      
			      
			      </a></li>

        <li class="divider"></li>
        <li><a href="removesession.jsp" class="nav5">Log Out</a></li>
        
        <li class="divider"></li>
        
        
        
          
      <div class="right_menu_corner"></div>
    </div>
   <%-- Center menu--%>
   
   <form action="dangky">
   <div class="center_content">
      <div class="center_title_bar">Resignter</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big" style="margin-left: 150px" ></div>
        <div class="center_prod_box_big" style="margin-left:150px ">
          <div class="contact_form">
            <div class="form_row">
             <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="email"><b>Họ tên</b></label>
    <input type="text" placeholder="Họ tên" name="hoten" id="email" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>
    
    <label for="email"><b>Địa chỉ</b></label>
    <input type="text" placeholder="username" name="diachi" id="tk" required>
    
    <label for="email"><b>Số điện thoại</b></label>
    <input type="text" placeholder="username" name="sodt" id="tk" required>
    
    <label for="email"><b>Tài Khoản</b></label>
    <input type="text" placeholder="username" name="tendn" id="tk" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pas" id="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="password" id="psw-repeat" required>
    

    <hr>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="dangnhap.jsp">Sign in</a>.</p>
  </div>
             
      </div>
    </div>
  </div>
  <%--end --%>
   <div class="footer">
    <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer"> Template name. All Rights Reserved 2008<br />
      <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" border="0" /></a><br />
      <img src="images/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="contact.html">contact us</a> </div>
  </div>
</div>
    </body>
</html>