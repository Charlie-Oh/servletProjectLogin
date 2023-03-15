package svc;

import java.sql.Connection;
import dao.LoginDAO;
import vo.Member;
import static db.jdbcUtil.*;

public class LoginService {
	public Member getLoginMember(String id, String passwd) {
		LoginDAO loginDAO=LoginDAO.getInstance();
		Connection con=getConnection();
		loginDAO.setConnection(con);
		Member loginMember=loginDAO.selectLoginMember(id,passwd);
		close(con);
		return loginMember;
	}
}