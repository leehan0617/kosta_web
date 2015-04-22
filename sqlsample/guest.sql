create table guest(
  num number(8),
  name varchar2(20) not null,
  password varchar2(15) not null,
  message varchar2(300) not null,
  write_date date,
  primary key(num)
  );

create sequence guest_num_seq
start with 1
increment by 1;

select * from guest;
select count(*) as boardNum from guest;

select * from guest;
select * from guest where num >=1 and num <=3;
select * from guest where rownum>=1 and rownum<=3;

select rownum,num,name from guest where rownum=3;

select rnum,num from (select rownum as rnum,num from guest) where rnum>=3;

select rnum,num,name,password,message,write_date from
  (select rownum as rnum,num,name,password,message,write_date from guest)
where rnum>=1 and rnum<=3;

-- rownum 은 우선순위가 낮다 where 문하고나서 실행 --
select * from(select rownum rnum,a.* from(select * from guest order by num desc) a)b where b.rnum>=1 and b.rnum<=3;