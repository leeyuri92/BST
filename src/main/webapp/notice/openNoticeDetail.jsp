<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오픈공지 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>

  <script type="text/javascript">
    /* 자바 스크립트 부분   나중에 delete+update스크립트 구현또 필요*/
    const openNoitceList=()=>{  //목록 버튼 스크립트 기능function
      location.href="/notice/noticeList";

    }


  </script>

</head>
<body>
<!--================================= header start ==================================-->
	<%@include file="/include/ticket_header.jsp" %>
<!--================================= header start ==================================-->

<!--================================= body start ==================================-->
<div class="container mt-5">
  <div class="page-header">
    <h2 class="nav justify-content-center">오픈공지</h2>
    <hr />
  </div>
</div>


<%
  Map<String, Object> rMap = (Map<String, Object>) request.getAttribute("rMap");
  if (rMap != null && !rMap.isEmpty()) {
    String ntc_title = (String) rMap.get("ntc_title");
    String ntc_content = (String) rMap.get("ntc_content");
  String ntc_updated_at = (String) rMap.get("ntc_updated");    
//  java.time.LocalDateTime ntc_updated_at = (java.time.LocalDateTime)   dateTime Format 처리
//String format_updated= null;
//  if(ntc_updated_at !=null){
//    java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
//    format_updated=ntc_updated_at.format(formatter);
    
%>
<div class="container">
  <div class="jumbotron">
    <h1 class="display-8 text-center"><%= ntc_title %></h1>
    <p class="lead margin-right"><%= ntc_updated_at %></p>
    <hr class="my-4">
    <p><%= ntc_content %></p>
    <p class="lead">
      <a class="btn btn-primary btn-lg " onclick="openNoitceList()"    role="button" >목록으로 </a>
      <a class="btn btn-primary btn-lg " href="#" role="button" >다음페이지 </a>

    </p>
  </div>
</div>
<%
  }else {
      out.println("Map is null");
  }
%>





<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>