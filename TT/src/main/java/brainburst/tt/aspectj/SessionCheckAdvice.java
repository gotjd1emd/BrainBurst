package brainburst.tt.aspectj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
//@Aspect
public class SessionCheckAdvice {
	
	//@Around("execution(public * brainburst.tt.controller.*Controller.*(HttpServletRequest, ..))")
	public Object around(ProceedingJoinPoint point) throws Throwable {
		//session check
		Object methodParam[] = point.getArgs();
		HttpServletRequest request = (HttpServletRequest)methodParam[0];
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userDTO")==null) {
			request.setAttribute("errorMsg", "로그인을 해주세요");
			
			throw new Exception();
		}
		
		Object obj = point.proceed();
		
		return obj;
	}
}
