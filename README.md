스프링 작업순서
스프링 HelloWorld MVC 프로젝트 org.edu.controller 제작OK.
wamp(만세아이콘)으로 마리아DB(3306포트) 설치, 사용자암호 추가 및 한글처리OK.
워크벤치 설치 및 ERD 작성연습, 샘플DB(edu)임포트 및 리버스 엔지니어링으로 ERD제작OK.
샘플반응형 웹페이지(mobile,tablet,pc용) 및 J쿼리 페이지 작성OK.
스프링 프로젝트 관리자단 AdminLTE(부트스트랩)기반으로 제작OK.
스프링 테스트 pom.xml(외부라이브러리가져다가사용하는 방식) 디펜던시 의존성 추가OK.
메이븐기반 전자정부표준프레임워크 egov3.9버전 -> 3.10으로 업드레이드OK.
junit(JavaUnit) 테스트 설정 후 기본 unit유닛(단위)테스트OK.
jdbc(JavaDataBaseConnection)사용 pom.xml 의존성 추가OK.
Mysql사용 pom.xml 의존성 추가OK.
마이바티스 사용(CRUD쿼리를관리하는툴) pom.xml 의존성 추가OK.
junit으로 DB접근 후 관리자단 회원관리 CRUD unit테스트 마무리OK.
@Component애노테이션사용으로 MemberVO 인젝션사용 가능OK.
DB 디버그용 드라이버 사용 pom.xml 의존성 추가 후, log4jdbc.log4j2.properties 추가 OK.
--------------- 여기까지 ------------------
실제 회원관리 화면 CRUD 적용 중...
스프링 AOP(관점지향프로그래밍-OOP의 확장기능)기능으로 개발용 디버그출력환경 만들기.
실제 게시판 화면 CRUD 적용.
파일업로드 라이브러리 사용 pom.xml 의존성 추가.
게시판 업로드 화면 구현.
Json데이터 사용 pom.xml 의존성 추가.
실제 댓글 화면CRUD적용.(우리가 만들어서 제공 Rest-API백엔드단)
사용자단 html(https://miniplugin.github.io/) 소스를 커스터마이징 후 jsp로 만들기.
스프링시큐리티 로그인 구현 pom.xml 의존성 추가(회원가입시 패스워드 암호화 추가).
헤로쿠 클라우드로 배포(Hsql데이터베이스사용).
사용자단 CRUD 구현.
오라클로 마이그레이션 작업.
이후 유효성검사, 파스타클라우드, 네이버아이디 로그인(네이버에서 제공Rest-API백엔드단) 사용 등등. pom.xml 의존성 추가.
####20210115(금)
서블렛자바+JSP(jstlX)프로그램 - 스트러츠웹프로그램만들기 - 스프링+jsp(jstl)웹프로그램만들기
DB부분 헤로쿠 베포: root-context에 Hsql DB위치 변경/temp/~ + 1회용 초기화 부분 주석 해제
DB부분 Pc용으로 작업 : root-context에 Hsql DB위치 변경 c:/~ 1회원 초기화 부분 주석 처리
첨부파일 업로드 경로 변경:
헤로쿠: /temp/~
pc: C:~
####20210114(목)
HSQL: 간단한 웹프로그램 제작시 사용하는 DB.- 개발자들이 빨리 만들때, 프로토타입, 신규서비스전 간단하게 작업시 주로 이용.Hsql는 서비스용은 아니고, 개발전용 입니다.
임베디드 DB(Hsql)=내장된 DB라이브러리모듈=메모리 DB 단점: 톰캣서버를 재실행하면, 메모리DB에 추가/수정내용이 사라짐
실습은 embeded_hsql_file로 적용예정 입니다.=fileDB의 장점: 톰켓서버를 재 실행해도 Mysql처럼 내용이 보존됨.
헤로쿠(URL)에 배포(HsqlDB로 배포, 메이븐 외부 라이브러리 추가필수 pom.xml수정)
헤로쿠클라우드의 특징: 무료, 1달 사용450시간까지 무료로 접근이 가능.(트래픽시간을 초과했습니다 면서 URL접근이 X)
헤로쿠의 단점: 30분 동안 URL에 접근하지 않으면, ZZZ 휴면상태로 진입 -> 활성화시키는데 20초 정도 필요.
스프링기능중에 스케줄기능 -> 20분마다 1번씩 URL https://kimilguk.herukuapp.com 에 접근하도록 만들면 해결
스프링의 스케즐 프로그램 제작OK.(회원에게 3개월동안 접속하지 않는 사용자들에게 일괄적으로 메세지를 보낼때)
####20210107(목)
prepend, append, after J쿼리 기능.
어제 작업한 댓글 리스트 btn_reply_list 버튼id에 부트스트랩(J쿼리기반의 프레임워크)의 토글기능을 넣어서
하단 댓글리스트(페이징포함)를 나타나고, 숨기는 기능을 넣게되겠습니다.
위 작업: 1. 액션버튼부분 : data-toggle="collapse" data-target="#div_reply"
대상 타켓 부분
토글영역
댓글 jsp에서 Ajax,jQuery사용해서 CRUD처리 마무리.
입사지원시 코딩테스트 할때 아래처럼 기초이론을 구현해보라는 요구사항 때문에 정리(아래)
Ps.싱글톤이 사용되는 이유참조: https://shxrecord.tistory.com/132
Ps.싱글톤 빈(스프링)에 대해서(1개의 빈은 1개의 빈객체만 생성해서 사용하겠다명시)
https://m.blog.naver.com/PostView.nhn?blogId=sksk3479&logNo=221175889439&proxyReferer=https:%2F%2Fwww.google.com%2F
Ps.싱글톤 클래스(자바)에 대해서(1개의 클래스는 1개의 인스턴스만 생성해서 사용하겠다명시)
우리가 사용한 경우: 달력 인스턴스 생성. Calendar.getInstance() 참조정보(아래)
https://m.blog.naver.com/PostView.nhn?blogId=heartflow89&logNo=221001179016&proxyReferer=https:%2F%2Fwww.google.com%2F
####20201229(화)
CK에디터 사용을 하려다가, 이클립스 내장브라우저에서 작동하지 않아서 섬머노트 에디터로 변경처리.
input type="file" name="file" 바로 DB테이블에 저장할 수 없습니다.
save_file_name, real_file_name 이런 테이블필드에 저장하기전에 전처리 과정이 필요합니다.
첨부파일 등록시 전처리 과정: (아래)
전처리 과정 1. 서버에 저장공간(폴더)에 save_file_name이름으로 .jpg, .hwp, .xls 저장되는 기능필요
전처리 과정 2. 물리DB테이블에 save_file_name필드, real_file_name필드, bno게시물번호필드 에 저장되는 기능필요
####20201224(목)
V6.0.0과목시작.
사용자단 홈페이지 퍼블리싱한 결과물을 webapp/resources폴더에 home폴더명으로 생성.
관리자단 /resources 폴더 루트: 관리자단은 디자인변경이 없습니다.
사용자단 /resources/home 폴더에 위치한 이유, 사용자단은 1년마다 리뉴얼합니다.
위와 같은 상황에서 /resources/home2020, /resources/home2021폴더 -> 개발자가 jsp변경예정
사용자홈페이지는 부트스트랩라이브러리(사용자홈페이지용 댓글때문에-우리가만들예정) 추가.
스프링시큐리티에서 사용하는 암호화는 단방향 암호화 입니다.(복호화가 안되는 방식)
통합구현에서 사용된 어댑터(Adapter): 안드로이드 스튜디오 어댑터라는 용어사용.
어댑터: 데이터베이스 -> 어댑터(데이터를 변환하는 기능-스프링의DAO클래스와 비슷) -> 입출력VO클래스 - 화면출력(바이딩).
웹의 3요소(웹표준-HTML5, 웹접근성-장애인접근이가능한콘텐츠제작, 웹호환성-크로스브라우징)
인터셉터(Interceptor-가로채기)클래스를 만들예정: 예외처리를 error.jsp로 공통에러페이지생성해서 바인딩 처리할때.
AOP 작동않되었던문제점 2가지처리예정(아래)
Controller클래스가 빈으로 등록되는 servlet-context.xml 에도 aop태그 추가
DebugAdvice클래스의 logger.debug를 logger.info로 변경 또는, log4.xml설정 debug로 변경
####20201223(수)
스프링의 특징3가지 : DI(의존성 주입:Dependency Injection), AOP(관점지향프로그래밍) , IoC(제어의 역전 Inversion of Control:개발자가 처리하였던 메모리관리(가비지컬렉션-쓰레기프로그램종료시키기)-개발자가 코딩으로 오브젝트클래스를 종료할 필요없이, 스프링이 대신 처리 하는 기능) IoC예(아래), 개발자편리위주로 변경된 프레임워크 스프링입니다.
스프링 AOP(관점지향프로그래밍-OOP의 확장기능)기능으로 개발용 디버그출력환경 만들기 시작.
AOP(Aspect Oriented Programming): 구조화된 OOP의 단점인 복잡도 증가를 줄이는 효과를 기대해서 만든 프로그램 방식 입니다.
즉, OOP자바클래스단에서 제어하던 반복되는 명령을 호출단에서 제어하도록 변경한 내용이 AOP입니다.
예, 인증처리, 디버그와 같은 에러처리를 개발 클래스에서 처리하지않고, 공통클래스 1개 만들어서, 인증이나, 예외처리(디버그)가 필요할때 마다 호출되는 시스템을 AOP라고 합니다.
예외처리를 AOP로 구현하면서, 기능을 확인해 봅니다.
DATABASE폴더에 edu_mysql.sql 더미스키마+데이터 백업작업.
맥OS 워크벤치 백업이 오동작 -> phpMyAdmin 툴변경 내보내기(백업)했습니다.
프로그램에서 데이터크기단위: 8비트단위=2의8제곱=256개=> 왜 데이터크기를 0~255=256개
ERD만들기: 발주사의 업무담당자와 미팅(협의)끝난 이후,
발주사(회사,대학,관공서)에서 사용하는 업무서식문서(결제서류,입학원서,입사원서,월급명세서,휴가신청서 등등)를 가지고, ERD를 만들게 됩니다.
wamp(만세아이콘)실행.
프로젝트에서 DATABASE폴더 안의 edu_mysql.sql 삭제.
스프링에서 작업시 순서: DataBase > 쿼리 > DAO > Service > Controller > jsp
####20201222(화)
중복아이디체크(Ajax로 간단한 RestAPI컨트롤러 구성): 중복아이디가 존재한다면, SUBMIT버튼을 비활성화(disabled)
중복아이디가 존재하지 않을때만 SUBMIT버튼이 활성화시키는 Jquery를 사용합니다.
중복아이디체크는 버튼을 사용하지 않고, 아이디 input 항목을 벗어났을때 이벤트를 이용해서 Ajax를 호출할 예정.
한글이 POST시 깨지는 문제: web.xml 에서 한글처리를 위한 UTF-8필터 추가(필수)
####20201221(월)
변수변경1: 쿼리에서 사용되는 시작인덱스 startNo 변수를 queryStartNo 으로 변경예정
변수변경2: 쿼리에서 사용되는 1페이지당출력할개수 perQueryPageNum 변수를 queryPerPageNum 으로 변경예정
totalCount가 들어가는 계산식 변경(아래)
tempEnd*this.perQueryPageNum > this.totalCount (임시끝페이지x쿼리에서1페이지당출력할개수 > 실제전체개수)
this.totalCount/(double)this.queryPerPageNum (실제전체개수/쿼리에서1페이당출력할개수)
this.endPage*this.perQueryPageNum < this.totalCount (계산된끝페이지x쿼리에서1페이지당출력할개수 > 실제전체개수)
queryStartNo(쿼리시작인덱스) = perQueryPageNum*(this.page-1);//2페이지계산 10x(2-1) = 10[계산결과나온 시작페이지번호]

####20201218(금)
 연계(인터페이스) 정의서 및 명세서.(11번째 과목에서 작성하시게 됩니다.)
- 위 명세서는 https://www.gitbook.com/ 여기서 작업해서 만듭니다. 또는 pptx로 만듭니다.
- PK(식별자): Primary Key(기본키,고유키) 주민번호와 같은 우리나라에서 1개인 값.
- 테이블에서 고유한 PK: 엔티티에서 유일한 값.
- 프로그래밍언어활용 채점리뷰 OK.
- 통합구현 NCS학습모듈 이론 1-2단원.
- IT분야 먼저해봤다는 것이 중요하고, 그이상 그이하도 아닙니다.(박사, 석사, 고졸이 중요한 것이 아니고, 먼저해본사람이 우수한 기술자가 됩니다.)
####20201217(목)
중계시스템(연계시스템): Agent시스템, RestAPI서버(중계시스템)
HTML(링크드문서) 다음에 XML(자료를저장한문서) 출시
쿼리 에서 정렬방법: Ascending(ASC오름차순)123456..., Descending(DESC내림차순)...654321
정렬기준: 페이징처리시 bno(게시물번호) 기본정렬기준으로 어제 테스트했음. 예, 최신등록일 order by reg_date DESC
HRD-Net의 오픈API 파라미터(URL쿼리스트링) 키값을 확인하는 중 입니다.
HRD-Net의 인증(보안)절차는 OAuth(Open Authentication 오픈인증)2.0 를 사용.(페이스북,트위터,네이버아이디로그인,구글로그인 같은 OpenAPI인증을 사용) 로그인 인증은 받았으나, 최고관리자,일반관리자, 시간제학생, 학점은행제학생, 교수, 일반인 등 기관마다 다 틀리기 때문에 권한체크는 개발자가 만들어서 프로젝트를 구성합니다.)
스프링시큐리티와 매칭을 시켜보면, 2가지로 로직이 진행됩니다. Authentication(오센티케이션)인증체크, Authority(오서러티)권한체크(개발자몫).
송신시스템(스프링프로젝트)-중계시스템(RestAPI서버,댓글컨트롤러)-수신시스템(jsp단 Ajax호출)
백엔드개발: 프로젝트10개당(6개월x10=5년) 1개 하드웨어(IoT,아두이노,라즈베리파이)와 연동
####20201216(수)
수의순서: 0,10 -> 10,10 -> 20,10
jsp에서 사용가 선택한 페이지번호를 이용해야 페이징처리가 가능.
?page=3&searchType=all&searchKeyword=
PageVO클래스만들때, get 페이지번호, set 계산식을 적용 쿼리에 limit변수 첫번째 값으로 넣어줌.
GET page=위 URL쿼리스트링의 페이지 번호;
1페이지계산 10x(1-1) = 0 1페이지일때
2페이지계산 10x(2-1) = 10 2페이지일때
3페이지계산 10x(10-1) = 90 10페이지일때
SELECT * FROM tbl_board
order by bno desc
limit [SET으로 받은 계산된 변수값], 10;
데이터 정렬에 사용되는 기준값 위에서는 bno(게시판번호)
Order By 데이터정렬에 상용되는 키워드(예약어)
정렬은 오름차순(Ascending)낮은수->높은수 : 옛글부터 보여준다.
내림차순(Descending) 높은수->낮은수 : 최신글부터 보여준다.
src/test/java 에서 kr.or.member 패키지 내의 MemberService.java 내에서 마지막 줄인 System.out.println(cnt + "번째 레코드는 " + member.toString()); 여기서 .toString()을 한 이유가 member라는 변수 안에 글자랑 숫자가 섞여서 .toString으로 문자형으로 변환해주는 건 알겠는데요 그럼 .toString을 빼면 오류가 나야하지않나요? 빼도 왜 오류가 안 나는지 모르겠어요
인터페이스(책 목차 5개) - 임플리먼트클래스(책 내용 5개) 관계: 1대1 원칙)
DB 디버그용 드라이버(실행쿼리가 콘솔화면 나오도록-개발자가 실행확인을 편리하게함) 사용 pom.xml 의존성 추가.
의존성 추가 후 root-context.xml에서 jdbc드라이버설정을 변경하면, 아래 콘솔창에서 쿼리가 보이고, 전송자료들을 확인할 수 있어서, 개발할때 필수 입니다.
####20201215(화)
-워크벤치 쿼리 실행 참조 mapper쿼리->DAO클래스 호출->Service클래스 호출 = 1개의 클래스 사용 스프링Boot방식
-DAO,Service를 2개의 클래스로 나눈 이유는 현업에서 사용되는 솔루션들이 2개로 클래스를 나눈 구조이기 때문에.
-위의 구조를 사용하는 이유는 DB엑세스
-인터페이스 영역 (메소드명세파일-이름만 존재) - implements
####20201214(월)
데이터베이스 사용 라이브러리 추가(pom.xml)
스프링 테스트 pom.xml 디펜던시 의존성 추가
의존성추가1. jdbc(Java Database Connection)모듈추가 후 설정 필수.
의존성추가2. Mysql 모듈추가 후 설정.
====================================
위 2가지로 스프링에서 데이터베이스 커넥션 처리 , DriverManagerDataSource (DB커넥션)
====================================
의존성추가3. jdbc와 Mysql데이터베이스 중간에 쿼리를 사용하는 역할 Mybatis 모듈추가 후 설정 필수.
위 의존성 마이바티스로 스프링에서 쿼리를 관리하는 처리 , sqlSessionFactory (쿼리생성)
====================================
마이바티스에는 Select, Insert, Update, Delete쿼리를 수행하는 메서드들.
위 의존성 Mybatis로 스프링에서 쿼리를 호출하는 메서드명(인터페이스)을 처리, sqlSessionTemplate(쿼리호출메서드명)
====================================
DataSource(커넥션)-sqlSessionFactory(쿼리생성)-sqlSessionTemplate(쿼리호출메서드)

