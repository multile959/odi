package member.model.service;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

public class MemberService {

	public Member selectMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		
		Member mem = new MemberDao().selectMember(conn, memId, memPwd);
		
		close(conn);
		
		return mem;
	}
	
}
