<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/term.css">
  <title>약관동의 페이지</title>
  <%@include file="/common/bootstrap_common.jsp" %>
  
  <script type="text/javascript">
    /* 자바 스크립트 부분 */
  // JavaScript code for handling "Agree to All" checkbox
  document.addEventListener('DOMContentLoaded', function () {
      var agreeAllCheckbox = document.querySelector('.allAgree input[type="checkbox"]');
      var individualCheckboxes = document.querySelectorAll('.singleSelector');

      // Event listener for "Agree to All" checkbox
      agreeAllCheckbox.addEventListener('change', function () {
        var isChecked = agreeAllCheckbox.checked;

        // Set the state of individual checkboxes based on "Agree to All" checkbox
        individualCheckboxes.forEach(function (checkbox) {
          checkbox.checked = isChecked;
        });

        // Enable or disable the "다음단계" button based on the "Agree to All" checkbox
        var nextStepButton = document.querySelector('.uBtn[data-id="nextStep"]');
        nextStepButton.disabled = !isChecked;
      });

      // Event listener for individual checkboxes
      individualCheckboxes.forEach(function (checkbox) {
        checkbox.addEventListener('change', function () {
          // Disable "Agree to All" checkbox if any individual checkbox is checked
          agreeAllCheckbox.disabled = Array.from(individualCheckboxes).some(function (checkbox) {
            return checkbox.checked;
          });

          // Enable or disable the "다음단계" button based on the state of individual checkboxes
          var nextStepButton = document.querySelector('.uBtn[data-id="nextStep"]');
          nextStepButton.disabled = Array.from(individualCheckboxes).every(function (checkbox) {
            return !checkbox.checked;
          });
        });
      });

      // Event listener for "다음단계" button
      var nextStepButton = document.querySelector('.uBtn[data-id="nextStep"]');
      nextStepButton.addEventListener('click', function () {
        // Navigate to the membership registration page
        window.location.href = '/auth/regist/regist.jsp'; // Replace with the actual URL
      });
    });
    function openWindowPop(url, name){
    var options = 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no';
    window.open(url, name, options);
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
    <h2 class="nav justify-content-center">약관동의</h2>
    <hr />
  </div>
</div>
<!--================================= body start ==================================-->
  <div class="uCheckbox allAgree">
    <label><input type="checkbox"><span class="text">약관 전체 동의</span></label></div>

    <div class="termsBlock">
     
      <div class="label">필수 동의 항목</div>

      <div class="termsItem">
        <div class="uCheckbox sType">
          
          <label><div class="inputWrap"><input type="checkbox" class="singleSelector requireSelector">
            <span class="text"></span>
          </div>
        </label><div class="checkboxCont">
          <a href="javascript:openWindowPop('/popup/pop_agreement.html', 'popup');" class="btn btnLink">[필수] 이용약관</a>
        </div>
      </div>


    <div class="uCheckbox sType">
      <label><div class="inputWrap">
        <input type="checkbox" class="singleSelector requireSelector">
        <span class="text"></span>
      </div></label>
      <div class="checkboxCont">
        <a href="javascript:openWindowPop('/popup/pop_service.html', 'popup');" class="btn btnLink">[필수] 개인정보 수집동의서</a>
      </div>
    </div>
</div>
</div>
</div>

<div class="ubtnArea">
      <div class="col"><button type="button" class="uBtn active" disabled="" data-id="nextStep">다음단계</button>
      </div>
  </div>
<!--================================= footer start ==================================-->
	<%@include file="/include/ticket_footer.jsp" %>
<!--================================== footer end ===================================-->


</body>
</html>