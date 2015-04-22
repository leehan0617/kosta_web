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
	//웹브라우저에서 호출
	public void service(HttpServletRequest request, 
			HttpServletResponse response){
		doGet(request,response);
	}
	
	//service메소드가 호출
	public void doGet(HttpServletRequest request, 
		     HttpServletResponse response){
		System.out.println("doGet입니다.");
	}

	@Override
	public void destroy() {

	}
	
}
