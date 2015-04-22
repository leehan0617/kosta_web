package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Example08
 */
@WebServlet("/Example08")
public class Example08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example08() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		proReqest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		proReqest(request, response);
	}
	
	protected void proReqest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		/*
		 *  response : �ѱۼ��� , ��� , ����� ����κ� ���� , ��Ű ���� , ������ �̵�(redirect)
		 */
		
		request.setCharacterEncoding("euc-kr");
		
		String id=request.getParameter("userId");
		String pwd=request.getParameter("userPwd");
		
		String dbId="abc123";
		String dbPwd="abc123";
		
		String contextPath=request.getContextPath();
		if(dbId.equals(id) && dbPwd.equals(pwd)){
			//�α��� ����
			response.sendRedirect(contextPath + "/servlet/Example08_Success");
		}else{
			//�α��� ����
			response.sendRedirect(contextPath + "/servlet/Example08_Fail");
		}
	}
}
