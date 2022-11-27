<%--
  Created by IntelliJ IDEA.
  User: hamhyeonjun
  Date: 2022/11/24
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>

<%@include file="../../common/header.jsp" %>
<body>
<%--<div class="page-loader">--%>
<%--    <div class="page-loader-inner">--%>
<%--        <div class="spinner">--%>
<%--            <div class="double-bounce1"></div>--%>
<%--            <div class="double-bounce2"></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<div class="wrapper">
    <h2>test message</h2>
</div>
<%--<div class="wrapper">--%>
<%--    <h2>file Upload page</h2>--%>
<%--    &lt;%&ndash;<form name="frmName" method="post" enctype="multipart/form-data" action="viewPage.jpt">&ndash;%&gt;--%>
<%--    &lt;%&ndash;    user<br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input name="user"><br/>title<br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input name="title"><br/>file<br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input type="file" name="uploadFile" id="uploadFile"><br/><br/>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <input type="submit" value="UPLOAD"><br/>&ndash;%&gt;--%>

<%--    &lt;%&ndash;</form>&ndash;%&gt;--%>
<%--    <br>--%>
<%--    <div id="drop_zone" ondrop="dropHandler(event);">--%>
<%--        <p>Drag one or more files to this <i>drop zone</i>.</p>--%>
<%--    </div>--%>
<%--</div>--%>
<%@include file="../../common/footer.jsp" %>


</body>


<script>
    function dropHandler(ev) {
        console.log('File(s) dropped');

// Prevent default behavior (Prevent file from being opened)
        ev.preventDefault();

        if (ev.dataTransfer.items) {
// Use DataTransferItemList interface to access the file(s)
            [...ev.dataTransfer.items].forEach((item, i) => {
// If dropped items aren't files, reject them
                if (item.kind === 'file') {
                    const file = item.getAsFile();
                    console.log(`… file[${i}].name = ${file.name}`);
                }
            });
        } else {
// Use DataTransfer interface to access the file(s)
            [...ev.dataTransfer.files].forEach((file, i) => {
                console.log(`… file[${i}].name = ${file.name}`);
            });
        }
    }
</script>
<%--<script>--%>

<%--    function uploadfile(){--%>
<%--        let filedata = $(`#uploadFile`);--%>
<%--        if(filedata!=null{--%>
<%--            --%>
<%--        }--%>
<%--        else {--%>
<%--            swal("Not found file");--%>
<%--        }--%>

<%--    }--%>
<%--</script>--%>

</html>
