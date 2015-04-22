package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example10_Getting extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		Cookie[] cookieArray=req.getCookies();
		
		System.out.println(cookieArray.length);
		
		resp.setContentType("text/html; charset=euc-kr");
		PrintWriter writer=resp.getWriter();
		
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		
		if(cookieArray!=null){
			for(int i=0;i<cookieArray.length;i++){
				writer.print("ÄíÅ°ÀÇ ÀÌ¸§ : " + cookieArray[i].getName() + "<br/>");
				writer.print("ÄíÅ°ÀÇ °ª : " + cookieArray[i].getValue() + "<br/>");
			}
		}
		
		String imgStr="";
		String path=req.getContextPath();
		for(int i=0;i<cookieArray.length;i++){
			if(cookieArray[i].getValue().equals("Hydrangeas")){
				imgStr=path + "/images/Hydrangeas.jpg";
			}else if(cookieArray[i].getValue().equals("Koala")){
				imgStr=path + "/images/Koala.jpg";
			}else if(cookieArray[i].getValue().equals("Penguin")){
				imgStr=path + "/images/Penguins.jpg";
			}
			
			writer.print("<img src='" + imgStr + "'width='150' height='100'/><br/><br/>");
		}
		
		writer.print("</body>");
		writer.print("</html>");
	}
}
