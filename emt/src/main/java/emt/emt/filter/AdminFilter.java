package emt.emt.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */

public class AdminFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("AdminFilter...Begein");
		HttpServletResponse res= (HttpServletResponse) response;
		HttpServletRequest req=(HttpServletRequest) request;
		
		HttpSession session=req.getSession();
		String sid=(String) session.getAttribute("sid");
		//session에 sid가 없으면 login.jsp로 이동
		if(sid==null){
			session.setAttribute("adminMsg", "관리자 전용 메뉴입니다.");
			
			res.sendRedirect("/emt/index");
		}else if(!sid.equals("admin")){
			session.setAttribute("adminMsg", "관리자 전용 메뉴입니다.");
			
			res.sendRedirect("/emt/index");
			/*String url="member/login.jsp";
			RequestDispatcher disp = req.getRequestDispatcher(url);
		    disp.forward(req, res);*/
		}
		
		chain.doFilter(request, response);
		System.out.println("AdminFilter...done");
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}
	public void destroy() {
		
	}

}
