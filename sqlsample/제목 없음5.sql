create table score(
  no   number(5),
  name varchar2(10),
  kor  number(3),
  eng  number(3),
  mat number(3),
  tot number(3),
  avg number(5,2)
);

select * from score;
select avg(avg),max(tot),min(tot) from score;