####20201211(금)
프링 빈(등록되어서 사용가능하게된 클래스) 이 등록되는 절차(아래)
- 톰캣서버(WAS)가 실행될때, 로딩 실행되는 파일 순서(아래)
- web.xml 최초 실행.
- 1. root-context.xml 실행.
- 2. servlet(server + let = 서버프로그램): servlet-context.xml 실행.
- 위 서블렛콘텍스트 안에 있는 component-span 의 패키지에 존재하는 아래 @~클래스를 읽어 들여서 빈으로 등록합니다.(아래)
- @Controller, @Servcie, @Repository, @RestController(Rest-API)
-------------------------------------------------------
- 자바에서 인스턴스 오브젝트를 만들때, ClassName className = new ClassName(); 오브젝트를 만들었음.
- 스프링에서 오브젝트를 생성하지 않고, 오브젝트를 주입하다고 하고, 기술용어로 DI(Dependency Injection)의존성주입.
- 의존성주입(DI,외부모듈)할때, @Inject=@Autowired 줄바꿈하고, ClassName className;
- 위 DI방식으로 SecurityCode클래스를 주입받아서, unscript메서드를 사용하였습니다.
- 쿼리스트링: 쿼리(질의)스트링(문자열) URL에서 쿼리스트링이라고 하면, URL?키1=값1&key2=value2
- /admin/board/board_view?bno=${boardVO.bno}
####20201209(수)
- Rest API방식으로 화면을 처리것이 트렌드 입니다.(빅데이터를 시각화하는 데 RestAPI+Ajax 기술사용)
- Rest: Representation 기존데이터를 가지고, 화면 깜빡임 없이 데이터를 재가공하는 처리.
- REST API사용되는 기술: 데이터 전송/수신 Ajax기술(프론트-개발자)로 처리. API(서버단기술)
- Ajax: Asyncronized Javascript and Xml 비동기 통신으로 자바스크립트로 Json(text자료)를 재처리하는 기술. 
- prefix(jstl), suffix(servlet-context.xml)
- prefix ,suffix 그냥 경로의 앞부분 뒷부분 생략가능하게 만드는 역할
- @RequestMapping...반환값에서 prefix(/WEB-INF/views/)가 사용, suffix(.jsp)
-	...
-		return "{prefix}admin/board/board_list{suffix}";
-	...
- 아래에서 사용된 prefix는 생략가능하다.
- <beans:property name="prefix" value="/WEB-INF/views/" />
- 아래에서 사용된 suffix는 생략가능하다.
- <beans:property name="suffix" value=".jsp" />
- 전체 틀(아래 읽으시면) : 자바이론 공부하신, 아래 데이터 흐름을 제어하는데 사용.
- 여러명의 회원 정보(MemberVO-자료형클래스를이용부분)를
- 전달주고받고(MainControler-메서드,URL호출부분), 
@@ -9,9 +20,7 @@
- for (MemberVO member : members) {// members여러 레코드중 1개의 레코드를 member오브젝트객체로 대입
- 1번째반복-> members[0]레코드데이터=>MemberVO member객체벼수 =>출력시 member.toString();
- 2번째반복-> members[1]레코드데이터=>MemberVO member객체변수 =>출력시 member.toString();
- 3번째반복-> members[2]레코드데이터=>MemberVO member객체변수 =>출력시 member.toString();
####20201208(화)
- 반복문: for, forEach, while
forEach예) for(member(변수):member_list(데이터리스트)){구현내용}
- 연산자 : +-*/,=(대입연산자)
- 라이브러리(jar) : 오브젝트클래스가 모여있는 패키지를 라이브러리
- 람다식: 자바버전 8부터 지원하는 축소 코딩 방식이다. -> 에로우 화살표로 익명 메소드를 표시 호출시 자동실행을 구현
- 자바스크립트에서 코백함수 부분=>에로우 화살표로 대체해서 축약해서 표시해서 호출시 자동실행을 구현.
- 람다식은 특별한 로직없어서 논리적인 내용이 없고, 단순이 코드를 생략할 때 ->에로우. ()익명함수 2개를 사용해서 코드사용을 축소화
- 2차원 배열타입 변수 -> 클래스 오브젝트 배열타입으로 변경
- 제네릭: Generic 일반적인 변수 타입. Map<String,Integer> mapTest = new HashMap<String,Integer>();
- 제네릭을 사용하는 이유: 코딩작업시 매개변수의 타입을 제한을 두어서, 값을 입출력 할 때 에러 상황을 미리 확인 하기 위해서.
#### 20201207(월) 작업
- 바이트스트림(문자가 아닌데이터): InputStream, OutputStream 클래스 사용. 게시판첨부파일은 바이트스트림으로 데이터를 input,output
- 파일로부터 입/출력이 필요할때는 : FileInputStream(FileReader),FileOutputStream(FileWriter) 클래스 사용.
- 캐릭터스트림(문자데이터) : Reader, Writer 클래스를 사용.
- 파일 업로드 경로가 없으면, /tmp에 저장된다. 이러면 업로드된 파일 관리가 안되기 때문에, 경로지정이 필요.
- 헤로쿠에서/tmp에 저장하겠지만, 실제로는 tmp에 저장하고 서버를 부팅하면, tmp내용은 사라진다. 
- File클래스와 입출력 스트림 : 웹프로그램에서는 파일 업로드/다운로드 기술이 사용한다.
- 스레드 특징 : 비동기적으로 run이 실행된다. 그래서 통신프로그램에서 많이 사용.
헤로쿠 클라우드에서는 HSql 데이터베이스(프로토타입용)를 사용합니다.
헤로쿠에서도 Mysql(Maria)DB를 사용할 순 있으나, 신용카드번호가 필요해서 제껴 놓겠습니다.
로컬PC에서는 HSql+Mysql -> 오라클용으로 마이그레이션해서 사용하는 방법을 배우시게 됩니다.
java.lang패키지: Thread클래스는 통신프로그램에서 사용(안드로이드 앱)-
통신에서 스레드를 사용하는 이유는 데이터를 요청하고, 응답을 받을때까지 기다려야 합니다. 1개의 스레드가 기다려야합니다.
위 상태에서는 통신프로그램때문에, 웹프로그램이 멈춰야 합니다. 이 상황은 방지하려고, 비동기(멀티) 스레드를 사용합니다.
데이터를 응답받는 스레드 중간에, 다른 스레드를 실행하는 역할이 필요합니다.
예외처리하는 목적: 에러발생시 프로그램을 멈추지 않고, 계속 사용할 수 있도록 하는 목적으로 예외처리를 함.
예를 들면, 스마트폰앱에서 에러발생 시, 앱이 꺼져버리면, 계속 이어서 사용할 수 없음.
그런데, 에러발생시 예외처리를 하게 되면, 앱이 꺼지는 것이 아니고, 그 화면만 사용못하고, 앱에서 다른 화면은 이용가능하게 됩니다.
다형성: 오버로딩/오버라이딩을 설명/구현할때, 다형성을 사용합니다.
동적바인딩: 동적(runtime시) 실행시 적용되는 값. 메서드의 매개변수(파라미터,인자)는 메서드를 호출할때, 값을 전송하게 됨(바인딩).
#### 20201204(금) 작업
클래스는 개별 객체의 상태 정보를 저장하는 필드와 개별 객체의 행동 양식을 규정하는 메소드를 포함할 수 있다.
회원멤버클래스를 만들기 실습: 회원 상태정보를 저장하는 필드(멤버변수:user_id, user_name, email,...)생성.VO(Value Object)클래스
회원멤버클래스를 만들기 실습: 회원 맴버변수의 행동양식을 규정한는 메소드(함수)를 생성.
abstract(추상)클래스/메서드 예: abstract class calc { add(){}; minus(){}; multi(){}, sub(){}; }
객체지향프로그래밍(OOP)-Object Oriented Programming 인스턴스(실행가능한클래스)를 사용하는 프로그램.
new 키워드로 만드는 오브젝트를 사용하는 방식이 필수.(한 물 간 방식)
참조형변수: 객체가 위치해 있는 주소 값을 저장한다. = 실행가능한 변수 = 인스턴스변수 = 메모리에 로딩된 변수
참조형변수예1: String s3 = new String(); //인스턴스 변수=오브젝트 를 이런방식 만들어서 사용함.
new String("초기값인자");//new String()괄호 안에 매개변수가 없는 생성자를 기본생성자.
클래스 만들때 생성자메서드를 개발자가 만들필요가 없음. 왜냐하면, 자바에서는 컴파일할때 자동 만들어 주기 때문에, 필수지만, 만들 필요가 없음.
new String()처럼 클래스이름과 똑같은 메서드를 생성자 매서드라고 한다.
String 클래스 -> new 키워드로 만들어진 s3는 오브젝트(인스턴스변수)-실행가능한클래스변수
참조형변수예2: s3 = "일반변수값입니다.";
기본형변수예: String s3 = "일반변수값입니다.";//일반변수는 이 방식을 사용 단, 클래스형 변수는 new 키워드로 생성한 인스턴스 변수를 주로 사용합니다. 단, 스프링에서는 new키워드로 만드는 인스턴스 클래스변수보다는 사용방법 더 간단한 @인젝트(주입)방식의 변수를 사용.(스프링에서는 DI-Dependency Inject 용어를 사용)
자바프로그램중 반복문: 향상된 for문을 시작합니다.
다국어지원하는 문자셋을 만들때: 유니코드로 제작. \u0041 => 유니코드에디터에서는 A 로 수정합니다.
#### 20201203(목) 작업
변수의 종류 아래 3가지.
- 지역변수: 메서드 내에서 만든 변수로서, 메서드 안에서만 유효함.
- 멤버변수(클래스변수=static): 클래스 전역에서 사용가능한 변수. VO(Value Object)클래스에서 주로 사용.
- static(스태틱)변수/메서드: 정적변수/메서드. 클래스에서 유일한 변수/메서드 라는 말.
- 인스턴스 클래스=오브젝트=실행가능한 클래스
- 파라미터=매개변수, 매서드명(파라미터위치);
- javac HelloWorldApp.java -encoding UTF-8 (자바컴파일방법: 소스에 한글 옵션)
- javac자바컴파일러로 위에서 만든 HelloWorldApp.class파일은 실행가능한 파일 입니다.
- 클래스파일 실행은 java kr.or.test.HelloWorldApp 단, 실행할 위치는 src/test/java
- 분신처리(마이크로서비스) : 댓글달기-Ajax = RestAPI(개발의핫트랜드)-대표예(네이버아이디로그인 구현)
- 일반웹프로그램은 동기처리: 화면이 기능이 종료될때 까지 멈춰있다.
- 분신웹프로그램은 비동기처리: 기능이 실행중이여도 다른 화면이 멈춰있지 않게 됨.
- 오픈소스-자바스크립트(웹브라우저용 js스트리트언어, 프론트쪽) - 크롬 브라우저만 있으면 실행됨. 
- 오라클-자바(웹서용 jsp컴파일언어, 백엔드쪽) - 크롬브라우저 + 톰캣 서버가 있어야만 실행됨.
- 앞으로 스프링프로젝트 주 작업은 헤로쿠 클라우드로 배포합니다.(왜냐하면, 파스타정책이 체험신청 2주간으로 되어있어서)
- 수료하실때쯤 면접일정에 맞춰서, 프로젝트를 파스타에 배포.
#### 20201202(수)
- 상대경로: .(현재폴더위치), ../(상위폴더위치), 파일위치를 지정할때 사용. return(스프링반환값)
- 절대경로: URL경로
- 게시판 html화면 구현하기 전, 관리자관리 부분 제어용 컨트롤러 클래스 만든다.
- admin/include/header.jsp의 메뉴링크를 html상대경로에서 Admin컨트롤러의 절대경로로 변경처리.
/admin/member_list, /admin/board_list
-데이터를 전송/수신하는 관계는 나중에 진행
#### 20201201(화)
-html lang="en"
-외부 라이브러리 불러오는 상대경로를 절대경로로 변경.
-관리자단 html화면구현한 내용을 jsp 만들어서 컨트롤러 자바클래스에서 링크만 걸어준다.
#### 20201130(월)
- Iframe 화면 레이아웃과는 상관없이, 콘텐츠가 들어갈 영역을 잡는 역할하는 태그.
- URL
- 스프링에서는 관리자단, 사용자단이 나눠져서 개발된다.
- 관리자는 거의 외부 디자인을 사용한다.
- 사용자단은 개성있는 내부 디자인을 사용한다.
- AdminLTE로 관리자단 화면을 구현.
- 위 템플릿을 사용하는 것은 템플릿의 html-css-js를 가져다가 사용하는 방법.
- 화면구현한 스태틱 html소스를, V6.0.0 시간에 jsp로 변경해서,프로그램을 입히게 된다.
#### 20201127(금)
스프링부트 버전2.0 (조그만동생): 소규모 프로젝트(스타트업)-조달청에 올라가는 프로젝트X
스프링부트 자동으로 생성되는 코드많아서, 사용하기 편하지만(장점), 커스터마이징 한계가 있습니다.(단점)
스프링프레임워크 버전4.3.22 (큰형): 중대형 프로젝트 - 조달청에 올라가는 프로젝트O
스프링프레임워크는 커스터마이징하는 프로젝트에 유용합니다.(장점), 복잡하다는 것이 단점.
/resources/sample/반응형페이지 : 실제서비스되는 내용은 아닙니다. 퍼블리셔가 만들어서 준것을 개발자가 여기다 배치 하는 공간 입니다.
위와 같은 콘텐츠를 Static콘텐츠라고 합니다.(스태틱은 고정적인 내용-html, css, js, img)
Static콘텐츠(많이사용)반대<->동적콘텐츠(jsp 프로그램으로 콘텐츠 내용이 수시로 변경되는 영역)
대표적인 Dynamic콘텐츠영역 : 게시판 입니다.(게시물을 등록하면, 콘텐츠가 동적 늘어납니다.)
실제 개발은 위에서 만든 퍼블리셔 결과물을 이용해서 WEB-INF/views 폴더에 개발한 결과를 배치하게 됩니다.
헤로쿠 클라우드에서 서비스 되는 페이지가 WEB-INF/views 폴더에 위치하게 됩니다.
WEB-INF/views/sample폴더 생성 후 index.jsp
컨트롤러 자바클래스에서 외부에서 /접근시 index.jsp로 매핑시킨 후 확인.
퍼블리셔가 만든 index.html 복사해서 index.jsp 붙여넣기 후 확인.
jsp분리작업: include폴더 생성후 그안에 header.jsp, footer.jsp 2개만듭니다.
index.jsp 에서 header.jsp에 들어갈 영역 Cut해서 붙여넣기.
index.jsp 에서 footer.jsp에 들어갈 영역 Cut해서 붙여넣기. 후 확인.

