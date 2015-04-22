create table board(
  board_number number(4) not null, --자동 증가번호
  writer varchar2(10) not null,    --작성자
  subject varchar2(100) not null,  --제목
  email varchar2(50) not null, --이메일
  content varchar2(4000) not null, --내용,
  password varchar2(10) not null, --비밀번호,
  
  write_date date not null, --작성자
  read_count number(6) not null, --조회수
  ip varchar2(20) not null, --아이피
  group_number number(2) not null, --그룹번호
  sequence_number number(2) not null, --글순서번호
  sequence_level number(2) not null, --글 레벨
  primary key(board_number)
);

create sequence board_board_number_seq
start with 1
increment by 1;

select rownum,board_number from board;  

select rownum,board_number from board where rownum>=1 and rownum<=10;

select a.rnum ,a.board_number from
(select rownum as rnum,board_number from board) a where a.rnum>=1 and a.rnum<=3;

select * from(
select rownum as rnum, a.* from (select * from board) a) b where b.rnum>=1 and b.rnum<=3;

select * from board;

alter sequence board_board_number_seq
  nocache;
  
delete from board where board_number=1 and password=1;

alter table board add file_name varchar2(100);
alter table board add path varchar2(100);
alter table board add file_size number(8);

select * from board order by board_number desc;
  