<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	List<Map<String,Object>> reserveList = (List)request.getAttribute("reserveList");
	out.print(reserveList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>

  <script type="text/javascript">
    /* 자바 스크립트 부분 */
    const profile = () =>{
      console.log("profile 클릭");
      location.href = "/member/memberProfile?mbr_seq=1";
    }

    const reserveForm = () =>{
      console.log("reserve 클릭");
      location.href = "/reservation/reserveForm?mbr_seq=1";
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
    <h2 class="nav justify-content-center">마이페이지</h2>
    <hr />
  </div>
</div>

<div class='login-footer d-grid gap-2 d-md-flex justify-content-md-center'>
  <button type="button" class="btn btn-primary" style="background-color: #334CA5;"  onclick="profile()">
    프로필
  </button>
  <button type="button" class="btn btn-primary" style="background-color: #334CA5;" onclick="reserveForm()">
    예약내역
  </button>
</div>

<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>