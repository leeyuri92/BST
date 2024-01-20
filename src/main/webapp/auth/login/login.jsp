<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="/css/login.css">
    <%@include file="/common/bootstrap_common.jsp" %>

    <script type="text/javascript">
        /* 자바 스크립트 부분 */

        const findID = () => {
            console.log("findID");
            //     controller로 입력받은 값 넘기기
        };
        const findPW = () => {
            console.log("findPW");
            // controller로 입력받은 값 넘기기
        };

    </script>

</head>
<body>
<!-- header start -->
<%@include file="/include/ticket_header.jsp" %>
<!-- header end -->

<div class="container-fluid1 d-flex justify-content-center align-items-center">
    <div class="box1 d-flex justify-content-center align-items-center">
        <div class="login-form-container">
            <div class="fs-4 fw-bold text-white">베스트 시니어 티켓</div>
            <div class="fs-6 text-white">로그인 하세요~~</div>

            <div class="input-group flex-column gap-1">
                <label for="username" class="fs-6 fw-bold text-white">아이디</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="username" placeholder="아이디 입력">
                </div>

                <label for="password" class="fs-6 fw-bold text-white">비밀번호</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="password" placeholder="비밀번호 입력">
                </div>
            </div>

            <div class="d-flex gap-3">
                <button class="btn btn-light border fw-bold" style="width: 180px;">로그인</button>
                <button class="btn btn-dark fw-bold" style="width: 180px;" onclick="location.href='/auth/regist/regist.jsp'">회원가입</button>
            </div>

            <div class="d-flex gap-3">
                <button type="button" class="btn btn-secondary btn-sm"  data-bs-toggle="modal" data-bs-target="#findID">
                    아이디 찾기
                </button>
                <button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#findPW">
                    비밀번호 찾기
                </button>
            </div>
        </div>

        <div class="social-login-container">
            <div class="mb-3 fs-5 fw-bold text-white">간편로그인</div>
            <div class="d-flex gap-5">
                <img src="/images/ko/iconKakao.png" >
                <img src="/images/ko/iconNaver.png">
                <img src="/images/ko/iconGoogle.png" >

                <%--                    <hr class="my-4">--%>
                <%--                    <h2 class="fs-5 fw-bold mb-3">Or use a third-party</h2>--%>
                <%--                    <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-3" type="submit">--%>
                <%--                        <svg class="bi me-1" width="16" height="16"><use xlink:href="#twitter"/></svg>--%>
                <%--                        Sign up with Twitter--%>
                <%--                    </button>--%>
                <%--                    <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-3" type="submit">--%>
                <%--                        <svg class="bi me-1" width="16" height="16"><use xlink:href="#facebook"/></svg>--%>
                <%--                        Sign up with Facebook--%>
                <%--                    </button>--%>
                <%--                    <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-3" type="submit">--%>
                <%--                        <svg class="bi me-1" width="16" height="16"><use xlink:href="#github"/></svg>--%>
                <%--                        Sign up with GitHub--%>
                <%--                    </button>--%>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


<%--dddddddddddddddddddddddddddddddddddddd--%>
<div class="modal" id="findID">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content rounded-4 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <h1 class="fw-bold mb-0 fs-2">아이디 찾기</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body p-5 pt-0">
                <form class="">
                    <%--        <form id="findID" method="get" action="/컨트롤러메소드?">--%>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-3" id="floatingID_name" placeholder="Leave a comment here">
                        <label for="floatingID_name">이름 입력</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control rounded-3" id="floatingID_email" placeholder="name@example.com">
                        <label for="floatingID_email">이메일주소 입력</label>
                    </div>
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" style="background-color: #334CA5;"  onclick="findID()">찾기</button>
                    <small class="text-body-secondary">아이디 바로 보여주기 구현</small>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ========================== [[ find ID Modal End ]] ========================== -->

<!-- ========================== [[ find PW Modal Start ]] ========================== -->
<div class="modal " id="findPW">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content rounded-4 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <h1 class="fw-bold mb-0 fs-2">비밀번호 찾기</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body p-5 pt-0">
                <%--                <form id="findID" method="get" action="/컨트롤러메소드?">--%>
                <form class="">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-3" id="floatingPW_id" placeholder="ID">
                        <label for="floatingPW_id">아이디 입력</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control rounded-3 " id="floatingPW_email" placeholder="name@example.com">
                        <label for="floatingPW_email">이메일주소 입력</label>
                    </div>
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit"  style="background-color: #334CA5;" onclick="findPW()">찾기</button>
                    <small class="text-body-secondary">입력하신 이메일로 임시비밀번호를 보내드립니다.</small>

                </form>
            </div>
        </div>
    </div>
</div>

<%--dddddddddddddddddddddddddddddddddddddd--%>
</body>
</html>