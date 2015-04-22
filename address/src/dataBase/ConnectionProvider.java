package dataBase;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getConnection(){
		Connection conn=null;
		
		try{
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String id="jsp";
			String pwd="tiger";
			
			conn=DriverManager.getConnection(url, id, pwd);
		}catch(Exception e){
			System.out.println("ConnectionProvider Error");
			e.printStackTrace();
		}
		return conn;
	}
}
