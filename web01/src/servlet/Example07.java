package servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Example07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Example07() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proRequest(request, response);
	}
	
	protected void proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		System.out.println("ok");
		
		/* 
		 * request 기본 객체 역할
		 * 클라이언트가 전송한 요청 파라미터 읽기 기능
		 * 클라이언트 전송한 쿠키 읽기 기능
		 * 서버 관련된 정보 읽기 기능
		 * 클라이언트(웹브라우저)와 관련된 정보 읽기 기능
		 * 클라이언트 요청 헤더 읽기 기능
		 */
		
		request.setCharacterEncoding("euc-kr");
		String serverName = request.getServerName();
		int portNum = request.getServerPort();
		
		String protocol = request.getProtocol();
		System.out.println("ServerName : " + serverName);
		System.out.println("PortNumber : " + portNum);
		System.out.println("Protocol : " + protocol);
		
		//URL : Uniform Resource Locators  전체경로 : http://localhost:8081/web01/servlet/.......
		//URI :  Uniform Resource Identifier  프로젝트경로부터 : /web01/servlet/..............
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		String path = request.getServletPath();   // 현재 서블릿 경로부터 : /servlet/Example07
		String contextPath = request.getContextPath(); //프로젝트 경로 : /web01
		String method = request.getMethod();
		
		System.out.println("URL : " + url);
		System.out.println("URI : " + uri);
		System.out.println("Servlet Path : " + path);
		System.out.println("Project Path : " + contextPath);
		System.out.println("Method : " + method);
		
		System.out.println("-----------------------------------------------");
		
		String remoteAddr = request.getRemoteAddr(); //클라이언트 주소
		System.out.println("RemoteAddr : " + remoteAddr);
		int remotePort = request.getRemotePort();
		System.out.println("RemotePort : " + remotePort );
		
		Enumeration<String> header = request.getHeaderNames();
		while(header.hasMoreElements()){
			String key = header.nextElement();
			String value = request.getHeader(key); 
			
			System.out.println(key + "\t" + value);
		}
	}
}