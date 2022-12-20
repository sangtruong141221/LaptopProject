package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.maytinhbean;
import bo.loaibo;
import bo.maytinhbo;


/**
 * Servlet implementation class htsach
 */
@WebServlet("/htmaytinh")
public class htmaytinh extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public htmaytinh() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		loaibo lbo = new loaibo();
		ArrayList<loaibean> dsloai = lbo.getloai();
		
		request.setAttribute("dsloai", dsloai);
		
		maytinhbo sbo = new maytinhbo();
		ArrayList<maytinhbean> dssach = sbo.getmaytinh();
		
		if (request.getParameter("search")!=null){
		    	dssach = sbo.timKiemTheoTen(dssach, request.getParameter("search"));}
		 else if (request.getParameter("ml")!=null){
		    	dssach = sbo.timKiemTheoLoai(dssach, request.getParameter("ml"));
		    
		    }
		int trang;
		if(request.getParameter("trang") == null) {
			trang = 1;
		}else trang = Integer.parseInt(request.getParameter("trang"));
		
		request.setAttribute("trang", trang);
		
		
		
		
		request.setAttribute("dssach", dssach);
		RequestDispatcher rd = request.getRequestDispatcher("htmaytinh.jsp");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
