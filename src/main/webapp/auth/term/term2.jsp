<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/term1.css">
  <title>약관동의 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <script type="text/javascript">

  </script>
</head>
<body>
  <%@include file="/include/ticket_header.jsp" %>
  <div class="container-custom">
    <div class="inner-container">
      <div class="welcome-text">고객님 <br/><br/>환영합니다.</div>
      <br>
      <img class="img-fluid" src="/images/icon/ticketting.png" alt="Placeholder Image" />
    </div>

    <div class="checkbox-section">
      <div class="checkbox-container">
        <div class="custom-checkbox"></div>
        <div class="checkbox-label">약관 전체동의</div>
      </div>
    </div>

    <br>

    <div class="checkbox-section">
      <div class="checkbox-container">
        <div class="custom-checkbox"></div>
        <div class="checkbox-label">이용약관 동의(필수)</div>
      </div>
    </div>


    <div class="checkbox-section">
      <div class="checkbox-container">
        <div class="custom-checkbox"></div>
        <div class="checkbox-label">개인정보 수집 및 이용동의(필수)</div>
      </div>
    </div>

    <br>
    <br>

    <div class="button-container">
      <div class="custom-button">
        <button class="button-text">다 음</button>
      </div>
    </div>
  </div>

  <%@include file="/include/ticket_footer.jsp" %>
</body>
</html>