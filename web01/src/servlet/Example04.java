package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException{
		proRequest(request, response);
	}
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		proRequest(request, response);
	}
	
	protected void proRequest(HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("euc-kr");
		
		String msg=request.getParameter("msg");
		System.out.println("msg : " + msg);
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter writer=response.getWriter();
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		writer.print("<b> 메세지 잘 받았다. </b><br/>");
		writer.print("<b> msg : " + msg + "</b>");
		writer.print("</body>");
		writer.print("</html>");
	}
	
}
