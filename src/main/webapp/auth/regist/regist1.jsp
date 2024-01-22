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

  <div class="container mt-5">
    <div class="card p-4">
      <h2 class="text-center mb-4">회원가입</h2>
      <form id="f_member" method="post" action="/auth/regist">
      <div class="form-group">
        <label for="username">아이디 <span class="text-danger">*</span></label>
        <input type="text" class="form-control" id="username" placeholder="아이디를 입력하세요.">
      </div>

      <div class="form-group">
        <label for="password">비밀번호 <span class="text-danger">*</span></label>
        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요.">
      </div>

      <div class="form-group">
        <label for="confirmPassword">비밀번호 확인 <span class="text-danger">*</span></label>
        <input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호를 재입력하세요.">
      </div>

      <div class="form-group">
        <label for="name">이름 <span class="text-danger">*</span></label>
        <input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요.">
      </div>

      <div class="form-group">
        <label for="dob">생년월일 <span class="text-danger">*</span></label>
        <input type="date" class="form-control" id="dob">
      </div>

      <div class="form-group">
        <label for="phone">전화번호 <span class="text-danger">*</span></label>
        <input type="tel" class="form-control" id="phone" placeholder="전화번호를 입력해주세요.">
      </div>

      <div class="form-group">
        <label for="email">이메일 <span class="text-danger">*</span></label>
        <input type="email" class="form-control" id="email" placeholder="이메일을 입력해주세요.">
      </div>

      <div class="form-group">
        <label for="address">주소(선택사항)</label>
        <div class="input-group">
          <input type="text" class="form-control" id="address" placeholder="우편번호" aria-describedby="search-btn">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="search-btn">검색</button>
          </div>
        </div>
      </div>

      <div class="form-group">
        <label for="detailedAddress">상세주소</label>
        <input type="text" class="form-control" id="detailedAddress" placeholder="상세주소를 입력해주세요.">
      </div>

      <div class="form-group">
        <label for="team">구단(선택사항)</label>
        <select class="form-control" id="team">
          <option value="" selected>구단을 선택해주세요.</option>
          <option value="team1">팀 1</option>
          <option value="team2">팀 2</option>
          <!-- Add more options as needed -->
        </select>
      </div>
    </form>

      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="button" class="btn btn-warning">취소</input>
        </div>
        <div class="form-group col-md-6">
          <input type="button" class="btn btn-danger"
          onclick="memberInsert()">회원가입</input>
        </div>
      </div>
    </div>
  </div>



	<%@include file="/include/ticket_footer.jsp" %>
  <!-- Bootstrap JS and Popper.js CDN links -->
</body>
</html>