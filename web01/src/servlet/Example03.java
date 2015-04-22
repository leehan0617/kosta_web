package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example03 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Example03(){
		super();
	}
	
	public void init(){
		
	}
	
	public void service(HttpServletRequest request,
			HttpServletResponse response){
		doGet(request,response);
	}
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response){
		response.setContentType("text/html; charset=EUC-KR"); 
		
		try {
			PrintWriter pw=response.getWriter();
			
			pw.print("<html>");
			pw.print("<head><title></title></head>");
			pw.print("<body>");
			pw.print("<b style='font-size:13px;font-family:∏º¿∫ ∞ÌµÒ'>");
			pw.print("º≠∫Ì∏¥ øπ¡¶¿‘¥œ¥Ÿ.");
			pw.print("</b>");
			pw.print("</body>");
			pw.print("</html>");
			
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void destroy(){
		
	}
}
