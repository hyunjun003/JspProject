package handler.action.main;

import common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class fileuploadAction implements Action {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "RequestDispatcher:jsp/page/fileupload.jsp";
    }
}