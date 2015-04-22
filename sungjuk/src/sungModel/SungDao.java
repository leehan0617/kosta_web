package sungModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dataBase.ConnectionProvider;
import dataBase.JdbcUtil;

public class SungDao {
	private static SungDao instance=new SungDao();
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
	
	public static SungDao getInstance(){
		return instance;
	}
	
	public int insert(SungDto sung){
		int value=0;
		conn=ConnectionProvider.getConnection();
		sung.setTotal(sung.getKor()+sung.getEng()+sung.getMath());
		sung.setAverage(sung.getTotal()/3.0f);
		
		try{
			sql="insert into sungjuk values(sungjuk_bunho_seq.nextval,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sung.getName());
			pstmt.setInt(2, sung.getKor());
			pstmt.setInt(3,sung.getEng());
			pstmt.setInt(4,sung.getMath());
			pstmt.setInt(5,sung.getTotal());
			pstmt.setFloat(6, sung.getAverage());
			
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("insert Error");
		}finally{
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return value;
	}
	
	public SungDto read(int bunho){
		SungDto dto=null;
		conn=ConnectionProvider.getConnection();
		
		try{
			sql="select * from sungjuk where bunho=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bunho);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				dto=new SungDto();
				dto.setBunho(rs.getInt("bunho"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMath(rs.getInt("math"));
				dto.setTotal(rs.getInt("total"));
				dto.setAverage(rs.getFloat("average"));
			}
			
		}catch(SQLException e){
			System.out.println("read error");
			e.printStackTrace();
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return dto;
	}
	
	public int delete(String name,int bunho){
		conn=ConnectionProvider.getConnection();
		int value=0;
		try{
			sql="delete from sungjuk where name=? and bunho=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2,bunho);
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("read error");
			e.printStackTrace();
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return value;
	}
	
	public int update(SungDto sung){
		int value=0;
	
		conn=ConnectionProvider.getConnection();
		sung.setTotal(sung.getKor()+sung.getEng()+sung.getMath());
		sung.setAverage(sung.getTotal()/3.0f);
		
		int bunho=sung.getBunho();
		
		try{
			sql="update sungjuk set kor=? , eng=? , math=? ,total=? ,average=? where bunho=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sung.getKor());
			pstmt.setInt(2, sung.getEng());
			pstmt.setInt(3, sung.getMath());
			pstmt.setInt(4, sung.getTotal());
			pstmt.setFloat(5, sung.getAverage());
			pstmt.setInt(6, bunho);
			
			value=pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("update Error");
		}finally{
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		return value;
	}
	
	public ArrayList<SungDto> showAll(){
		ArrayList<SungDto> list=new ArrayList<SungDto>();
		SungDto dto=null;
		conn=ConnectionProvider.getConnection();
		
		try{
			sql="select * from sungjuk";
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				dto=new SungDto();
				dto.setBunho(rs.getInt("bunho"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMath(rs.getInt("math"));
				dto.setTotal(rs.getInt("total"));
				dto.setAverage(rs.getFloat("average"));
				list.add(dto);
			}
			
		}catch(SQLException e){
			System.out.println("showAll error");
			e.printStackTrace();
		}
		return list;
	}
}
