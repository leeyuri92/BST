<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/regist.css">
  <title>회원가입 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script type="text/javascript">
    /* 자바 스크립트 부분 */
    const memberInsert=()=>{
      document.querySelector("#f_member").submit();
    }
    </script>
</head>
<body>
<!--================================= header start ==================================-->
	<%@include file="/include/ticket_header.jsp" %>
<!--================================= header start ==================================-->
<div class="container mt-5" id="memberForm">
  <div class="page-header">
    <h2 class="nav justify-content-center">회원가입</h2>
    <hr />
  </div>
</div>
<!--================================= body start ==================================-->
<div class="memberContainer">
  <form id="f_member" method="post" action="/auth/regist">
    <div class="form-floating mb-3 mt-3">
      <input
        type="text"
        class="form-control"
        id="mbr_id"
        name="mbr_id"
        placeholder="Enter 아이디"
      />
      <label for="mbr_id">아이디</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="password"
        class="form-control"
        id="mbr_pwd"
        name="mbr_pwd"
        placeholder="Enter 비밀번호"
      />
      <label for="mbr_pwd" >비밀번호</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="password"
        class="form-control"
        id="mbr_pwd"
        name="mbr_pwd"
        placeholder="Enter 비밀번호확인"
      />
      <label for="mem_pw" type="password">비밀번호확인</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="text"
        class="form-control"
        id="mbr_nm"
        name="mbr_nm"
        placeholder="Enter 이름"
      />
      <label for="mbr_nm">이름</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="text"
        class="form-control"
        id="mbr_birthdate"
        name="mbr_birthdate"
        placeholder="Enter 생년월일"
      />
      <label for="mem_name">생년월일</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="text"
        class="form-control"
        id="mbr_phone"
        name="mbr_phone"
        placeholder="Enter 전화번호"
      />
      <label for="mbr_phone">전화번호</label>
    </div>
    <div class="form-floating mb-3 mt-3">
      <input
        type="text"
        class="form-control"
        id="mbr_email"
        name="mbr_email"
        placeholder="Enter 이메일"
      />
      <label for="mem_email">이메일</label>
    </div>
    <div class="input-group">
      <input
        type="text"
        class="form-control"
        id="mbr_address"
        name="mbr_address"
        placeholder="우편번호"
      />
      &nbsp;
      <input
        type="button"
        class="btn btn-success"
        onclick="openZipcode()"
        value="우편번호찾기"
      />
    </div>
    <div style="margin-bottom: 5px"></div>
    <div style="display: flex; flex-wrap: wrap">
      <input type="text" class="form-control" id="mbr_postalcode" name="mbr_postalcode"
        placeholder="주소"/>
    </div>
    <div class="form-floating mb-3 mt-3">
      <select class="form-select" id="team_id" name ="team_id" aria-label="Default select example">
        <option selected>1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
      </select>
    </div>
    </form>
    <div class="memberfooter">
      <input
        type="button"
        class="btn btn-warning"
        value="닫기"
      />
      <input
        type="button"
        class="btn btn-danger"
        onclick="memberInsert()"
        value="회원가입"
      />
    </div>

<!--================================= body start ==================================-->
<script>
  //회원가입 우편번호찾기
  // 여기배포햇나? -head에 위치 - 호이스팅이슈
  // 단-DOM 읽혀진 이후에만 접근이 가능하다 - undefined - 배포위치 고려해본다 -기준
  const openZipcode = () => {
              new daum.Postcode({//Postcode객체 생성하기  - 생성하자마자 내부에 구현하기가 전기해고있다
                  oncomplete: function(data) {//완료되었을때 - 요청에 대한 응답이 완료되었을때 -이벤트처리
                      let addr = ''; 
                      if (data.userSelectedType === 'R') { 
                          addr = data.roadAddress;//도로명
                      } else { 
                          addr = data.jibunAddress;//지번
                      }
                      console.log(data);
                      console.log(addr);
                      //console.log(post.postNum);
                      //setPost({...post, zipcode:data.zonecode, addr:addr}) ;
                      // document.querySelector("#mem_zipcode").value = data.zonecode;//우편번호
                      // document.querySelector("#mem_address").value = addr;//주소
                      document.getElementById("mbr_address").value = data.zonecode;//우편번호
                      document.getElementById("mbr_postalcode").value = addr;//주소
                      //document.getElementById("postDetail").focus();
                  }
              }).open();
          }
  </script>

<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</div>
</body>

</html>