package handler.action.main;

import common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginPageAction implements Action {
    /**
     * 단순하게 redirect 해주는 역할을 하는 클래스입니다.
     * */
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        if(session.getAttribute("user") == null) //로그인하지 않은 사용자의 경우에만 로그인 페이지를 띄워줌
            return "RequestDispatcher:jsp/user/login.jsp";
        else{
            response.sendRedirect("logout.jpt");
            return null;
        }


    }
}
