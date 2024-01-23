<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>메인 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>

  <script type="text/javascript">
    /* 자바 스크립트 부분 */

  </script>
  <link rel="stylesheet" href="/css/mainpage.css" />
</head>
<body>
<!--================================= header start ==================================-->
<%@include file="/include/ticket_header.jsp" %>
<!--================================= header start ==================================-->

<!--================================= body start ==================================-->
<!-- <hr /> -->
<div class="container">
  <div class="page-header">
    <h2 class="nav justify-content-center"></h2>
  </div>
</div>
<!--================================= 메인보드 start ==================================-->
<div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
  <div class="carousel-inner">
    <a href="http://localhost:9000/mainpage.jsp" class="carousel-item active">
      <img src="/images/banner/samsung.png" class="d-block w-100" alt="삼성라이온즈메인사진">
    </a>
    <a href="http://localhost:9000/mainpage.jsp" class="carousel-item">
      <img src="/images/banner/kiwoom.png" class="d-block w-100" alt="키움히어로즈메인사진">
    </a>
    <a href="http://localhost:9000/mainpage.jsp" class="carousel-item">
      <img src="/images/banner/hanwha.png" class="d-block w-100" alt="한화이글스메인사진">
    </a>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- <hr/> -->
<!--================================== 메인보드 end ===================================-->
<!--================================= 메인예매 start ==================================-->
<div class="container " id="reservation">
  <div class="body_title">
    <h2 class="ticket text-center">예매하기</h2>
  </div>
  <div class="row row-cols-1 row-cols-md-3 row-cols-lg-5 ">
    <!-- 기존 카드 1 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">삼성LIONS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 기존 카드 2 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">키움HEROS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>


    <!-- 기존 카드 3 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">두산BARES</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 4 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">한화EAGLES</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 5 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">신세계LANDERS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 6 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">엔씨DINOS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 7 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">기아TIGERS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 8 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">롯데GIANTS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 9 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">케이티WIZ</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

    <!-- 새로운 카드 10 -->
    <div class="col ticket">
      <a href="http://localhost:9000/reservation/ticketList.jsp">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-color: blue;">
          <img src="/images/icon/Ticket.png" alt="Bootstrap" width="60px" max-height="60px" class="rounded-circle">
          <p class="t_name">엘지TWINS</p>
          <P class="g_date">일정: YYYY-MM-DD</P>
        </div>
      </a>
    </div>

  </div>
</div>

<!-- Bootstrap 및 관련 스크립트 링크 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>


<!--================================= 메인예매 end ==================================-->
<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>