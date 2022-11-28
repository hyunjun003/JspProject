package handler.action.product;

import com.google.gson.Gson;
import common.controller.Action;
import common.controller.*;
import handler.dao.Home.HomeDAO;
import common.controller.CustomAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class inAction extends CustomAction{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        request.setAttribute("inDetail", gson.toJson(HomeDAO.getInstance().getText()));
        return "RequestDispatcher:jsp/product/product_in_layout.jsp";
    }
}
