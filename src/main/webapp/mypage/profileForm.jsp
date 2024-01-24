<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%
  List<Map<String, Object>> memberList = (List) request.getAttribute("memberList");
  out.print(memberList);
  Map<String, Object> mmap = memberList.get(0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>프로필</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  <link rel="stylesheet" href="/css/mypageForm.css">

  <script type="text/javascript">
      function pwCheck(){
          if($('#mbr_pwd').val() != ""){

            if($('#mbr_pwd').val() == $('#check_pwd').val()){
                $('#pwConfirm').text('비밀번호  일치').css('color', 'green')
            }else{
                $('#pwConfirm').text('비밀번호 불일치').css('color', 'red')
            }
          }else{
            $('#pwConfirm').text('비밀번호를 입력하세요').css('color', 'black')
          }
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
    <h2 class="nav justify-content-center"><%=mmap.get("mbr_nm")%> 프로필</h2>
  </div>
</div>
<div class="profileBody">
  <div class="pofileCircle">
    <%
        if(mmap.get("team_name").equals("없음")){
    %>
    <img src="/images/logo/kboLogo.png" style="width: 150px; height: 150px; border-radius: 100%;">
    <%
        }else{
    %>
      <img src="/images/logo/<%=mmap.get("team_name")%>" style="width: 150px; height: 150px; border-radius: 100%;">
    <%
        }
    %>
  </div>
  <form class="memberInfo" action="member/memberProfile" method="post">
    <table class="table table-striped">
      <thead>
      <tr>
        <th><h3>회원정보</h3></th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>이메일</td>
        <td>
            <input type="text" id="mbr_email" name="mbr_email" value="<%=mmap.get("mbr_email")%>" placeholder="이메일">
        </td>
        <td></td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td>
          <input type="password" id="mbr_pwd" name="mbr_pwd"  oninput="pwCheck()" placeholder="비밀번호">
        </td>
        <td>
        </td>
      </tr>
      <tr>
        <td>비밀번호 확인</td>
        <td>
          <input type="password" id="check_pwd" oninput="pwCheck()" placeholder="비밀번호 확인">
        </td>
        <td>
          <span id="pwConfirm">비밀번호를 입력하세요</span>
        </td>
      </tr>
      <tr>
        <td>이 름</td>
        <td>
            <%=mmap.get("mbr_nm")%>
        </td>
        <td></td>
      </tr>
      <tr>
        <td>전화번호</td>
        <%
          String regEx = "(\\d{3})(\\d{3,4})(\\d{4})";
          String phoneNum = mmap.get("mbr_phone").toString().replaceAll(regEx, "$1-$2-$3");
        %>
        <td>
            <input type="text" id="mbr_phone" name="mbr_phone" value="<%=phoneNum%>" placeholder="'-' 없이 입력해주세요">
        </td>
        <td></td>
      </tr>
      <tr>
        <td>나의구단</td>
        <td><%= mmap.get("team_name") %></td>
        <td>
            <button class="btn btn-outline-primary">변경</button>
        </td>
      </tr>
      </tbody>
      <tfoot>
      <tr>
        <td style="color: #B8B8B9">계정삭제</td>
        <td></td>
        <td>
          <button class="btn btn-outline-primary" style="color: #B8B8B9">삭제</button>
        </td>
      </tr>
      </tfoot>
    </table>
  </form>
</div>
<br/>
<div class='btn footer mx-3'>
  <button class="button">저장</button>
  <button class="button">취소</button>
</div>


<!--================================= body start ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>