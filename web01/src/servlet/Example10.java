package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Example10
 */
@WebServlet("/Example10")
public class Example10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		proRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		proRequest(request, response);
	}
	
	protected void proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		String[] animal=request.getParameterValues("animal");
		
		//Cookie : 웹서버가 클리이언트쪽에 필요한 정보를 저장하는 기술
		//				데이터 공유는 현재 프로젝트의 모든파일에 사용가능
		//Cookie cookie=new Cookie(key,value);
		
		/*
		 * 서블릿 Scope 영역(데이터 영역)
		 * page:하나의 페이지에서 유효 즉 현재 페이지
		 * request:Http request 에 대해서 유효(include,forward)
		 * session:Http session에 대해서 유효,웹 브라우저 한개 Cookie,Session
		 * application:웹 서버에 대해서 유효한 값, 웹서버가 리부팅하기 전까지 예)방문자의 수
		 */
	
		if(animal.length!=0){
//			for(int i=0;i<animal.length;i++){
//				Cookie cookie=new Cookie("animal"+i,animal[i]);
//				response.addCookie(cookie);
//			}
			
			// 시간 설정 (분*초)
			int counter=0;
			for(String str:animal){
				Cookie cookie=new Cookie("animal" + counter,str);
				cookie.setMaxAge(60*20); //20분
				response.addCookie(cookie);
				counter++;
			}	
		}
		
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter writer=response.getWriter();
		
		writer.print("<html><head><title></title></head>");
		writer.print("<body>");
		writer.print("<script type='text/javascript'>");
		writer.print("window.alert('장바구니에 담겼습니다.');");
		writer.print("location.href='/web01/04_Servlet/10_example.html';");
		writer.print("</script>");
		writer.print("</body></html>");
	}
}