#### 20201125(수)
-tr: table row : 테이블의 가로 선 영역.
-th: table head : 테이블의 가로선내에 제일 상단에 있는 컬럼(필드) 영역.
-td: table data : 테이블의 가로선내의 컬럼(필드)데이터 영역.
-유스케이스다이어그램(이클립스): 관계(릴레이션-Relation)
-관계: Generalization(일반화) - 부모-자식(상속관계)
-관계 일반화란? 자식들(SUV,소형차,중형차,대형차)-extend -> -부모(자동차-일반화)-generalize
-관계 include? 포함관계,footer.jsp(하단Logo) --> home.jsp <-- header.jsp(상단메뉴,로고포함)
-관계 extend? 확장관계(상속관계)
- HTML(Hyper-text-markup-language)+CSS(Cascade-Style-Sheet)+JS(JavaScript)
- 위3가지 작업으로 결과물을 만드는 사람을 퍼블리셔 라고 함.=프론트엔드 개발자.
- 웹접근성(WebAccessbility): 사이트의 장애인 이용 가능성을 체크.

#### 20201124(화)
- 실행파일 확장자. .jar(자바archive실행파일),.war(웹archive실행),
- .apk(안드로이드Package실행),.aab(안드로이드AppBundle실행)
- 스프링웹프로그램, 안드로이드앱 제작 후 테스트가 2가지 후 운영배포(구글프레이스토어기준아래)
- alpha(알파)내부테스트, beta(베타)외부테스트, 프로덕션(상품)배포.
#### 20201123(월)
- 공공클라우드(public cloud):아마존, 구글클라우드- 정보를 클라우드 사업사(정보유출 우려 높음)
- 사설클라우드(private cloud): 파스타 - 고객회사 구축해서 사용.

