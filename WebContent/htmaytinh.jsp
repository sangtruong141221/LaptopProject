<%@page import="bean.loaibean"%>
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
<% giohangbo gh = (giohangbo) session.getAttribute("gio");
	ArrayList<maytinhbean> dssach = (ArrayList<maytinhbean>)request.getAttribute("dssach");
	int n=dssach.size();
	int st = (n/10 == 0) ? 1 : n/10;
	
	if(n/10 != 0) st++;
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
    
    <div class="left_content">
      <div class="title_box">Loại Sản Phẩm</div>
      <ul class="left_menu">
      <%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("uft-8");
				//loaibo loai = new loaibo();
				ArrayList<loaibean> loai = (ArrayList<loaibean>)request.getAttribute("dsloai");
					for(loaibean l: loai/*loai.getloai()*/){%>
						<li class="odd"><a class="#" href="htmaytinh?ml=<%=l.getMaloai()%>">
						<%=l.getTenloai()%></a></li>
					<%
					}
				%>
      </ul>
          </div>
    <!-- end of left content -->
   
     <div class="center_content">
      <div class="center_title_bar">Latest Products</div>
      
        
    	 <table width="600" style="padding: 0 15px">
    
		   		
		   		    <% 
		   		    	
			   		    /* int n=dssach.size(); */
			   		    int trang = (int)request.getAttribute("trang");
			   		    int start = (trang-1)*10;
			   		    int end = (trang)*10;
			   		 if(trang  == n/10 +1){
		   					if(n%10 != 0)end = (trang -1)*10 + n%10;
		   				} 
			   		    for(int i=start;i<end;i++){
			   		    	maytinhbean s = dssach.get(i);
			   		%>
			   		
			   		     <tr>
				   		      <td style="margin: 20px ">
					   		  	 
					   		  	<div class="product_img"> <img style="width: 250px; height: 200px; object-fit: cover; " src="<%=s.getAnh() %>"/></div> <br>
					   		     <%=s.getTenmaytinh() %> <br>
					   		   
					   		     <%=s.getGia() %><br>
					   		     
					   		     <a href="giohang?addbook=true&ms=<%=s.getMamaytinh()%>&tensach=<%=s.getTenmaytinh()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
					   		     	<img src="mua.jpg"/>
					   		     </a>
					   		    
					   		  </td>
				   		   
				   		   	 <% i++; 
				   		   	  if(i<end){
				   		      		s = dssach.get(i);%>
				   		     		<td>
							   		    <img  style="width: 250px; height: 200px; object-fit: cover;" src="<%=s.getAnh() %>"> <br>
							   		    <%=s.getTenmaytinh()%> <br>
							   	     	
							   		    <%=s.getGia() %><br>
							   		    <a href="giohang?addbook=true&ms=<%=s.getMamaytinh()%>&tensach=<%=s.getTenmaytinh()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
					   		     			<img src="mua.jpg"/>
					   		     		</a>
						   		     </td>
					   		
				   		     <%} %>
				   		  </tr>
				   	<%} %>
				   	
	   		</table>
	   </div>
      
    <!-- end of center content -->
    <div class="right_content" style="">
      <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details">  <br />
          <span class="border_cart"></span>  <span class="price"></span> </div>
        <div class="cart_icon"><a href="htgio" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      
      
     
      
    <!-- end of right content -->
  </div>
  
  <!-- end of main content -->
 <div style="width:1000px; clear:both ; height:65px;">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
						<%                //Button Previous
					        int back = 0;
					        if (trang == 0 || trang == 1) {
					            back = 1;//Luon la page 1
					        } else {
					            back = trang - 1;//Neu pages tu 2 tro len thi back tru 1
					        }
					    %>
				<li class="page-item"><a class="page-link" href="htsach?trang=<%=back%>">Previous</a></li>
				    	<%for(int i = 1; i<= st; i++){%>
				 		<li class="page-item <%=(trang ==i ) ? "page-active":""%>"><a class="page-link" href="htmaytinh?trang=<%=i %>"><%=i %></a></li>
				    <%} %>
				    
							     <%                //Button Previous
						        int next = 0;
						        if(trang == st){
						        	next= st;
						        }else{
						        	next = trang + 1;
						        }
						   
						    %>
				    <li class="page-item"><a class="page-link" href="htmaytinh?trang=<%=next%>">Next</a></li>
				  </ul>
				</nav>
				</div>
  <div class="footer">
    <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer"> Template name. All Rights Reserved 2008<br />
      <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" border="0" /></a><br />
      <img src="images/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="contact.html">contact us</a> </div>
  </div>
</div>
<!-- end of main_container -->
</body>
</html>
