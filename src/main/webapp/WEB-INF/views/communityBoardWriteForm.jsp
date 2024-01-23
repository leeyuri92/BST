<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board write form</title>
    <%@include file="/common/bootstrap_common.jsp" %>

    <style>

    </style>

    <script type="text/javascript">
        /* 자바 스크립트 부분 */

    </script>
</head>
<body>
<!--================================= header start ==================================-->
<%@include file="/include/ticket_header.jsp" %>
<!--================================= header end ==================================-->

<!--================================= body start ==================================-->

<form action="#" method="post">
    <div class="form-group">
        <label class="control-label " for="name">제목</label>
        <input class="form-control" id="boardTitle" name="boardTitle" type="text"/>
    </div>

    <div class="form-group">
        <label class="control-label " for="content">내용</label>
        <textarea class="form-control" cols="40" id="boardContent" name="boardContent" rows="10"></textarea>
    </div>

    <div class="form-group">
        <button class="btn btn-primary " name="submit" type="submit">Submit</button>
    </div>
</form>

<!--================================= body end ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>