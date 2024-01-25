<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.time.format.DateTimeFormatter, java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.*" %>
<%
	List<Map<String,Object>> ticketList = (List)request.getAttribute("ticketList");
  LocalDateTime  gameDate =null;
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
  <link rel="stylesheet" href="/css/ticket.css">

  <script type="text/javascript">
      /* 자바 스크립트 부분 */
      <script>
          document.getElementById('dateSelect').addEventListener('change', function() {
          var selectedValue = this.value;
          alert('Selected value: ' + selectedValue);
      });
  </script>

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
<div>
  <div>
    <select class="form-select" aria-label="Default select example" style="width: 250px; margin-left: 30px">
      <option selected>경기날짜를 선택하세요</option>
      <%
        //set/Hashset 고유값데이터를 출력 한다
        Set<LocalDateTime> uniqueDates = new HashSet<>();

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        for (int i = 0; i < ticketList.size(); i++) {
          tmap = ticketList.get(i);
          gameDate = (LocalDateTime)tmap.get("gm_date");
          if (gameDate != null && uniqueDates.add(gameDate)) {
            String formattedDate = gameDate.format(formatter);
      %>
      <option value="<%=i%>"><%=formattedDate%></option>
      <%
          }
        }
      %>
    </select>
  </div>
  <%
    DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    int remainingSeats = 0;

    // 날짜에 따라 티켓 리스트 정렬
    Collections.sort(ticketList, Comparator.comparing(t -> (LocalDateTime) t.get("gm_date")));

    for (int i = 0; i < ticketList.size(); i++) {
      tmap = ticketList.get(i);
      gameDate = (LocalDateTime)tmap.get("gm_date");
      String formattedDate = gameDate.format(formatter2);
      remainingSeats = (Integer) tmap.get("gm_total") - (Integer)tmap.get("gm_reserve");
  %>
  <div class="card mb-3" style="max-width: 540px; margin-left: 16%; margin-top: 5%">
    <div class="row g-0" >
      <div class="col-md-4" style="margin: auto">
        <h2><%=tmap.get("team_away")%></h2>
        <h2>vs</h2>
        <h2><%=tmap.get("team_home")%></h2>
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title"><%=tmap.get("team_away")%> vs <%=tmap.get("team_home")%></h5>
          <p class="card-text"><%=tmap.get("std_name")%></p>
          <p class="card-text"><%=formattedDate%></p>
          <p class="card-text" style="text-align: right;"><small class="text-muted">잔여좌석 : <%=remainingSeats%></small></p>
        </div>
      </div>
    </div>
  </div>
  <%
    }
  %>
</div>
<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>