<%@page import="bean.lichsubean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.maytinhbean"%>
<%@page import="bo.giohangbo"%>
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
</head>
<body>
<% 
	khachhangbean kh = (khachhangbean) session.getAttribute("kh");
	%>
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
      <div class="oferta" style="position: relative;">
      
        <div class="oferta_content"> <img src="images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          
        </div>
        <h2 style="position: absolute; right: -20px; font-size: 30px; font-family: Serif; color: white ">Cửa hàng bán Laptop S&T</h2>
       
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
			    	 	<%=kh.getHoten() %>
			    	 </a>
			      <%} %>
			      
			      
			      
			      </a></li>

        <li class="divider"></li>
        <li><a href="removesession.jsp" class="nav5">Log Out</a></li>
        
        <li class="divider"></li>
        
        
        
          
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <form action="dangky">
   <div class="center_content">
      <div class="center_title_bar">Lịch sử mua hàng</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big" style="margin-left: 150px; " ></div>
        <div class="center_prod_box_big" style="margin-left:150px ">
          <div class="contact_form">
            <div class="form_row">
             <h1>Lịch sử mua hàng</h1>
     <table width="600" style="padding: 0 15px"  border="1">
		    
		    	
		    	
		    				<tr height="30">
		    					<td style="font-weight: 700">Tên máy tính</td>
		    					<td style="font-weight: 700">Gia</td>
		    					<td style="font-weight: 700">Số lượng</td>
		    					<td style="font-weight: 700">Thành Tiền</td>
		    					
		    				</tr>
		    		
		    		<% if (request.getAttribute("ds") != null){
		    			
		    			ArrayList<lichsubean> ds= (ArrayList<lichsubean>) request.getAttribute("ds");
		    			
		    			for (lichsubean o : ds){%>
		    				<tr height="30">
		    					<td><%=o.getTenmaytinh() %></td>
		    					<td><%=o.getGia() %></td>
		    					<td><%=o.getSoLuongMua() %></td>
		    					<td><%=o.getThanhTien() %></td>
		    					
		    				</tr>
		    			<%
		    			}%>
		    	
		    		<%}
		    		%>
		    		
	   		 </table>
    <hr>
   
             
      </div>
    </div>
  </div>
    </body>
</html>