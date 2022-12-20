package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.xacnhandao;

/**
 * Servlet implementation class xacnhanadmin
 */
@WebServlet("/xacnhanadmin")
public class xacnhanadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =request.getSession();
		if(session.getAttribute("admin")!=null) {
			xacnhandao xnbo=new xacnhandao();
			request.setAttribute("ds", xnbo.getdanhsach());
			System.out.println("size: " + xnbo.getdanhsach().size());
			RequestDispatcher rd=request.getRequestDispatcher("xacnhan.jsp");
			rd.forward(request, response);
		}
		else 	 response.sendRedirect("dnadmin");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
