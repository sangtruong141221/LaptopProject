package Controller;

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
import bean.lichsubean;
import bean.loaibean;
import bean.maytinhbean;
import bo.lichsubo;
import bo.loaibo;
import bo.maytinhbo;

/**
 * Servlet implementation class lichsu
 */
@WebServlet("/lichsu")
public class lichsu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		khachhangbean kh = (khachhangbean) session.getAttribute("kh");
		maytinhbo sbo = new maytinhbo();
		ArrayList<maytinhbean> ds2 = sbo.getmaytinh();
		
		
		 if (request.getParameter("search")!=null){
			 ds2 = sbo.timKiemTheoTen(ds2, request.getParameter("search"));
			
		} 
		 
		request.setAttribute("ds", ds2);
		
		
		loaibo lbo = new loaibo();
		ArrayList<loaibean> dsloai = lbo.getloai();
		request.setAttribute("dsloai", dsloai);
		if (kh == null) {
			request.setAttribute("kh", true);
			RequestDispatcher rd = request.getRequestDispatcher("ktdn");
			rd.forward(request, response);
		}else {
			lichsubo lsbo = new lichsubo();
			ArrayList<lichsubean> ds = lsbo.getList(kh.getMakh());
//			System.out.println(ds.get(0).getTensach());
			if (ds != null) {
				request.setAttribute("ds", ds);
			}
			RequestDispatcher rd = request.getRequestDispatcher("lichsu.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
