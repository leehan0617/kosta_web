package servlet;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

//���� Ŭ����
public class Example01 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Example01(){
		super();
	}
	
	//init,service,destroy �ݵ�� ������
	//���� �޸� ������ �ε� 
	public void init(){
		System.out.println("���� ���� �ʱ�ȭ �κ�");
	}
	
	//��û�� ����(���������� ������ ó��)
	public void service(ServletRequest req,ServletResponse res){
		System.out.println("���� ���� �κ�");
	}
	
	//������ ������ �Ҹ� �κ�
	public void destroy(){
		System.out.println("���� ���� ������ �Ҹ� �κ�");
	}
}
