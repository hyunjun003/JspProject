package handler.dto.Home;

import org.openxmlformats.schemas.drawingml.x2006.main.STTextIndent;

public class TextDTO {
    public String product_id;
    public String product_page;
    public String product_pic;

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_page() {
        return product_page;
    }

    public void setProduct_page(String product_page) {
        this.product_page = product_page;
    }

    public String getProduct_pic() {
        return product_pic;
    }

    public void setProduct_pic(String product_pic) {
        this.product_pic = product_pic;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getUploaded_time() {
        return uploaded_time;
    }

    public void setUploaded_time(String uploaded_time) {
        this.uploaded_time = uploaded_time;
    }

    public String product_name;
    public String uploaded_time;

}
