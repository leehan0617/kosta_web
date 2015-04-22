package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Quiz01(){
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		receive(req,resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		receive(req,resp);
	}

	protected void receive(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		
		int firstNum=Integer.parseInt(req.getParameter("firstNum"));
		String buho=req.getParameter("buho");
		int secondNum=Integer.parseInt(req.getParameter("secondNum"));
		float result=0.0f;
		String errorMsg="";
		DecimalFormat df=new DecimalFormat("0.#");

		switch(buho){
		case "+": result=firstNum+secondNum;
				break;
		case "-": result=firstNum-secondNum;
				break;
		case "*": result=firstNum*secondNum;
				break;
		case "/": result=(float)firstNum/secondNum;
				break;
		default:  errorMsg="부호에러입니다.";
		}
		
		resp.setContentType("text/html; charset=euc-kr");
		
		PrintWriter writer=resp.getWriter();
		
		writer.print("<html>");
		writer.print("<head><title></title></head>");
		writer.print("<body>");
		
		writer.print("<h4>");
		if(!errorMsg.equals(""))	{
			writer.print(errorMsg);
		}else writer.print(firstNum + buho + secondNum + " = " + df.format(result));
		writer.print("</h4>");
		
		writer.print("</body>");
		writer.print("</html>");	
	}
}
