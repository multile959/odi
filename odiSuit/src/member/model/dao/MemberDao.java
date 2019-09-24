package member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;
import static common.JDBCTemplate.*;

public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Member selectMember(Connection conn, String memId, String memPwd) {
		PreparedStatement pstmt = null;
		Member mem = null;
		String sql = prop.getProperty("selectMember");
		ResultSet rset = null;
		System.out.println(memId + memPwd);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rset = pstmt.executeQuery();
			
			System.out.println(rset);
			
			if (rset.next()) {
				mem = new Member(rset.getInt("mem_code"),
								 rset.getString("mem_id"),
								 rset.getString("mem_pwd"),
								 rset.getString("mem_name"),
								 rset.getString("phone"),
								 rset.getString("phone_validate"),
								 rset.getDate("enroll_date"),
								 rset.getString("mem_autho"),
								 rset.getInt("reported_count"),
								 rset.getDate("expired_info"),
								 rset.getString("black_mem")
								 );
			}
			
			System.out.println(mem);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mem;
	}
	
}
