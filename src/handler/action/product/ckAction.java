package handler.action.product;
import java.util.Enumeration;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import common.controller.Action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ckAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("ckAction running");
        String path = "/Users/hamhyeonjun/IdeaProjects/JspProject/web/assets/images/demo";
        //String path = application.getRealPath("fileFolder");
        int size = 1024 * 1024 * 10;
        String file = "";
        try{
            System.out.println("file upload");
            MultipartRequest multi = new MultipartRequest(request, path, size, "EUC-KR", new DefaultFileRenamePolicy());
            Enumeration files = multi.getFileNames();
            String str = (String) files.nextElement();
            file = multi.getFilesystemName(str);
            response.sendRedirect("/detail.jpt");

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
