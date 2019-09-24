package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		Member loginMem = new MemberService().selectMember(memId, memPwd);
		
		if (loginMem != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMem", loginMem);
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("msg", "회원정보가 없습니다!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

