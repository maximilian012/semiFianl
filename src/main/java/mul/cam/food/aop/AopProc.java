package mul.cam.food.aop;

import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

/*
	AOP(Aspect Oriented Programming) 

*/
@Aspect
public class AopProc {
	
//	@Around("within(mul.cam.a.controller.*) or within(mul.cam.a.dao.*.*)")
	@Around("within(mul.cam.a.controller.*)")
	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {
		
		// session check
		/*
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		if(request != null) {
			HttpSession session = request.getSession();
			MemberDto login = (MemberDto)session.getAttribute("login");
			if(login == null) {
				return "redirect:/sessionOut.do";
			}
		}*/
				
		// logger
		String signatureStr = joinpoint.getSignature().toShortString();

		try {
			Object obj = joinpoint.proceed();  		
			System.out.println("AOP log:" + signatureStr + "  " + new Date());
			
			return obj;			
		}finally {
		//	System.out.println("�떎�뻾�썑:" + System.currentTimeMillis());
		}
	}

}





