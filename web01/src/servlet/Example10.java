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
		
		//Cookie : �������� Ŭ���̾�Ʈ�ʿ� �ʿ��� ������ �����ϴ� ���
		//				������ ������ ���� ������Ʈ�� ������Ͽ� ��밡��
		//Cookie cookie=new Cookie(key,value);
		
		/*
		 * ���� Scope ����(������ ����)
		 * page:�ϳ��� ���������� ��ȿ �� ���� ������
		 * request:Http request �� ���ؼ� ��ȿ(include,forward)
		 * session:Http session�� ���ؼ� ��ȿ,�� ������ �Ѱ� Cookie,Session
		 * application:�� ������ ���ؼ� ��ȿ�� ��, �������� �������ϱ� ������ ��)�湮���� ��
		 */
	
		if(animal.length!=0){
//			for(int i=0;i<animal.length;i++){
//				Cookie cookie=new Cookie("animal"+i,animal[i]);
//				response.addCookie(cookie);
//			}
			
			// �ð� ���� (��*��)
			int counter=0;
			for(String str:animal){
				Cookie cookie=new Cookie("animal" + counter,str);
				cookie.setMaxAge(60*20); //20��
				response.addCookie(cookie);
				counter++;
			}	
		}
		
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter writer=response.getWriter();
		
		writer.print("<html><head><title></title></head>");
		writer.print("<body>");
		writer.print("<script type='text/javascript'>");
		writer.print("window.alert('��ٱ��Ͽ� �����ϴ�.');");
		writer.print("location.href='/web01/04_Servlet/10_example.html';");
		writer.print("</script>");
		writer.print("</body></html>");
	}
}
