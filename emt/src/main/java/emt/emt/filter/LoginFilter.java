package emt.emt.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */

public class LoginFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("LoginFilter...Begein");
		HttpServletResponse res= (HttpServletResponse) response;
		HttpServletRequest req=(HttpServletRequest) request;
		
		HttpSession session=req.getSession();
		String sid=(String) session.getAttribute("sid");
		//session에 sid가 없으면 login.jsp로 이동
		if(sid==null){
			session.setAttribute("loginMsg", "회원 전용 메뉴입니다. 로그인 후 이용해 주세요.");
			System.out.println("if문");
			res.sendRedirect("/emt/index");
			/*String url="member/login.jsp";
			RequestDispatcher disp = req.getRequestDispatcher(url);
		    disp.forward(req, res);*/
		}
		
		chain.doFilter(request, response);
		System.out.println("LoginFilter...done");
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}
	public void destroy() {
		
	}

}
