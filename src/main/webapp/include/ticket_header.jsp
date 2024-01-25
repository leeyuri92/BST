<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/header.css" />
<%
  // Controller와 연결되는 부분
  String role = (String)request.getAttribute("role");
//  String nickname = (String)session.getAttribute("nickname");

  // 권한에 맞는 메뉴를 노출시키기 위해 변수 선언
  Boolean isAdmin = request.isUserInRole("ROLE_ADMIN");
  Boolean isManager = request.isUserInRole("ROLE_MANAGER");
  Boolean isUser = request.isUserInRole("ROLE_USER");

  Boolean isOk = false;
  if (isAdmin) {
    isOk = true;
  } else if (isUser) {
    isOk = true;
  }
%>
<nav class="navbar navbar-expand-sm " style="background-color: #f5f5f7;">
  <div class="container-fluid">
    <a  href="http://localhost:9000/mainpage/ticketList" class="navbar-brand" >
      <img src="/images/icon/Ticket.png" alt="" width="47" height="50">
      베스트 시니어 티켓
    </a>

    <div class="collapse navbar-collapse fw-bold fs-4">
      <ul class="navbar-nav nav justify-content-center ms-auto me-auto mb-0 mb-lg-0">

        <li class="nav-item">
          <a class="nav-link" href="/notice/noticeList">오픈공지</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/community/community.jsp">커뮤니티</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/ticket/ticketList">티켓팅</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/reservation/mypageForm?mbr_seq=1">마이페이지</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/QnA/QnA.jsp">고객센터</a>
        </li>
      </ul>
      <%
        // 초기화면 - 로그인 하기 전
        // false -> true 로 되면서 로그인 메뉴만 노출
        if(!isOk){
      %>
      <ul class="navbar-nav me-2 mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="/login" >로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/auth/join">회원가입</a>
        </li>
      </ul>
      <%
      }
      //  user로 로그인 했을 때
      //  false -> true 로 되면서 유저페이지 메뉴 노출
      else if(isUser){
      %>
      <ul class="navbar-nav me-2 mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="/reservation/mypageForm?mbr_seq=1"><%=role%></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/logout">로그아웃</a>
        </li>
      </ul>
      <%
        }
      %>


      <!-- 여기가 디자인 코드 삽입 위치  -->
<%--            <form class="d-flex mb-2 mb-lg-0" role="search">--%>
<%--              <div class="me-auto mt-2 mb-lg-0"><%=nickname %>님.&nbsp;</div>--%>
<%--              <input type="button" class="btn btn-outline-success" onclick="logout()" value="로그아웃">--%>
<%--            </form>--%>
<%--            <script>--%>
<%--              const logout = () =>{--%>
<%--                console.log("로그아웃 버튼 클릭");--%>
<%--                location.href="/authc/logout";--%>
<%--              }--%>
<%--            </script>--%>
<%--      <form class="d-flex mb-2 mb-lg-0" role="search">--%>
<%--        <div class="me-auto mt-2 mb-lg-0"><%=nickname %>님.&nbsp;</div>--%>
<%--        <input type="button" class="btn btn-outline-success" onclick="logout()" value="로그아웃">--%>
<%--      </form>--%>
<%--      <script>--%>
<%--        const logout = () =>{--%>
<%--          console.log("로그아웃 버튼 클릭");--%>
<%--          location.href="/logout";--%>
<%--        }--%>
<%--      </script>--%>
<%--      <%--%>
<%--        }--%>
<%--      %>--%>

      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="검색" aria-label="Search">
        <button class="btn btn btn-outline-primary" type="submit">

          <a  href="#">
            <img src="/images/icon/Search.png" alt="" width="30" height="30">
          </a>

        </button>
      </form>
    </div>
  </div>
</nav>
