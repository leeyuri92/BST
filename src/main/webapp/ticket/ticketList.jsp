<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<%
	List<Map<String,Object>> ticketList = (List)request.getAttribute("ticketList");
	out.print(ticketList);
  Map<String,Object> tmap ;
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>티켓팅 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>

  <script type="text/javascript">
    /* 자바 스크립트 부분 */

  </script>


</head>
<body>
<!--================================= header start ==================================-->
	<%@include file="/include/ticket_header.jsp" %>
<!--================================= header start ==================================-->

<!--================================= body start ==================================-->
<div class="container mt-5">
  <div class="page-header">
    <h2 class="nav justify-content-center">티켓팅</h2>
    <hr />
  </div>
</div>
<select class="form-select" aria-label="Default select example" style="width: 250px; margin-left: 30px">
  <option selected>경기날짜를 선택하세요</option>
  <%
    for (int i = 0; i < ticketList.size(); i++) {
        tmap = ticketList.get(i);

  %>
  <option value="<%=i%>"><%=tmap.get("gm_date")%></option>
  <%
    }
  %>
</select>
<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>