- select box(웹앱) = combo box(PC앱)
- 기능적 요구사항: 개발자가 담당.
- 비능적 요구사항: 동시 접속자 수를 100명~1000명으로 늘려달라는 요구사항(하드웨어 기능 올려야 해결)
- 위 내용은 순간 트랙픽 용량을 10M->100M로 상향해달라는 요구사항.
- 화면전환효과: trasition 속성용 사용.
- CSS에서 가상선택자란 : 1. 가상클래스 2. 가상요소
- 가상클래스: 표시 a:hover(a링크인데, 마우스가a링크영역 위에 떠있을때의 영역)
- 가상요소:표시 a:hover::before(a링크에 마우스가 위에 떠 있을 때의 a영역의 앞의 영역)
#### 20201120(금)
- 소스 이쁘게 만들기 이클립스 단축키: source메뉴 -> format 클릭
- alter : Alt 교체하다는 의미.
- Alt : 이미지가 나오지 않을때, 대체로 나오는 문자.
- 페이지 제작순서
- 1. 이클립스에서 파일 생성하고, html 더미데이터 만들기
- 2. 영역분리하기 : 클래스 이름 지정하기
- 3. CSS 적용하기 : 자바스크립트 작업포함.
- 4. CSS 분리하기 : 테스트 후 마무리.
- 프로그램에서 대소문자, -, _ 에 대해서 설명드리겠습니다
- 우선 DB에서는 테이블명, 필드명 모두 소문자로 표시로 통일 합니다.(선택적 필수)
- 자바스크립트, 스프링(자바)에서는 변수/함수명, 클래스명 2가지로 나눕니다.(아래)
- 클래스명은 대문자로 시작합니다.(필수)
- 변수/함수명은 소문자로 시작합니다.(선택적 필수)
- 특히 CSS에서는 클래스명에 -(하이픈)이 가능합니다. 단, j쿼리(자바스크립트)에서는 변수/함수명에 - 이 들어가면 않됩니다.

