# CYCODING (사이좋게 코딩하자)

CYCODING은 1개월 동안 준비한 비트캠프 3조의 파이널 프로젝트입니다. <br>
6개월동안 배운 것을 총 활용해서 작업한 프로젝트이며, 5명의 팀원과 함께 만들었습니다.
<br>
<br>

# 프로젝트 소개

사이코는 사이드 프로젝트를 중심으로 개발자들간 매칭을 시켜주는 커뮤니티 웹 사이트이다.<br> 
개발자들에게 가장 필요한 사이드 프로젝트 경험과 프로젝트를 위한 구인을 제공한다.<br> 
누구나 아이디어를 구체화시킬 수 있는 프로젝트를 개설하고, 인원 모집을 수월하게 할 수 있게 기능을 제공한다.<br>
<br>
<br>

# 프로젝트 주제 선정 배경

개발자들에게 취직이나 이직을 위한 필수 요소 중 하나로 사이드 프로젝트를 꼽는다.  <br>
개인적으로 포트폴리오를 만들 수도 있지만, 팀을 구성해서 만들 경우에는 이를 기반으로 협업의 기회가 생기기도 한다. <br>
하지만 개발직군에서 사이드 프로젝트를 위해 팀원을 구하기 위해서는 오프라인에서 소개를 받거나, 여러 사이트에 댓글을 남기고 마냥 기다려야한다. <br>
이러한 불편함과 어려움을 극복하고 개발자들에게 편리함을 주기 위해 사이드 프로젝트 웹 사이트를 구축하기로 하였다. <br>
<br>
<br>

# 프로젝트 기본 설정
<img src ="https://user-images.githubusercontent.com/76239872/124429347-bcfeee00-dda8-11eb-902f-b9387c367c6d.png" >

* 기본 폰트 : font-family : Noto Sans, ROboto
* 제목용 텍스트 크기는 21px
* 본문 텍스트 크기는 16px
* 표 내부 폰트 크기는 14px
<br>
<br>

# 개발 환경
```BASH
Programming Language - Java 1.8
IDE - Eclipse
DB - OracleDB 
Framework - MyBatis, Spring 4
Build Tool - Maven
```
<br>
<br>

# 프로젝트 구성
<img src = "https://user-images.githubusercontent.com/76239872/124429020-4eba2b80-dda8-11eb-8afd-fede0acf3e0c.png" >

클라이언트의 요청이 들어오면 web.xml을 거쳐 시큐리티, 서블릿 컨텍스트, 루트 컨텍스트를 통과한 뒤 컨트롤러로 진입하게 된다. <br>
이후 DTO를 타고 Model단인 서비스, DAO를 지나 데이터 베이스까지 오게 된 뒤 다시 모델단을 거치게 됩니다. <br>
그리고 다시 컨트롤러를 지나 view를 사용자에게 응답하는 구조로 설계하였습니다. <br>
<br>
<br>

# DATABASE ERD
<img src = "https://user-images.githubusercontent.com/76239872/124430196-d5bbd380-dda9-11eb-8348-deaa26dfe1da.png" >


# Spring Transaction
<img src = "https://user-images.githubusercontent.com/76239872/124430986-cbe6a000-ddaa-11eb-9a0e-59a4b3d1bbdd.png" width="100%" height="400px">
만약 사용자가 입력한 정보가 INSERT 도중에 예외가 발생된다면 <br>
데이터베이스의 데이터들은 INSERT 작업이 되기 전의 상태로 다시 되돌아가져야 하고, 다시 생성 작업이 진행되어야 할 것입니다. <br>
이 문제를 해결하기 위해 트랜잭션을 사용하였습니다.
<br>
<br>

# Mybatis
<img src="https://user-images.githubusercontent.com/76239872/124431323-2f70cd80-ddab-11eb-97e9-a86c6620a888.png" >
마이바티스에서  다이나믹쿼리 사용예시입니다. <br>
관리자페이지에서 마이페이지나 프로젝트 생성시 필요한 기술/포지션/분야 리스트들을 수정할 필요가 있습니다. <br>
그래서 각각 항목마다 추가 할 수 있는 기능을 만들었습니다. 여기 이 항목들의 테이블 이름과 컬럼명만 다를 뿐 구조는 비슷합니다. <br>
그렇기 때문에 DAO를 하나하나 만들어주는 것은 비효율적이라고 생각되어서 하나의 DAO에서 모두 해결하기로 했습니다. <br>
<br>
<br>

