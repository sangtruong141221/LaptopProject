<%@page import="bean.giohangbean"%>
<%@page import="bean.maytinhbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cửa hàng bán máy tính online</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="htmaytinh.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<style type="text/css">
  		.htgio-img-title {
			width: 40px;
			height: 40px;
			object-fit: cover;
			border-radius: 50%;
		}
		
		.row-item {
			border: 1px solid #999;
			height: 50px;
		}
		
		.test {
			font-size: 24px;
			font-weight: 400;
			cursor: pointer;
			color: red;
		}
		.test:link {
			text-decoration: none;
		}
		
		.btn-action {
			display: flex;
			justify-content: center;
		}
		
		.btn-action-1 + .btn-action-1 {
			margin-left: 40px;
			
			width: 100;
			height:50;
		}
		
		.btn-action-1 {
			font-size: 18px;
			color: #fff;
			border: 1px solid #111;
			border-radius: 6px;
			padding: 8px 12px;
			background-color: #337AB7;
			
		}
		
		.btn-action-1:hover {
			text-decoration: none;
			cursor: pointer;
		}
		
		.input-quantity {
			width: 42px;
			
		}
		
		
  	</style>
</head>
<body>
<% 		
	giohangbo gh = (giohangbo) session.getAttribute("gio"); %>
	
	
<div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="#">Tìm kiếm </a></div>
       <form class="navbar-form navbar-left" action="htmaytinh">
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/search.gif" class="search_bt"/>
      </form>
    </div>
    
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
    <!-- Center of menu tab -->
    <div class="container">
		<div class="container-fluid container">
		    <ul class="list-group list-item">
			
		    </ul>
		    
		    
		    <table width="600" style="padding: 0 15px" >
		    <center>
		   		<%	
		   			
		   			long tongTien = 0;
		   			if (gh.ds.size() == 0){
						response.sendRedirect("htmaytinh");
					}
		   			for (giohangbean item: gh.ds){ 
		   				tongTien += item.getGia()*item.getSoluong();	
		   			%>
		   				<tr class="row-item">
		   					<td>
			   					<input type="checkbox" name="delete" form="form-1" value="<%=item.getMamaytinh()%>"/>
			   				</td>
		   					<td>
		   						<img src="<%=item.getAnh()%>" class="htgio-img-title"/> 
			   				</td>
			   				<td>
			   					<%=item.getTenmaytinh() %>
			   				</td>
			   				<td>
			   					<form method="post" action="giohang?ms4=<%=item.getMamaytinh()%>">
			   						<input type="number" name="quantity" min="1" value="<%=item.getSoluong()%>" class="input-quantity"/>
			   						
			   						<input type="submit" name="submit" value="Cập nhật"/>
			   					</form>
			   				</td>
			   				<td>
			   					<%=item.getGia() %>
			   				</td>
			   				<td>
			   					<%=item.getThanhtien() %>
			   				</td>
			   				<td>
			   					<a class="test" href="giohang?ms=<%=item.getMamaytinh() %>&remove=1">&times</a>
			   				</td>
			   				
			   				
		   				</tr>
		   			<%}%>
		   			<tr>
		   				<td style="font-size: 24px; font-weight: bold;" colspan="2">Tổng tiền: </td>
		   				<td style="font-size: 24px; font-weight: bold"><%=tongTien %></td>
		   				<td>
		   					<form id="form-1" method="post" action="giohang?suanhieu=true&">
		   						<input type="submit" value="Xóa đã chọn"/>
		   					</form>
		   				</td>
		   			</tr>
		   			</center>
	   		 </table>
		
		</div>
			
	</div>
	<div class="btn-action">
		<a class="btn-action-1" href="giohang?removeall=true">Trả lại toàn bộ</a>
		<a class="btn-action-1" href="htmaytinh">Tiếp tục mua hàng</a>
		<a class="btn-action-1" href="thanhtoan">Thanh toán</a>
	</div>
    <!-- end of menu tab -->
    </body>
</html>
    