#### 20201119(목)
- jQuery: 자바스크립트 프레임워크
- jQuery 사용법: 코어파일이 필요.(인터넷에서 가져와서 사용가능(CDN방식))
- 콜백함수란? 고전 함수처럼 함수명이 있는 것이 아니고, function()처럼 자동실행되는 함수.
- 404 not found:경로에 파일이 없을떄
- 500 error : 스프링프로그램에러일때
- 작업순서 1: html만들고, 더미데이터 생성
- 작업순서 2: body에서 3가지영역 분리 (header,section,footer)
- 작업순서 3: header영역의 3가지영역(로고,햄버거메뉴, 글로벌네비메뉴)
- 작업순서 4: 로고의 세부영역 디자인
- 작업순서 5: 햄버거메뉴 영역의 세부디자인
- 작업순서 6: 글로벌네비메뉴 영역의 세부디자인
- 작업순서 7: 자바스크립트로 햄버거메뉴의 토글기능 구현.
- 작업순서 8: 본문section영역 세부디자인(슬라이드부분).
- 작업순서 9: footer 영역 세부 디자인
- 작업마무리: home(index.html)메뉴의 작업 테스트 확인.
- 1페이지 모바일용 css작업 후, reset.css처럼 외부로 css파일 분리
- 나머지 페이지들도 작업
=================
- 모든페이지 모바일용 작업 후, 테블릿용, pc용 작업
- html(jsp)영역지정방식: tag방식,class방식,id방식
- id방식은 현재html문서에서 1개만 존재해야함
- class방식은 현재 html문서에서 여러개 존재해서 가능
- reset.css를 불러옴
#### 20201118(수)
HTTP: 7계층 응용계층
SSH : 5계층 세션계층
#### 20201117(화)
- 관리자 화면(CRUD, 회원관리, 게시판관리)->사용자화면(CRUD,게시판관리, 로그인처리)
- UI흐름 : 메뉴(링크) 구조도(필요한 정보를 찾기 쉽게).
- 아키텍쳐(스키마): 콤포넌트(플러그인-외부모듈)를 조합해서 프로그램을 만든 것을 말함.
- 프로젝트 마무리할 때 완료보고서중 아키텍처 구조도 엑셀파일을 이력서 작성시 포트폴리오로 제출.
#### 20201116(월)
- 파스타 클라우드 설정파일: manifest.yml 
===============================\
- 과제물제출은 구글 문서에 있는 내용
- 서술형 시험은 sw기초기술활용과목 1,2,3단원에서, 각3문제 총9문제가 나오게 됨.
- 대부분 단답형이고 sql쿼리도 2문제 포함되어 있다.
- sql쿼리는 ERD테이블그림을 보고, 테이블 생성하는 쿼리를 만드시고,
제출하시면 됩니다.
- 입력결과 예시를 보고, insert쿼리도 1개 만드는 내용동 있습니다.
- Beans: 스프링이 관리하는 클래스 빈(즈)
- 로그를 콘솔에 출력 : Logger(클래스명-데이터타입) logger(변수명)= 실행대상이 되는 클래스를 지정;
- 예를들어, int(데이터타입) age(변수명) =30;
- 위처럼 변수를 선언하고, 로그를 사용하려고, logger변수를 만들었다.
- 로그 출력 예 :logger.info("출력할 내용...");
- public class HomeController {내용}
- 
#### 20201113(금)
- 스프링 MVC구조 중 Controller 단 HomeController.java 자바클래스를 분석해보기.
==========================================
- HomeController 분석
- 클래스의 특정 : 클래스 이름은 반드시 대문자!
- 이름의 특징: 낙타등표기법=카멜표기법을 사용.Home+Controller
- 클래스의 MVC종류 역할표시 : 아래 3가지 콤포넌트
- @Controller:지시자 아래클래스는 컨트롤러 역할이다라고 스프링에서 명시.
- @Service:지시자 아래클래스는 프로그램직구현 역할이다고 스프링에서 명시.
- @Repository:지시자는 데이터베이스Model을 조작하는 역할이다라고 스프링에 명시.
- 자바주석 : 2가지 (아래)
- 1줄 주석 : // 로 시작
- 여러줄 주석 : /*~~~~*/ 
- import : 에노테이션 임포트지시어 외부 라이브러리(모듈)클래스 가져다가 사용하는 목적.
- 추가로 @import는 jsp에서 외부 라이브러리클래스 가져다가 사용할때 사용.
- 개발자가 import하는 것이 아니고, 이클립스가 자동으로 임포트 시켜준다.
- package : 패키지 자바소스코드를 관리하기 위해서 만든 가상영역
- 스프르이 MVC구조 중 View단 home.jsp 화면 분석(프론트엔드)
- 프론트엔드에서 제작한 html디자인파일 개발자가 jsp파일로 프로그램을 업히게 된다.
- JAVA : 오라클에서 제작한 프로그래밍 언어.
- jsp(java Server page) : 자바로 만든 홈페이지
- 헤로쿠에서는 HSql 메모리 데이터베이스 사용.
- 파스타에서는 Mysql 데이터베이스 사용.
- 세션: 원래 웹페이지는 페이지 이동시 로그인 정보 사라진다.
- 작업 순서
- 1. 이클립스에서 프로젝트 소스코드수정+기능추가
- 2. 이클립스 수정한 결과, Run on Server로 톰캣에서 확인
- 3. 깃에 푸시.
- 4. 헤로쿠에서 Deploy branch시키기.
- 5. 헤로쿠에서 OpenApp 버튼 : http://학생명.herokuapp.com/
## 11.12(목)
-실습 4 : 헤로쿠 클라우드에 kimilguk프로젝트 베포, 도메인URL로 크롬에서 확인예정
- pom.xml에서 수정사항이 발생되면,maven업데이트가 필요합니다.
-깃에 올릴때, 제외시킬 폴더를 지정. target폴더는 깃에서 제외시키는 방법
헤로쿠도 클라우드 설정파일을 작성해야지만, 작동가능
파일이름은 Procfile
- .gitignore 파일을 만들어서, target 이름을 적기
-root루트: 최상위 위치를 가리킨다.
-POM(Program Object Module).xml 파일에서 버전 변경
-스프링- 메이븐 프로젝트이면, 필수로 생성되는 파일 pom.xml
-pom.xml에 있는 의존성(dependency)은 외부프로그램모듈에 대한 의존해서 갖다가 사용한다.
-서블렛 (servlet): server프로그램+let ,미니서버프로그램
-인젝트 (Inject-주사바늘삽입) : 외부클래스 사용할때 쓰는 지시어 @Inject 사용
-Aspect(관점) : @Aspect 사용.
-지시어 = 에노테이션 = @
-자바버전 1.6-> 1.8
-스프링버전 4.3.22로 올리기
-깃서버와 이클립스 소스 연동
-깃 저장 순서 : 커밋+푸시
-형상관리 = 버전관리 = 소스관리 =팀작업
-이클립스 사용법 : 

#### 응용SW기초기술활용과목(4개의 단원)
- 4단원: 개발환경 구축하기 시작
- 빌드(building:건축물): 1. Maven(메이븐,이클립스에서), 2.Gradle(그래들,안드로이드스튜디오 앱)
- 메이븐빌드는 지겹도록 하시게 됩니다.
- ***빌드는 자바소스코드(.java)를 컴파일(.class)하고, 실행가능하게 프로그램모듈을 묶어(패키징)하는 역할.
- egov 는 삼성SDS, LG CNS, SK C&C 3개 컨소시엄으로 만들었고, 200억정도 비용이 들었습니다.
- 실습1: 깃 저장소 만들어서 소스코드버전관리(형상관리)를 할 예정. OK.
- 깃 github.com 에 아이디/암호 회원가입하십니다. -> kimilguk 깃저장소 만들었습니다.
- git scm 프로그램을 여러분 PC에 설치가 필요합니다. OK.
- 실습2: 이클립스에서 톰캣(Tomcat고양이) 웹서버 만드실 예정. OK.
- 실습3: 이클립스에서 kimilguk프로젝트 만드시고, 메이븐 compile(java->class파일), package(war파일) 3가지 실습예정.
- war(와르파일): Web ARchive 파일: 웹실행파일.
- 이전에는 개발자가 서버관리자에게 웹실행파일을 줄때 .war 파일을 전달해주고, 서버관리자 war파일을 배포했습니다.
- 아직도 보안이 중요한 기관(곳)은 위처럼 작업이 진행됩니다.(보안때문에 남아있음)
- 지금은 개발자가 (서버관리자않통하고)클라우드에 바로 배포합니다.(대세)
- 스프링 MVC 프로젝트 1개 만들었습니다.(Hello world!)
- 프로젝트선택 -> run as -> maven build... 선택 OK.
- 포트(도메인1개 서비스를 여러개로 분리할때): http://localhost:8080/controller (마리아DB 3306포트)
- context : 맥락(줄거리) OK.
- 깃 서버와 이클립스의 kimilguk프로젝트 연동시키는 방법 실습예정.
- 실습4: 헤로쿠 클라우드에 kimilguk프로젝트 배포, URL로 크롬에서 확인예정.

- egov 설치(설정) 후 실행 후 PDF이론 들어가겠습니다.
- 지금 스프링프레임워크 최신버전 버전 5.x
- egov: jsp, java, spring프레임워크(전자정부표준프레임워크), ibatis(mybatis)
- 제약사항: 전자정부프레임워크기반적용
- 전자정부표준프레임워크를 기반으로 웹프로그램을 제작하는 것을 공부
- 국방부(시청,관공서)와 같이 인터넷망이 분리되어 있는곳,
- 망이 분리되어 있어서 프로그램모듈을 인터넷으로 다운받지 못해서, 개발도 못하고.,
- 실행도 않됩니다.
- 그래서, 메이븐(프로그램모듈관리)에서 레포지토리를 설정하는 과정이 필요합니다.
- 프레임워크: 개발에 필요한 여러가지 유틸리티, 플러그인프로그램을 모아서
- 플러그인을 인터넷으로 다운받아서 웹프로그램에서 사용하게됩니다.
- 일일이 해당되는 프로그램을 웹페이지에서 다운받는게 아니고,
- ***Maven(메이븐)이라는 프로그램모듈(기능묶어놓은것-조립,분해가 가능것)관리하는 툴로 자동으로 다운로드 받게 됩니다.
- ***위 메이븐에서 관리하는 프로그램모듈들이 저장되는 위치가 Repository 입니다.
- 지금 화면에 보시는 부분이 위 레포지토리 위치 입니다.
- 스프링(자바)기반의 프로젝트 나라장터 공개입찰 (2000만원 이상)
- 개발하시게 되는 대부분은 4000만원이상, 2개월이상 부터
- 3명 ~ 5명 팀 작업이 진행.
- egov 쓰는 목적은 프로젝트를 발주(수주)할때 전자정부표준프레임워크기반
- egov 기반으로 개발하지만, 회사자체 프레임워크로 추가로 개발합니다.
- 그래서, egov는 기반만 가져다 쓰고, 개발자가 별도 추가로 개발합니다.
- 앞으로 전자정부표준프레임워크 용어를 egov 로 통일하겠습니다.
- 전자정부표준프레임워크 개발환경 설치(설정) 후 실행.
- 이론: 10년전에 시작한 스프링(자바)기반 웹프레임워크 입니다.
- 개발자가 사용하기 편하게 구성해 놓은 개발환경이 프레임워크 입니다.
- 구글에서 전자정부프레임워크 검색.
- 간단한 MVC 웹프로젝트 1개 생성.

