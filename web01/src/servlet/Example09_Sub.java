package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Example09_Sub
 */
@WebServlet("/Example09_Sub")
public class Example09_Sub extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer=response.getWriter();
		
		request.setCharacterEncoding("euc-kr");
		String id=request.getParameter("userId");
		String pwd=request.getParameter("userPwd");
		
		writer.print(id);
		writer.print("<br/>");
		writer.print(pwd);
		System.out.println("Get : Example09_Sub" + id + "\t" + pwd);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer=response.getWriter();
		
		request.setCharacterEncoding("euc-kr");
		String id=request.getParameter("userId");
		String pwd=request.getParameter("userPwd");
		
		writer.print(id);
		writer.print("<br/>");
		writer.print(pwd);
		writer.print("</body>");
		writer.print("</html>");
		System.out.println("Post : Example09_Sub" + id + "\t" + pwd);
	
	}
	
	protected void proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
}
