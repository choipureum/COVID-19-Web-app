package common.interceptor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

//HandlerInterceptor 를 구현해 인터페이스로 해당 클래스를 활용
public class AuthInterceptor implements HandlerInterceptor{

	//Interceptor
	//dispatcherServlet이 Controller의 메서드를 호출할 때
	//중간에서 요청을 가로채서 필요한 선작업을 할 수 있다.
	
	//filter
	//Servlet Container가 Servlet을 호출하기 전에
	//요청을 가로채는 역할
	
	// servlet-Container > filter > dispatcher-servlet
	// > interceptor > controller
	
	@Override
	//preHandle : 컨트롤러로 요청이 가기 전에 실행되는 메서드
	// return true : 컨트롤러의 메서드가 실행 됨
	// return false : 컨트롤러의 메서드가 실행 되지 않음
	// object handler : preHandle을 수행하고 수행될 컨트롤러 메서드에 대한 정보
	public boolean preHandle(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler) throws ServletException, IOException{
		
		//사용자가 요청한 URI에 share가 포함되어 있고	
		if(request.getRequestURI().contains("/slog")
			&& request.getSession().getAttribute("logInInfo") == null) {
			
			request.setAttribute("alertMsg", "결제는 회원가입 후 가능합니다.");
			request.setAttribute("url", request.getContextPath()+"/share/list.do");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			rd.forward(request, response);
			
			//컨트롤러 메서드를 호출하지 않음.
			return false;
		}else if(request.getRequestURI().contains("/share/board.do")
				&& request.getSession().getAttribute("logInInfo") == null) {
			request.setAttribute("alertMsg", "일반회원은 접근할 권한이 없습니다.");
			request.setAttribute("url", request.getContextPath()+"/main.do");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			rd.forward(request, response);
			
			return false;
		}
		
		return true;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
