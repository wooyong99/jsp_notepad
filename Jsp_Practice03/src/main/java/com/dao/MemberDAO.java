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
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/"+"jdbc/dbconn");
			connection = dataSource.getConnection();
			System.out.println("DBCP Connection 객체 호출 성공");
			System.out.println("getConnection 스레드 명 : "+Thread.currentThread().getName());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("DAO 생성자 호출");
	}
	// context.xml에서 설정한 DBCP에서 Connection 객체를 불러오는 메소드
	/*
	 * public Connection getConnection() { try { context = new InitialContext();
	 * dataSource = (DataSource)context.lookup("java:comp/env/"+"jdbc/dbconn");
	 * connection = dataSource.getConnection();
	 * System.out.println("DBCP Connection 객체 호출 성공");
	 * System.out.println("getConnection 스레드 명 : "+Thread.currentThread().getName())
	 * ; }catch(Exception e) { System.out.println(e.getMessage()); } return
	 * connection; }
	 */
	// DB에 있는 데이터를 Select하는 메소드 
	public List<MemberDTO> selectMember(){
		List<MemberDTO> member_list = new ArrayList<MemberDTO>();
		try {
			String sql = "select * from memberdto";
			ps=connection.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				MemberDTO member=new MemberDTO(rs.getString("username"), rs.getString("id"),
						rs.getString("pw"), rs.getString("phone1"), rs.getString("phone2"), 
						rs.getString("phone3"), rs.getString("gender"));
				
				member_list.add(member);
			}
			System.out.println("DB Member 가져오기 성공");
			System.out.println("selectMember 스레드 명 : "+Thread.currentThread().getName());
		} catch (SQLException e) { e.printStackTrace(); }
		
		return member_list;
	}
	// DB에 데이터를 Insert하는 메서드
	public void addMember(MemberDTO member) {
		String sql = "insert into memberdto values (?,?,?,?,?,?,?)";
		try {
			ps=connection.prepareStatement(sql);
			ps.setString(1, member.getUsername());
			ps.setString(2, member.getId());
			ps.setString(3, member.getPw());
			ps.setString(4, member.getPhone1());
			ps.setString(5, member.getPhone2());
			ps.setString(6, member.getPhone3());
			ps.setString(7, member.getGender());
			ps.executeUpdate();
		} catch (SQLException e) { e.printStackTrace(); }
	}
	// DB에 데이터를 DELETE하는 메소드
	public void deleteMember(MemberDTO member) {
		String sql = "delete from memberdto where username=? and id=? and pw=?";
		try {
			ps=connection.prepareStatement(sql);
			ps.setString(1, member.getUsername());
			ps.setString(2, member.getId());
			ps.setString(3, member.getPw());
			ps.executeUpdate();
		} catch(Exception e) { e.printStackTrace(); }
		
	}
}
