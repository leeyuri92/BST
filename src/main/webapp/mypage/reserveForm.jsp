<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.Map" %>
<%
  List<Map<String, Object>> reserveList = (List) request.getAttribute("reserveList");
//  out.print(reserveList.get(0).get("rsv_id"));
  StringBuffer strReservation = new StringBuffer();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>예약내역</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <link rel="stylesheet" href="/css/mypageForm.css">

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
    <h2 class="nav justify-content-center">예약내역</h2>
    <hr/>
  </div>
</div>
<div class="reservationBody">
  <div class="memberInfo">
    <table class="table table-striped">
      <tbody>
      <%--for 문 start--%>
      <%
        if ((reserveList.get(0).get("rsv_id"))!=null){
        for (int i = 0; i < reserveList.size(); i++) {

          Map<String, Object> rsmap = reserveList.get(i);
          strReservation.append(" ")
                  .append(rsmap.get("gm_date").toString())
                  .append(" ")
                  .append(rsmap.get("std_name"));
      %>
      <tr>
        <td><%=rsmap.get("rsv_number")%></td>
        <td><%=strReservation%></td>
      </tr>
      <%--for 문 end--%>
      <%
          }
        }else{
      %>
      <tr>
        <td>예약내역 없음</td>
      </tr>
      <%
        }
      %>
      </tbody>
    </table>
  </div>
</div>


<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>