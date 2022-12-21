<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
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
        <li><a href="loaiadmin" class="nav3">Quản lý loại</a></li>
        <li class="divider"></li>
       
        <li><a href="#" class="nav3">Quản lý máy tính</a></li>
        <li class="divider"></li>
        <li><a href="xacnhanadmin" class="nav3">Xác nhận</a></li>
        <li class="divider"></li>
         <li><a href="dschuyentien" class="nav3">Danh sách chuyển tiền</a></li>
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
        
        <%--Them loai --%>
        
          
      <div class="right_menu_corner"></div>
    </div>
 		
	<div class="center_content">
      <div class="center_title_bar">Login</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big" style="margin-left: 150px" ></div>
        <div class="center_prod_box_big" style="margin-left: 150px">
			<form  method="post" action="loaiadmin">
					<label for="uname"><b>Nhâp mã</b></label>
				    <input type="text" placeholder="Mã loại" name="txtma" value="">
					<br>
				    <label for="psw"><b>Nhập loại máy tính</b></label>
				    <input type="text" placeholder="Nhập tên" name="txtten" required>	
				    <input type="submit" name="add" value="Thêm"/>
				    	
			</form>

		</div>
    </div>		
<%ArrayList<loaibean> loai = (ArrayList<loaibean>)request.getAttribute("dsloai"); %>
	<h3>Danh sách loại</h3>
	
 <table  width="1000" align="center"  style="padding: 0 15px"  border="1" >
		    	<tr>
		    		
		    		<td>Mã Loại</td>
		    		<td>Tên Loại</td> 	
		    		<td>Cập nhập </td>
		    		<td>Xóa</td>
		    	</tr>
		    	<%
		    	for(loaibean o: loai){%>
		   		<tr >
		   			
			   	<form method="post" action="loaiadmin?update=<%=o.getMaloai()%>">
			   		<td>
			   		<input type="text" name="ml"  value="<%=o.getMaloai()%>" class="input-quantity"/>
			   		</td>
			   		<td>
			   		<input type="text" name="ten"  value="<%=o.getTenloai()%>" class="input-quantity"/>
			   		</td>
			   		
			   		<td>
			   		<input type="submit" name="submit" value="Cập nhật"/>
			   		</td>			
			   		
			   	</form>
			   		</td>
			   		<td><a href="loaiadmin?xoa=<%=o.getMaloai()%>">XOÁ</a></td>
		   		</tr>
		   		<%} %>
	  </table>
	  <br>
   
  
    
             
     
    
  
  </body>
</html>