- 과제물 정리 공지OK.

- 3단원: 네트워크 기초 활용하기.
- L4스위치: 역할, 분산(분리)해서 에러상황에 대처하는 장비(아래)
- 가정: 서비스하는 웹프로그램이 2대의 서버에서 서비스되고 있다.
- 만약 1대가 고장났을때, 나머지 1대로 서비스가 접속되도록 변경시켜(스위치) 주는 장치
- 윈도IP확인: ipconfig
- 리눅스IP확인: ifconfig
- NIC: 네트워크 인터페이스 카드 약자. = 네트워크 어댑터.
- 16진수: 0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F (숫자10개+문자6개=16개)
- 10진수: 0,1,2,3,4,5,6,7,8,9 (숫자10개)
- 네이버아이디로 로그인 개발(수업에있음)하실겁니다.
- http://127.0.0.1 (개발자용 전용의 PC 아이피) = http://localhost
- 개발자 초임(서울): 연봉2400~2800만( 직원10명 이상, 연매출 10억인, 법인(주식회사) )
- 1달기준, 마지막주 4번째 주 기간에, 5분-10분학생-강사면담.
- 11월달 마지막주 개인카톡으로 질문 사항에 대한 답변, 
- 카톡 면담 화두, 희망 취업분야 알려 주시면, 참고하고, 개인카톡으로 답변을 드리겠습니다.
- 희망취업분야: 백엔드쪽(자바스프링), 앱분야(안드로이드), 프론트엔드쪽(부트스트랩같은js분야)
- 솔루션 + SI(대상업체 맞게 커스터마이징-개발 납품) 한꺼한에 묶여 있습니다.
- 솔루션기반: 전자정부표준프레임워크(이클립스+스프링 4.3.22 버전기반)
- 카톡면담 기간은 11월 23일부터 11월26일까지,
- 프로토콜(Protocol): 대상이 있는 약속. 
- 위 예, 홈페이지(서버)와 크롬(PC웹브라우저) 사이에 데이터 전송에 사용되는 규칙.
- 프로토콜 사용예, http(Hyper Text Transper Protocol)
- Http의 특징: 비연결성(홈페이지 내용 크롬으로 화면에 받은 이후 연결이 끊어짐)
- 그래서, 위 http 비연결성 단점때문에, 소켓통신을 하게 되면, 연결성을 보장받게 됨.
- ssh (보안접속에 관련된 프로토콜), sshd(Secure Shell Deamon서버)프로그램 설치
- Putty(한글퍼티)로 원격접속하실 실습 예정.
- ssh특징은: 항상연결됨.(Putty프로그램으로 연결된 후 연결이 끊어지면, 프로그램이 종료됨)
- SSH( TCP:Transper Controll Protocol ) : 항상연결을 유지 퍼티프로그램사용
- HTTP ( UDP: 웹페이지전송-홈페이지내용받고 연결이끊어짐(아래)
- 단점,User Datagram Protocol + TCP:소켓통신사용 ) - 크롬사용
- 통신 패킷: Packet - 패키지상품(묶음상품) - 데이터를 묶어서 전송하는 것.
- 네트웍크 OSI 7 계층(OSI 7 Layer): (아래)
- 7계층(응용계층): 크롬(홈페이지가 표시)
- 2~6계층 :
- 1계층(물리계층): PC에있는 랜카드(공유기)

============================================
- 2단원: 데이터베이스 기초 활용하기: 단원만 마무리되었고, 6개간 지겹도록 하시게 됩니다.
- 전산전공자 - 비전산전공자
- 현업-정보처리기사 크게 의미 없습니다.
- IT분야 현업에서는 1번 해봤다->위주수업진행됩니다.
- 구글에 오픈소스가 많기 때문에, 현업에서는 전공/비전공 의미 없습니다.
- 정보처리기사 시험- 전공자유리 이론시험위주
- 2. 테이블에 자료 입력,조회,수정,삭제 작업예정.
- 인프런(검색) : 무료강의 10분단위이기때문에, 한번씩, 자바, 스프링, 자바스크립트 들으시면 도움이 됩니다.
- CRUD SQL쿼리 실행해 보았습니다.
- Auto Increament : 자동증가처리 개발자를 편하게 해주는 대신,
- 단, 중간 이빨이 빠진 번호가 생깁니다.
- 나중에 jsp(html)에서 출력시 처리해서, 이빨빠진것 없이 보이게처리합니다.
- 위와 같은 것을 다른 Paging 처리 한다고 합니다.
- 페이징처리 한다고해서, 위 에 DB select 원본값이 변하는 것이 아니고,
- 웹프로그램 화면에서 보이기만 이빨 안빠지게 보이게 합니다.
- SQL쿼리 실행시 에러확인: table alreay exist 기존에 테이블이 있으니, 먼저 처리하고, 다시실행.
- 화면 하단(옛날에 CLI 쿼리방식) -> 화면상단(GUI 방식)
- N/A: No Acount 테이블이 아무것도 없다.
- 물리모델ERD(설계도)를 실제 데이터베이스edu에 싱크로나이즈(동기화)시키면, 
- edu데이터에베이스 테이블이 만들어 집니다.
- seq_id:  sequence (시퀸스=순서)
- 인터넷강의 돌려보실수 있으나, 줌은 돌려보실수 없습니다.
- 한번 놓치시더라도, 반복하기때문에 지나셔도 괞찬습니다.
- 단, 수업진도 같이 가셔야, 나중에 반복할때 다시 듣게 됩니다.
- 물리ERD만드실때, 테이블,필드명은 소문자로 합니다.
- 20201111.mwb ( mysql workbench 파일 )
- 왜냐하면, 대소문자를 구분해서 Client != client 사용하는 경우가 있습니다.
- 인덱스 예 배열변수, var member (=엔티티,테이블-표) = [
			{name: "김일국", gender : "남자", age: 40},
			{name : "이병현" , gender : "남자", age: "서른살"},
			{name : "남가인" , gender : "여자", age: 20}
		];
- 위 상황에서는 age 에서 에러(error)가 발생됩니다.
- 이런 에러상황을 방지하기 위해서 데이터형태가 존재 합니다.
- 이런 데이터형태를 DataType (데이터타입)이라고 합니다.
- 물리모델ERD만들실때, 주석입력은 해 주셔야지 개발자들이 작업이 가능하게됨.
- 주석: Comments
- 데이터타입: 바차varchar(45); 영문자열 45글자를 저장가능하다.
- 질문: 우편번호, 연락처는 문자열(varchar) 했은데, 숫자기 때문에 int으로 해야..
- 답변: 유연한 개발을 하기 위해서, 우편번호:111-11, 연락처:010-111-1111
- 유연한 개발을 위해서, 확실한 숫자값이 아니면, 문자열로 하시는 것이 좋습니다.
- AI: Auto Increament 자동증가: 1, 2, 3, 4 int정수값을 자동으로 입력해 줌.
- AI 로 자동증가된 정수값을 색인Index용으로 사용하게 됩니다.
- AI 앞에 NN(Not Null): 빈공백값을 허용하지 않겠다.
- NN 앞에 있는 PK(Primary Key): 기본키(고유식별키) 색인키 index키
- PK는 사람으로 치면 주민번호와 같은 역할 입니다.(우리나라에 고유1명)
- 예를 들면, 데이터가 10개 입력되어 있다면,
- delete from client where client_id = 10;
- 클라이언트 테이블에서 클라이언트_아이디가 10번인 가로줄을 삭제하겠다.
- insert into client values('값1', '값2', '값3', now());
- Type : 숫자(int, number), 문자열(varchar), 글내용(text), 날짜(date, timestamp)
- time stamp(시간 도장) : 1970년 1월1일 부터 지금까지 시간을 1초 단위변환한 값.
- timestamp 값은 1605055186 초 => 1970년기준 초단위변환 => 20201111
- 1. wamp 실행 -> 2. 워크벤치 실행 -> 3. DB커넥션 실행 + 어제 Model 오픈.
- 데이터베이스 ERD -> 실제 물리 테이블로 싱크맞추기 예정.
- SQL쿼리실행: 위에서 만든 테이블에 데이터 CRUD(입력,조회,수정,삭제)하기 예정.
- SQL : Structure Queary Language 구조적 질의 언어, 체계가 있는 묻고 답하기 언어
- Insert Into 입력테이블명~
- Select from 조회테이블명~ (where)
- Update 수정테이블명 Set 필드명 ~where
- Delete from 삭제테이블명 where ~

