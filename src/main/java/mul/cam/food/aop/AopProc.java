package mul.cam.food.aop;

import java.util.Date;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


/*
 *  AOP(Aspect Oriented Programming) 관점지향
 *  목적 : 감시자 네 여기 왔니 처리해 줄께
 * 
 */

@Aspect
public class AopProc {

//	@Around("within(mul.cam.a.controller.*) or within(mul.cam.a.dao.*.*)")
	@Around("within(mul.cam.food.controller.*)")
	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {		
		
		// logger
		String signatureStr = joinpoint.getSignature().toShortString(); // 감시자가 감시자 역할을 하다가 실행이 되면
		
		try {
			Object obj = joinpoint.proceed(); // controller 진입시 
			// 공통으로 들어가는거
			System.out.println("AOP log:" + signatureStr + "method operation " + new Date()); // controller의 어떤 method가 실행 되었는지
			
			return obj;
		}finally {
			//System.out.println("After operation: ");
		}
	}
	//fgsdfgsdfgsdf
}
