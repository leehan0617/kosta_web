package dataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
	public static void close(Connection conn){
		
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				System.out.println("conn close error");
				e.printStackTrace();
			}
		}
	}
	
	public static void close(PreparedStatement pstmt){
		if(pstmt!=null){
			try{
				pstmt.close();
			}catch(SQLException e){
				System.out.println("pstmt close error");
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs){
		if(rs!=null){
			try{
				rs.close();
			}catch(SQLException e){
				System.out.println("rs close error");
				e.printStackTrace();
			}
		}
	}
}
