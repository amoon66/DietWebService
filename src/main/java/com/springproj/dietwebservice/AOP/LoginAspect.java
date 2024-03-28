package com.springproj.dietwebservice.AOP;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.servlet.http.HttpSession;

@Aspect
@Component
public class LoginAspect {
	
	@Around("@annotation(com.springproj.dietwebservice.annotation.LoginCheck)")
    public Object checkLogin(ProceedingJoinPoint pjp) throws Throwable {
		
//		String method = pjp.getSignature().getName();
//    	System.out.println(method + "() 호출...");
    	
    	//HttpServletRequest request = null;
    	//@LoginAspect(@Around)가 호출되는 시점에 해당되는 메서드도 HttpServletRequest도 입력을 받아야한다.  --> AOP메서드가 호출될 떄 내부에서 자체적으로 request객체를 생성하도록 조치
    	HttpSession session = ((ServletRequestAttributes)(RequestContextHolder.currentRequestAttributes())).getRequest().getSession();
    	Object returnObj = null;
    	
    	/*
    	for (Object obj : pjp.getArgs()) {
            if (obj instanceof HttpServletRequest || obj instanceof MultipartHttpServletRequest) {
                request = (HttpServletRequest) obj;
                session = request.getSession();
            }
        }
        */
    	
        if(session != null) {
        	if (session.getAttribute("mymember") == null) {
    			return "redirect:/login";
    		} else {
    			returnObj = pjp.proceed();
				return returnObj;
    		}
        }else {
        	System.out.println("================");
        }
    	
		return null;
    }
	
	


}
/*//Before는 수행 후 반환이 없이 바로 다음 메서드를 호출하기 때문에 현재 컨셉에 부적합
 * 
 * @Before("@annotation(com.springproj.dietwebservice.annotation.LoginCheck)")
 * public void checkLogin(JoinPoint pjp) throws Throwable {
 * 
 * String method = pjp.getSignature().getName(); System.out.println(method +
 * "() 호출...");
 * 
 * HttpServletRequest request = null; HttpSession session = null; Object
 * returnObj = null;
 * 
 * for (Object obj : pjp.getArgs()) { if (obj instanceof HttpServletRequest ||
 * obj instanceof MultipartHttpServletRequest) { request = (HttpServletRequest)
 * obj; session = request.getSession(); } }
 * 
 * if(session != null) { if (session.getAttribute("mymember") == null) {
 * //return "redirect:/login"; } }
 */
