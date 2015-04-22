create table addr(
 irum varchar2(15),
 phone varchar2(15),
 address varchar2(50),
 email varchar2(50)
);
 
select * from addr;
insert into addr values('Lee','01046463522','Ansan','leehanbin@naver.com','0311231233');
insert into addr(tel) values('0311231234');
alter table addr add(tel varchar2(15));
delete addr where irum is null;
--자료형 변경
alter table addr modify(phone varchar2(40));
--컬럼명(필드명) 변경
alter table addr rename column tel to telnet;
select * from addr;

--컬럼 삭제
alter table addr drop column telnet;
select * from addr;