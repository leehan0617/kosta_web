package servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example02 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Example02(){
		super();
	}
	
	public void init(){
		
	}

	@Override
	//������������ ȣ��
	public void service(HttpServletRequest request, 
			HttpServletResponse response){
		doGet(request,response);
	}
	
	//service�޼ҵ尡 ȣ��
	public void doGet(HttpServletRequest request, 
		     HttpServletResponse response){
		System.out.println("doGet�Դϴ�.");
	}

	@Override
	public void destroy() {

	}
	
}
