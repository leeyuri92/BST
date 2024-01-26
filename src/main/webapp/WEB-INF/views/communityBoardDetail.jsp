<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
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

        .custom-button {
            margin-top: 10px;
        }

        .form-group {
            margin-top: 20px;
        }

        /* Updated styling for buttons */
        .btn-danger {
            background-color: #dc3545;
            color: white;
        }

        .btn-primary-custom {
            background-color: #007bff;
            color: white;
        }
    </style>

    <script type="text/javascript">

        // 게시글 삭제
        const boardDelete = () => {
            if (!confirm("게시글을 삭제하시겠습니까?")) return;
            const boardId = ${communityBoard.boardId};
            window.location.href = `/community/delete/${boardId}`;
        }

        // 댓글 삭제
        const commentDelete = () => {
            if (!confirm("댓글을 삭제하시겠습니까?")) return;
            const commentId = ${commentId};
            window.location.href = '/community/view/${boardId}/${commentId}/deletecomment';
        }


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
            <div class="row delete-update-buttons">
                <div class="col-md-6 delete-btn">
                    <form action="/community/delete/${communityBoard.boardId}" method="get">
                        <button class="btn btn-danger" name="submit" type="submit">삭제</button>
                    </form>
                </div>
                <div class="col-md-6 custom-button">
                    <form action="/community/updateForm/${communityBoard.boardId}" method="get">
                        <button type="submit" class="btn btn-primary-custom">수정</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 댓글 리스트 -->
<div class="row comment-list mt-3">
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
                    <a href="#" onclick="commentDelete(${comment.commentId})">[댓글 삭제]</a>
                    <td>${comment.commentContent}</td>
                    <td><c:out value="${comment.commentCreatedAt}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<!--댓글 리스트-->
<div class="card">
    <div class="card-header">댓글 리스트</div>
    <ul id="reply-box" class="list-group">
        <c:forEach var="comment" items="${commentList}">

            <li id="reply-${comment.commentId}" class="list-group-item d-flex justify-content-between">
                <div> ${comment.commentContent}</div>
                <div class="d-flex">
                    <div class="font-italic">댓글 번호 : ${comment.commentId}</div>
                    <c:if test="${comment.commentId != null}">
                        <button onclick="commentDelete(${comment.commentId}, ${communityBoard.boardId})" class="badge">
                            삭제
                        </button>
                    </c:if>
                </div>
            </li>

        </c:forEach>
    </ul>
</div>

<!-- 댓글 작성폼 -->
<div class="row comment-form mt-3">
    <div class="col-md-12">
        <h3>댓글 작성</h3>
        <form action="/community/view/${communityBoard.boardId}/writecomment" method="post">
            <!--댓글 입력 폼-->
            <div class="form-group">
                <label for="commentContent">Comment:</label>
                <textarea class="form-control" rows="5" id="commentContent" name="commentContent"
                          placeholder="댓글을 입력해주세요."></textarea>
            </div>
        </form>
    </div>
</div>


<!--댓글 삭제 -->
<div class="row post-write">
    <div class="col-md-12 form-container">
        <button class="btn btn-warning" onclick="commentDelete()">댓글 삭제 1</button>
    </div>
</div>

<!--댓글 삭제-->
<div class="col-md-6 custom-button">
    <form action="/community/view/${communityBoard.boardId}/${comment.commentId}/deletecomment" method="get">
        <button type="submit" class="btn btn-primary-custom">댓글 삭제 2</button>
    </form>
</div>


<!--================================= body end ==================================-->
<!--================================= footer start ==================================-->
<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->
</body>
</html>