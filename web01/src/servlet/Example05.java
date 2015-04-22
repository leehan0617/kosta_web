package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Example05() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		proRequest(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		proRequest(req, resp);
	}
	
	protected void proRequest(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		req.setCharacterEncoding("euc-kr");
		String name=req.getParameter("name");
		String phone=req.getParameter("phone");
		String addr=req.getParameter("addr");
		
		System.out.println("name : " + name + "phone :  " + phone + "addr : " + addr);
		
		resp.setContentType("text/html; charset=euc-kr");
		
		PrintWriter writer=resp.getWriter();
		
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		
		writer.print("<h4>");
		writer.print("이름 : " + name + "<br/>");
		writer.print("주소 : " + addr + "<br/>");
		writer.print("전화번호 : " + phone + "<br/>");
		writer.print("</h4>");
		
		writer.print("</body>");
		writer.print("</html>");
	}
	
}
