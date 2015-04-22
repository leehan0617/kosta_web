package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example09 extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");

		resp.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer=resp.getWriter();
		
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		
		writer.print("<h4>");
		//���� ���� ȯ���� �����´�.
		ServletContext sc=req.getServletContext();
		//���� ȯ���� ������.
		RequestDispatcher rd=sc.getRequestDispatcher("/servlet/Example09_Sub");
		//�����͸� ������ �ٽ� �����´�.
		rd.include(req, resp);
		
		writer.print("</h4>");
		
		writer.print("</body>");
		writer.print("</html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
//		String id=req.getParameter("userId");
//		String pwd=req.getParameter("userPwd");

		resp.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer=resp.getWriter();
		
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		
		writer.print("<h4>");
		//���� ���� ȯ���� �����´�.
		ServletContext sc=req.getServletContext();
		//���� ȯ���� ������.
		RequestDispatcher rd=sc.getRequestDispatcher("/servlet/Example09_Sub");
		//�����͸� ������ ���ƿ����� �ʴ´�.
		rd.forward(req, resp);
		
		writer.print("</h4>");
		writer.print("</body>");
		writer.print("</html>");

	}
	
	
	
	
	
}
