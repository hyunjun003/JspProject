package handler.dao.setting;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import common.sql.Config;
import handler.dto.setting.fileDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class fileDAO {
    public static fileDAO it;

    public static fileDAO getInstance(){ //인스턴스를 생성해준다.
        if(it == null)
            it = new fileDAO();
        return it;
    }

    /*file upload part*/
    public String insertfileupload(String parameter){ //file insert
        String arr[]=parameter.split("-/-/-");
        String user_id = arr[0];
        String uploadFile = arr[1];
        String newFileName = arr[2];
        String upload_time = arr[3];
        String savePath = arr[4];
        String folder = arr[5];

        List<Map<String,Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.query(conn, "INSERT `uploaded_file` SET user_id=?, uploadFile=?, newFileName=?, upload_time=?, savePath=?, folder=?", new MapListHandler(),
                    user_id, uploadFile, newFileName, upload_time, savePath, folder);
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `uploaded_file` WHERE user_id=? AND newFileName=?", new MapListHandler(),
                    user_id, newFileName);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<fileDTO> result = null;
        result = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<fileDTO>>() {
        }.getType());
        if(result.size()>0) {
            return result.get(0).getId();
        }
        else {
            return null;
        }
    }

    /*get file list part*/
    public fileDTO getFile(String id){
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM uploaded_file WHERE id=?", new MapListHandler(), id);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<fileDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<fileDTO>>() {}.getType());
        if(selectedList.size() > 0)
            return selectedList.get(0);
        else
            return null;
    }



}

