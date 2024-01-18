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
  <title>마이페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <link rel="stylesheet" href="/css/mypageForm.css">

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
  <div class="page-body">
    <div class="mypageBody">
      <div class="rounded-circle">
        <img src="/images/logo/kiaLogo.png" style="width: 60; height: 46;">
      </div>
      <div class="userInfo">
        <div class="userText">박병현</div>
        <div style="color: black; background-color: #504f4f; width: 65px;">일반회원</div>
        <div class="userText">bioqudgus@gmail.com</div>
      </div>
      <div>
        <button class="button" onclick="profile()">
          프로필
        </button>
      </div>
    </div>
    <div class="category">
      <div>
        <img id="img_category" src="/images/icon/openNotice.png">
        <a href="/notice/openNotice.jsp" id="img_text">공지사항</a>
      </div>
      <div>
        <img id="img_category" src="/images/icon/Community.png">
        <a href="/community/community.jsp" id="img_text">커뮤니티</a>
      </div>
      <div>
        <img id="img_category" src="/images/icon/ticketting.png">
        <a href="/ticket/ticketList.jsp" id="img_text">티켓팅</a>
      </div>
      <div>
        <img id="img_category" src="/images/icon/reservation.png">
        <a href="/mypage/reserveForm.jsp" id="img_text">예약내역</a>
      </div>
      <div>
        <img id="img_category" src="/images/icon/QnA.png">
        <a href="/QnA/QnA.jsp" id="img_text">고객센터</a>
      </div>
    </div>
  </div>
</div>



<div class='login-footer d-grid gap-2 d-md-flex justify-content-md-center'>
  
  <button class="button" style="background-color: #334CA5;" onclick="reserveForm()">
    예약내역
  </button>
</div>

<!--================================= body start ==================================-->
<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->

</body>
</html>