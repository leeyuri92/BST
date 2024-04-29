# BST 어르신을 위한 간편티켓 예매 서비스
> 초고령화 시대 현장티케팅이 어려운 어르신을 위한 사회서비스와 디지털 기술 융합을 통한
고령사회 해결책에 가까워지는 스포츠 문화를 위한 서비스

- 간단한 클릭과 입력 만으로 티켓을 예약
- 어르신을 위한 확정 티켓

![](../header.png)

## 개발일정

![image](https://github.com/Uari/BST/assets/92838028/4b3e2959-294f-4c1d-bc34-4e952d3af0b5)



## 개발 환경

   |개발환경|버전|
   |------|---|
   |**운영체제**|Windows 11 OS|
   |**Tool**|Intellij (ver.2023.3.2), POSTMAN(ver.10.21.14), Figma, CMDR, ERDCloud, JIRA|
   |**DBMS**|MySQL DB - workbanch|
   |**Server**|Apache Tomcat (ver.10.1.17)|
   |**개발 언어**|Java(ver.17.0.8.1), HTML5, CSS, JavaScript, jQuery(ver.1.11.1), JSP|
   |**라이브러리**|SpringBoot(ver 3.1.7), MyBatis(ver 3.0.3)|
   |**API**|DaumPostcode|
   |**형상관리**|GitHub|


## DB설계
>회원, 티켓팅, 경기, 게시판 등 14개 테이블 사용

![BST 사이드 프로젝트_DB설계](https://github.com/Uari/BST/assets/92838028/06833c70-023e-40d6-b6e8-e272258644d0)




## 구현기능

**Spring Security**
1. 로그인
2. 아이디찾기
3. 회원가입
4. 소셜로그인
5. 세션

**티켓팅**
1. 경기일정 확인
2. 티켓예약 

**마이페이지**
1. 회원정보조회
2. 예약내역확
3. 회원정보수정

**게시판**
1. 등록, 수정, 삭제, 
2. 댓글 (등록, 삭제)
3. 조회수
