<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List " %>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 게시글 페이지</title>
    <%@include file="/common/bootstrap_common.jsp" %>
    <style>
        body {
            padding-top: 60px;
        }

        .page-header {
            padding: 20px;
            border-bottom: 1px solid #e9ecef;
        }

        .details-container {
            margin-top: 20px;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
        }

        .details-box {

        }

        .comment-list {
            margin-top: 20px;
        }

        .comment-list h3 {
            margin-bottom: 10px;
        }

        .comment-list ul {
            list-style-type: none;
            padding: 0;
        }

        .comment-list li {
            border: 1px solid #e9ecef;
            padding: 10px;
            margin-bottom: 10px;
        }

        .delete-btn {
            margin-top: 10px;
        }
    </style>

    <script type="text/javascript">
    </script>
</head>
<body>
<!--================================= header start ==================================-->
<%@include file="/include/ticket_header.jsp" %>
<!--================================= header end ==================================-->

<!--================================= body start ==================================-->
<!-- 게시글 상세 정보 -->
<div class="container">
    <div class="card">
        <h5 class="card-header">게시글 정보</h5>
        <div class="col-md-12 details-container">
            <div class="details-box">
                <h5 class="card-title">${communityBoard.boardTitle}</h5>
                <p>작성자: ${communityBoard.memberName}</p>
                <p>조회수: ${communityBoard.boardHit}</p>
                <p>내용: ${communityBoard.boardContent}</p>
                <p>작성일: ${communityBoard.boardCreatedAt}</p>
            </div>
            <div class="delete-btn">
                <form action="/community/delete/${communityBoard.boardId}" method="get">
                    <button class="btn btn-danger" name="submit" type="submit">삭제</button>
                </form>
            </div>
            <div class="custom-button">
                <form action="/community/updateForm/${communityBoard.boardId}" method="get">
                    <button type="submit" class="btn btn-primarily">수정</button>
                </form>
            </div>
        </div>
    </div>

    <!-- 댓글 리스트 -->
    <div class="row comment-list">
        <div class="col-md-12">
            <h3>댓글 리스트</h3>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">내용</th>
                    <th scope="col">작성일자</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="comment" items="${commentList}">
                    <tr>
                        <th scope="row">${comment.commentId}</th>
                        <th scope="row">${comment.commentContent}</th>
                        <td><c:out value="${comment.commentCreatedAt}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <!-- 댓글 작성폼 -->
    <div class="form-group">
        <label for="comment">Comment:</label>
        <textarea class="form-control" rows="5" id="comment" placeholder="Enter your comment"></textarea>
    </div>
</div>


<!--================================= body end ==================================-->

<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>