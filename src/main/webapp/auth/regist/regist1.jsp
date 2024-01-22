<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/regist1.css">
  <title>회원가입</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<%@include file="/include/ticket_header.jsp" %>

  <div class="page">
    <div class="header-container">
      <div class="title">베스트 시니어 티켓 회원가입</div>
      <img class="movie-ticket" src="https://via.placeholder.com/47x65" />
    </div>

    <div class="input-container">
      <div class="title-required">* 표시는 필수기입정보입니다</div>
      <div class="input-title">
        <span style="color: black;">아이디 </span>
        <span style="color: #8F0303;">*</span>
      </div>
      <div class="textfield">
        <div class="text">아이디를 입력하세요.</div>
      </div>
    </div>

    <!-- Repeat the above structure for other input sections -->

    <div class="button-container">
      <div class="secondary-button">
        <div class="button-text">취소</div>
      </div>
      <div class="primary-button">
        <div class="button-text">회원가입</div>
      </div>
    </div>
  </div>


  <!-- Bootstrap JS and Popper.js CDN links -->
	<%@include file="/include/ticket_footer.jsp" %>
</body>
</html>