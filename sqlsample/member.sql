--회원관리 테이블
create table member(
  num number(5) not null, --자동증가번호
  id varchar2(15) not null, --아이디
  password varchar2(10) not null, --비밀번호
  name varchar2(20) not null, --이름
  jumin1 varchar2(6) not null, --주민번호앞
  jumin2 varchar2(7) not null, --주민번호뒤
  email varchar2(50) not null, --이메일
  zipcode varchar2(50) not null, --우편번호
  address varchar2(100) not null, --주소
  job varchar2(20) not null,  --직업
  mailling varchar2(5) not null, --메일수신여부
  interset varchar2(30) not null, --관심여부
  member_level varchar2(2) not null, --회원등급
  register_date date not null, --가입날짜
  primary key(num)
  );
  
  create sequence member_num_seq
  start with 1
  increment by 1;
  
  -- select * from tab; --테이블 보는 명령어
  -- select * from seq; --sequence 보는 명령어