package com.github.spellhaven.ex;

import java.sql.*;

public class MemberDao {
	
	// DTO에서 데이터를 받은 DAO! 그 데이터를 DB에 넣게 되는데... 과연 결말은?

	// 전역 변수로 얘들을 선언해 주자. ㅋ. 아무데서나 쓸 수 있게 편하게...
	static String driverName = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/webdb";
	static String user = "root";
	static String password = "12345";
	
	public int insertMember(MemberDto dto) {
		
		String m_id = dto.getId();
		String m_pw = dto.getPw();
		String m_name = dto.getName();
		String m_email = dto.getEmail();
		String m_address = dto.getAddress();
		
		
		String sql = "INSERT INTO web_members(id, pw, name, email, address) VALUES ('" + m_id + "', '" + m_pw + "', '" + m_name +"', '" + m_email +"', '" + m_address +"')";			
		
		int dbFlag = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);		
						
			dbFlag = pstmt.executeUpdate(); //sql문 실행 -> 1이 오면 성공, 아니면 실패
		
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{
				
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {			
					conn.close(); 
				}	
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}
		
		return dbFlag;
	}
	
	
	
	
	public int confirmId(String id) { // 가입여부를 확인해 주는 놈.
		
		int dbFlag = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "SELECT id from web_members where id = ?";			
		

		try {			
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);		
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		
			if(rs.next()) { // 조건이 참이면 이미 가입된 아이디라는 뜻. (SQL 찾아서 어? DB에 이미 있는데? 이 얘기니까.)
				dbFlag = 1;
			} else {
				dbFlag = 0;
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{
				
				if(rs != null) {
					rs.close();
				}
				
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {			
					conn.close(); 
				}	
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}
	
		return dbFlag;
	}
	
	
	
	
}
