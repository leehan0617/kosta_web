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
		 * request �⺻ ��ü ����
		 * Ŭ���̾�Ʈ�� ������ ��û �Ķ���� �б� ���
		 * Ŭ���̾�Ʈ ������ ��Ű �б� ���
		 * ���� ���õ� ���� �б� ���
		 * Ŭ���̾�Ʈ(��������)�� ���õ� ���� �б� ���
		 * Ŭ���̾�Ʈ ��û ��� �б� ���
		 */
		
		request.setCharacterEncoding("euc-kr");
		String serverName = request.getServerName();
		int portNum = request.getServerPort();
		
		String protocol = request.getProtocol();
		System.out.println("ServerName : " + serverName);
		System.out.println("PortNumber : " + portNum);
		System.out.println("Protocol : " + protocol);
		
		//URL : Uniform Resource Locators  ��ü��� : http://localhost:8081/web01/servlet/.......
		//URI :  Uniform Resource Identifier  ������Ʈ��κ��� : /web01/servlet/..............
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		String path = request.getServletPath();   // ���� ���� ��κ��� : /servlet/Example07
		String contextPath = request.getContextPath(); //������Ʈ ��� : /web01
		String method = request.getMethod();
		
		System.out.println("URL : " + url);
		System.out.println("URI : " + uri);
		System.out.println("Servlet Path : " + path);
		System.out.println("Project Path : " + contextPath);
		System.out.println("Method : " + method);
		
		System.out.println("-----------------------------------------------");
		
		String remoteAddr = request.getRemoteAddr(); //Ŭ���̾�Ʈ �ּ�
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