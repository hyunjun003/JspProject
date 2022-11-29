package handler.action.product;

import com.google.gson.Gson;
import common.controller.Action;
import common.controller.CustomAction;
import handler.dao.Home.HomeDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class detailAction extends CustomAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        request.setAttribute("inDetail", gson.toJson(HomeDAO.getInstance().getText()));
        return "RequestDispatcher:jsp/product/product_detail_layout.jsp";
    }
}
