package Controller;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangky
 */
@WebServlet("/dangky")
public class dangky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangky() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//tao doi tuong session
		HttpSession ss = request.getSession();
		
		//neu chua tao doi tuong sesion
//		if(ss.getAttribute("dk") == null ) {
//			ss.setAttribute("dk", "");
//		}
		
		String un = request.getParameter("tendn");
		String ht = request.getParameter("hoten");
		String em = request.getParameter("email");
		String adr = request.getParameter("diachi");
		String sdt = request.getParameter("sodt");
		String pas = request.getParameter("pas");
		String rp = request.getParameter("password");
		
		if (un != null && ht != null && em != null && adr != null && sdt != null && pas !=null) {
			
			if (rp.equals(pas)) {
				
				khachhangbo kh = new khachhangbo();
				kh.themkhachhang(ht, adr, sdt, em, un, pas);
		
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
				rd.forward(request, response);
			}
			
			
			
		}else {
			//request.setAttribute("loi", "Dien thieu thong tin");
			RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
