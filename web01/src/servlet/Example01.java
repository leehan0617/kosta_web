package servlet;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

//서블릿 클래스
public class Example01 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Example01(){
		super();
	}
	
	//init,service,destroy 반드시 재정의
	//서버 메모리 데이터 로딩 
	public void init(){
		System.out.println("서블릿 파일 초기화 부분");
	}
	
	//요청시 실행(내부적으로 쓰레드 처리)
	public void service(ServletRequest req,ServletResponse res){
		System.out.println("서블릿 내용 부분");
	}
	
	//서버의 데이터 소멸 부분
	public void destroy(){
		System.out.println("서블릿 파일 데이터 소멸 부분");
	}
}
