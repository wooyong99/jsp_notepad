package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.dto.MemberDTO;
import com.mysql.cj.protocol.Resultset;

public class MemberDAO {
	
	private DataSource dataSource ;
	private Connection connection ;
	private PreparedStatement ps ;
	private ResultSet rs ;
	private Context context ;
	
	public MemberDAO() {
		System.out.println("DAO 생성자 호출");
		System.out.println("생성자 스레드 명 : "+Thread.currentThread().getName());
	}
	// context.xml에서 설정한 DBCP에서 Connection 객체를 불러오는 메소드
	public Connection getConnection() {
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/"+"jdbc/dbconn");
			connection = dataSource.getConnection();
			System.out.println("DBCP Connection 객체 호출 성공");
			System.out.println("getConnection 스레드 명 : "+Thread.currentThread().getName());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return connection;
	}
	
	public List<MemberDTO> selectMember(){
		List<MemberDTO> member_list = new ArrayList<MemberDTO>();
		try {
			connection = getConnection();
			String sql = "select * from memberdto";
			ps=connection.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				MemberDTO member=new MemberDTO(rs.getString("username"), rs.getString("id"),
						rs.getString("pw"), rs.getString("phone1"), rs.getString("phone1"), 
						rs.getString("phone1"), rs.getString("gender"));
				
				member_list.add(member);
			}
			System.out.println("DB Member 가져오기 성공");
			System.out.println("selectMember 스레드 명 : "+Thread.currentThread().getName());
		} catch (SQLException e) { e.printStackTrace(); }
		
		return member_list;
	}
}
