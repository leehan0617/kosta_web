package addrModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dataBase.ConnectionProvider;
import dataBase.JdbcUtil;

public class AddrDao {
	//singleton Pattern
	private static AddrDao instance=new AddrDao();
	
	public static AddrDao getInstance(){
		return instance;
	}
	
	public int insert(AddrDto addr){
		int value=0;
		Connection conn=ConnectionProvider.getConnection();
		PreparedStatement pstmt=null;

		try{
			String sql="insert into addr values(addr_num_weq.nextval,?,?,?)";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, addr.getName());
			pstmt.setString(2, addr.getPhone());
			pstmt.setString(3, addr.getEmail());
			
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("insert Error");
			e.printStackTrace();
		}finally{
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return value;
	}
	
	public AddrDto select(String name){
		AddrDto addr=null;
		Connection conn=ConnectionProvider.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			String sql="select * from addr where name=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				addr=new AddrDto();
				addr.setNum(rs.getInt("num"));
				addr.setName(rs.getString("name"));
				addr.setPhone(rs.getString("phone"));
				addr.setEmail(rs.getString("email"));
			}
		}catch(SQLException e){
			System.out.println("DAO Select Error");
			e.printStackTrace();
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return addr;
	}
	
	public int delete(String name){
		Connection conn=ConnectionProvider.getConnection();
		PreparedStatement pstmt=null;
		int value=0;
		
		try{
			String sql="delete  from addr where name=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("DAO Delete Error");
			e.printStackTrace();
		}finally{
		
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
	
		return value;
	}
	
	public int update(AddrDto dto){
		Connection conn=ConnectionProvider.getConnection();
		PreparedStatement pstmt=null;
		int value=0;
		
		try{
			String sql="update addr set phone=?,email=? where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPhone());
			pstmt.setString(2, dto.getEmail());
			pstmt.setInt(3, dto.getNum());
			
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("DAO Delete Error");
			e.printStackTrace();
		}finally{
		
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
	
		return value;
	}
}