- 암호는 공통 으로 지정합니다: apmsetup
- 1. 마리아DB데이터베이스 관리자root 암호지정. ( 웹프로그램 개발시 필수 )
- phpMyAdmin 웹프로그램에서 암호없이 로그인 
- > 로그인 후 상단 메뉴중 사용자 계정 클릭
- > 제일아래 root 계정 localhost 권한수정 버튼 클릭
- > 권한수정 화면 상단 [암호변경] 버튼클릭
- > 마지막으로 암호 옵션에서 apmsetup 입력처리
-----------------------------------------------------------------------------
- 2. 마리아DB한글입출력이 가능하게 처리. ( 웹프로그램 개발시 필수 )
- UTF-8: 유니코드 타입 폰트 약자(Unicode Type Font) 다국어:한국어, 일본어, 베트남 등등...
- wamp서비스 모두중지 -> mariaDB에서 my.ini (initialize초기화설정파일) 수정 후
- > wamp서비스 모두재실행 끝
----------------------------------------------------------------------------
- Mysql서비스 Stop 중지클릭 -> Remove Service 클릭
- Maria DB포트 3307 -> 3306 변경예정.
- localhost 특별한 도메인PC에서 인식하는 : http://localhost/ 실행(개발자용도메인)
- http://127.0.0.1 (개발자용 전용의 PC 아이피) = http://localhost
- 포트: 서비스 위치( http://kimilguk-mysql.paas-ta.org:80포트 )
- 웹서비스: http://localhost:80 포트
- Mysql DB서비스: http://localhost:3306 포트 -> 3308포트로 변경
- Maria DB서비스: http://localhost:3307 포트 -> 3306포트로 변경
- 톰켓(자바스프링서비스): http://localhost:8080 포트
- 오라클 DB서비스는? : http://localhost:9000 포트
- 실습준비: wamp 확인 ( Windows Apache웹서버, Mysql서버(마리아DB), Php서버 )
- 코딩 참조: stackoverflow
- 오픈소스참조: sourceforge : wamp 3.2x 기본이 mariaDB (it 강의저장소 3.1x 기본 mysql)
- 워크벤치로 백업 도 실습하실 예정 입니다.
- index = 색인을 만들면 장점은 검색속도 빨라집니다. 모든검색하지 않고, 검색키값만 검색
- index 자동으로 만들어 집니다. 테이블 생성할때, 기본키(Primary Key: PK)만들때 자동생성
- var member = [ {name:"김일국"}, {name:"김일국"}, {name:"남가인"} ];
- Update 명령어는 주의: update member SET name = "김일국"; //이렇게 실행 시말서
- delete from member; //위 3개 데이터 모두 지워집니다.
- delete from member where index = 0;
- update member SET name = "김일국" where index = 1; 이렇게 해서 1개 수정하게처리
- * 애스터리스크 , ? 물음표 : 와일드 카드(대체가능한) 문자
- abc.txt = a?c.txt : 물음표는 1개의 문자만 대체가능합니다.
- abc.txt = *.txt : 별표는 여러개의 문자를 대체가능합니다.
- 자바 : 프로그래밍 언어.
- 데이터베이스 언어 분류: DDL, DCL, DML
- DDL: Data Definition(정의) Language 테이블+필드생성명령어 Create Table..., Alter Table
- DCL: Data Controll(제어) Language 예, show tables (테이블명을 출력하는 명령어)
- DML: Data Manufulation(조작) Language 데이터 생성, 수정, 삭제명령어 Insert, Update, Delete ...
- 워크벤치 ERD를 논리모델로 만들어서 실제 물리DB에 밀어넣어서 동기화(싱크) 시킵니다.
- ERD 스키마(구조): 논리모델, 물리모델(Model=데이터베이스)
- 참고: MVC 개발방식, Model(db)-View(jsp,html)-Controller(java)
- 관계: 1:m(many, 1대다관계), n:m(다대다관계)
- var member (=엔티티,테이블-표) = [ 자바-스프링에서는 VO(Value Object)클래스라고 함.
			{name (=속성,필드,컬럼) : "김일국" (=속성값,필드값) ...

- 5명 6개월 선문대 : 개발이사1(ERD), 개발팀과장남1,여1(ERD보고 기본CRUD구현), 
- 개발팀대리1(jsp생산), 디자인팀대리1(퍼블리싱)
- CRUD: Create(입력-insert), Read(조회-select), Update(수정), Delete(삭제)
- E-R다이어그램(도형ERD) : Entity(테이블-표) - Relation(관계-닭발) 워크벤치에서 구현합니다.
- 제조업 같은 경우: 300인 이상을 중소기업이라고 합니다.
- IT 같은 경우: 직원 10인 이상, 연매출액 10억이상 중소기업(주식회사) 입니다.
- 개발하기전 데이터베이스를 선택: oracle, mysql, maria, mongo 기타 등등
- 용어 : | = 파이프라인 = 또는
- 관계형데이터베이스 관계기호: 1개 : 0개 | 닭발(까마귀발=CrowFoot)
- 관계형데이터베이스: RDBMS(Relational DataBase Management System)
- 관계형: 자료(테이블=표)사이에 부모-자식.
- 게시판(부모) <- 댓글(자식)
- 1개의 게시물(부모) > 댓글(자식들) 1, 2, 3, 4.....
- 만약 게시물-댓글 관계가 없다고 하면, 댓글이 어떤 게시물에 대한 댓글 모르게 됨.
- 그래서, 관계(부-자) 가 필요합니다.
- mysql시작(오픈소스-오라클에 팔려서), oracle마무리(상용)
- mysql 만드사람이 오라클 퇴사 후 자기 딸 이름으로 maria(마리아) DB를 만드었습니다.
- 오픈소스로 만들었습니다. 요즘 오라클회사의 mysql 유료화 될 수 있기때문에
- 그래서, 마리아 DB(mysql과 호환됨)를 사용합니다.
- 맥(부트캠프기반) 윈도 mysql실행이 않됨. 겸사겸사 마리아 DB로 진행 하겠습니다.
- 오라클 Java8 대신에 OpenJDK 8 사용하는 것과 같이(두버전 모두 호환됨)
- 오라클의 mysql대신에 maria DB(오픈소스)사용 합니다.(두버전 모두 호환됨)

- 인덱스(책 마지막 장에 검색어 색인과 같은 의미)
- 인덱스: Index 자료구조에서 순서를 가지는 자료, 0,1,2,3,4,5....
- 인덱스를 가지고, 데이터베이스(테이블) 자료를 입력,출력,수정,삭제 개발자일.
- 대괄호 = [ 테이블 배열 ], 중괄호 = { 한줄배열 }, 소괄호 = ( 매개변수 )
- 인덱스 예 배열변수, var member (=엔티티,테이블-표) = [
			{name (=속성,필드,컬럼) : "김일국" (=속성값,필드값) , gender : "남자", age: 40},
			{name : "이병현" , gender : "남자", age: "서른살"},
			관계형DB 에서는 위처럼 age필드(칼럼) 숫자, 문자 혼합 불가능
                                        noSQL(비관계형 DB)에서는 가능 주로 IoT사용.
			{name : "남가인" , gender : "여자", age: 20}
		];

```
- 출력: member[0][name] => "김일국";
- 출력: member[1][name] => "이병현";
- 출력: member[2][name] => "남가인";
```
- 데이터베이스 용어중 인덱스가 뭔지 확인: 크롬 > 개발자도구 띄웁니다.
- 1단원: 운영체제 기초기술 활용: 버추얼박스설치,우분투실행,리눅스 명령어실행. 크라우드 가입(6개월내내사용)
- JDK설치.
- 박정수씨 원격 봐드리겠습니다.
- java -version 확인
- javac (자바컴파일러=번역기) : 
- 영문 개발자 java코드를 기계가 알아보는 class코드로 번역해줍니다.
- Helloword.java코드가 실행되는것이 아니고, Helloword.class파일이 실행되게 됩니다.
- 호스트OS: 윈도 7, 10 <- 버추얼박스: 가상화장치(vt-x) -> 게스트OS: 우분투(리눅스)
- 앱(안드로이드)
- 윈도기반 - 안드로이드 스튜디오 툴기반 AVD(vt-x) -> 갤럭시폰 애뮬레이터 실행
- 마지막 내년 4월에 위 App개발때문에 vt-x필요(학원PC로 하시면 문제 없음)
- 이병현씨, 맥OS 부트캠프기반 윈도 설치 후 셋팅중 OpenJDK 부분 원격으로 확인
- OpenJDK 확인: JDK 가 없으면 아래상황이 발생 됩니다.
- 자바로 만들어진 프로그램(이클립스X, DB워크벤치X 등등)이 실행 않됩니다.
- sudo: 수퍼유저로 명령어를 실행할때, osboxes.org(아이디) / osboxes.org(암호)
=================================================
- OpenJDK, 이클립스(전자정부개발환경3.9버전), 톰캣(웹서버) 다운받겠습니다.
- 학습목차 > 
- JAVA 개발 툴설치: Java Delvelopement Kits 오라클 8버전(1.8) 유료화
- Open JDK를 설치해서 자바개발환경을 만들게 됩니다.
- 평가가 보통은 1가지, 2가지(서술형, 과제물제출 서식)
- 이클립스기반 스프링, mysql, 클라우드.
- 프로젝트 웹에이전스 : 100 ~ 300만 1달 20~30개
- * 프로젝트 솔루션개발또는 SI업체 : 2000만 ~ 1억 ~ 2억 : 1개당 3개월 ~ 12개월
 - 위 SI 관련 프로젝트(교육기간:3달) 10개 중 2개 안드로이드 앱.(교육기간:1달)
- 5명 6개월 선문대 : 개발이사1(ERD), 개발팀과장남1,여1(ERD보고 기본CRUD구현), 
- 개발팀대리1(jsp생산), 디자인팀대리1(퍼블리싱)
- 취업하실 곳은 서울(구로,가산), 경기(판교) 취업예상 됩니다.

- 헤로쿠: 깃repository(저장소)에 작업한 결과를 푸시(업로드) 소스관리.
- 위 깃소스를 헤로쿠에 Deploy(배포)해서 서비스를 하게 됩니다.
- https://kimilguk.herokuapp.com 이렇게 서비스 도메인이 자동으로 등록됩니다.
- 단, 최초 실행 속도가 느리다는 것이 단점.
- zzz : 잠자고 있다는 표시.
- 실습1: 버추얼박스 설치 후 우분투에서 리눅스(OS) 명령어 실행
- 실습2: 구름IDE에서 컨테이너 1개 생성(C/C++)해서 리눅스(OS) 명령어 실행
- 실습3: 파스타클라우드 신청, 헤로쿠클라우드 신청: 앞으로 6개동안 지겹도록 하실 내용.
- 신청하신분: 회원가입시 등록한 이메일로 확인 메일 받으시면, 같이 진행합니다.
- 헤로쿠: 다같이 신청 후 바로 사용가능합니다.

- find /home -name "*.cfg"
- Permission denied
- sudo : super user do실행하겠다. 암호입력필요
- sudo find /home -name "*.cfg"
- osboxes.org (암호입력)
- 구름IDE에서는
- find ./ -name "*.c"
- find ./ -name "main.c" (파일이름 검색 명령어)
- uname -a (리눅스 버전 확인 명령어)
- 작업프로젝트 납품하실때, 개발환경, 실행버전, 반드시 적어야 납품이 가능하십니다.
- vt-x: 바이오스(CMOS)에서 설정 바꿔야야 합니다.
- CMOS바이오스 진입하는 방법 4가지(종류가 여러가지라서...)
- PC전원을 껐다가 켜시고, 바로 [F1], [F2], [F10], [Del]
- 박재형(OK),  정동규(OK), 정도영(OK)
- 박정수(구름클라우드-리눅스명령어실행), 
- 이찬홍(구름클라우드-리눅스명령어실행),
- 임송하(구름클라우드-리눅스명령어실행),
- 배경득(구름클라우드-리눅스명령어실행),
- 김다혜(구름클라우드-리눅스명령어실행)
- C언어 하실 때, 구름IDE 클라우드에서 C언어로 구구단, 은행입출금 프로그램 제작예정.
- Virtualization Technology [disabled] 찾으셔서, 바꾸고 저장.
- > [enabled] 바꾸시고, [F10] 저장후 재부팅
- vt 설정않되신분은 https://www.osboxes.org/ubuntu/ 에서 
- Ubuntu 16.04.6 Xenial 32bit 다운받으신 후 같이 진행 하십니다.
- 안드로이드 앱 하실때, 같은 문제가 발생하시는데, 
- 마지막 달 학원에서 수업하시게 되니 괜찮을겁니다.
- VT 않되시는 분은 3차 방법으로 수업가능합니다. 염려하실 필요 없습니다.

- 우분투 16.04.6 버전의  vdi(버추어 디스크 이미지) 저장했습니다.
- 앞으로도 프로그램 관련해서는 한글폴더에 저장위치를 잡으시면 않됩니다.
- http://blog.daum.net/web_design (강사 블로그)
- 호스트OS: 윈도 7, 10 <- 버추얼박스: 가상화장치 -> 게스트OS: 우분투(리눅스)
- v1.0.0 : 버전v 1(메이저버전).0(마이너버전).0(소버전)
- egov 3.9.0 버전을 설치해서 자바 스프링 프로젝트를 개발예정.
- 용어에 익숙해 지도록하기 위해서 설명 드리고 있습니다.
- 지금 1단원 하고 있습니다. 이론 마치고, 집PC로 실습진행예정.
- 실습진행: 버추얼박스설치 > 우분투실행 > 리눅스명령어 실행실습
- 클라우드: 가상화기반의 서비스 3가지(아래).
- IaaS(아이아스, 이아스): 인프라 as A 서비스.  오픈스택
- PaaS(파스): 플랫폼 as A 서비스. 한국정화진흥원의 파스타,속도빠름
- 파스타 단점은, 1년 1번은 초기화 됩니다. 클라우드 4G까지 무료지원
- 헤로쿠(Heroku)클라우드: 5개 프로젝트 까지는 무료.단, 속도가 느림
- SaaS(사스): 소프트웨어 as A 서비스. 구글 문서, 프레젠테이션, 스프레드시트
- IaaS(인프라-서버) > PaaS(인프라+개발자) > SaaS(개발자)
- 프로세서: 1개 프로그램과 동일.
- =실행중인프로그램=인스턴스(자바)=오브젝트(자바)=스레드(자바)
- 애플리케이션Application(PC 용) = 앱App (모바일용)
- 서술형시험은 오픈북 이니까 부담없이 보시면 됩니다.
- : 콜론,  ;세미콜론=함수종료,한줄 종료,  :  ;  ,
- 키:값 배열변수 예, var member = [
			{name : "김일국" , gender : "남자"},
			{name : "이병현" , gender : "남자"},
			{name : "남가인" , gender : "여자"}
		];

```
- 출력: member[0][name] => "김일국";
- 출력: member[1][name] => "이병현";
- 출력: member[2][name] => "남가인";
```
- 윈도하단 작업표시줄>오른쪽버튼>작업관리자
- 위 작업관리자>세부설정>우선순위설정(프로그램우선순위)
- GUI: 그래픽유저인터페이스, 탐색기(윈도)
- CLI: 커맨드라인인터페이스, 명령프롬프트(윈도), 배시쉘(리눅스)
디지털컨버전스반
강사: 김일국 (010-8175-6075)
이메일: boramcom@daum.net
IT강의저장소: https://github.com/miniplugin/human
실습은 학원PC에서 하지 못하시는 관계로
여러분 집에 있는 PC로 실습을 진행하시게 됩니다.
- 거의 인터넷 강의하고 비슷하게 진행됩니다.
- 줌으로 실습을 하시니까, 바로 피드백합니다.
- 속도가 느리게 됩니다.
- 대략 1달 정도 후에 학원에 출근하실때,
- 학원PC 작업하실때, 집에 있는 개발 PC환경설정을
- 한번 더 하시게 됩니다.
- 작업결과는 깃허브에 푸시(업로드)해서, 소스관리하게 됩니다.
- Github:  VCS(버전관리시스템)
- 웹 프로그램 만들기(중간목표) -> 이력서 포트폴리오제출 -> 취업(목표)
- 웹프로그램만들기 위해서 배우는 언어들: 자바스크립트+자바
- 웹프로그램만들기 위해서 배우는 프레임워크: 스프링
- 웹프로그램만들기 위해서 배우는 데이터베이스: mysql, oracle
- 웹프로그램만들기 위해서 배우는 클라우드: 파스타, 헤로쿠
- 자바가 오라클 회사 소유입니다. 자바8(1.8)버전부터 유료화.
- 오픈JDK( 자바개발툴 Java Developement Kit) 8(1.8)으로 개발.
- 현업에 가셔도, jdk7 버전까지는 무료기 때문에...
- 현업에 가시면, openjdk 사용하게 됩니다.
- 요즘 핫트렌드 프로그램부분(3가지)
- 1. RestAPI(빅데이터 처리): 시각화, 댓글처리, 네이버아이디로그인
- 2. 클라우드 서비스: 파스타, 헤로쿠 클라우드에 스프링 웹프로그램 서비스
- 3. IoT: 통신(인터넷)으로 하드웨어 제어(1달)
- 아두이노-안드로이드 앱이용 전구 켜기|끄기
- 라즈베리파이-UART통신(USB:컴퓨터PC to Serial:라즈베리PC)
- 맥북으로 수업따라가시는분 2명 있었습니다.(가능했습니다.)
- 현업개발자는 맥북 쓰시는 분들이 더 많습니다.
- 우리반은 윈도우기반(PC, 노트북)으로 수업을 진행합니다.
- 출근하셔서 오프라인 수업시, 종이시험지, 과제물 업로드
- 온라인(줌수업)에서는 그림판 이미지 시험지
- 그림판 수정 후 과제물 업로드 하시게 됩니다.
- 실습하실때, 에러나신 분들 원격으로 제가 봐드립니다.
- 원격PC제어에 사용되는 무료프로그램이 팀뷰어 입니다.
- 다운받습니다. -> 실행을 같이 해 봅니다.
- 공유화면에 띄울 예정 입니다.
- 다른분들은 에러난 PC를 프로그램에러를 어떻게 처리하는지
- 참관하시면 됩니다.
- 디자인 큰 학원이 좋다는 이유와 같습니다.
- 에러상황을 질문할때, 옆에서 볼수 있어서, 에러상황처리도 공부입니다.
- 실습않되시는 분들 없이, 다 같이 진행 됩니다.
