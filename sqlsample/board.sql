create table board(
  board_number number(4) not null, --�ڵ� ������ȣ
  writer varchar2(10) not null,    --�ۼ���
  subject varchar2(100) not null,  --����
  email varchar2(50) not null, --�̸���
  content varchar2(4000) not null, --����,
  password varchar2(10) not null, --��й�ȣ,
  
  write_date date not null, --�ۼ���
  read_count number(6) not null, --��ȸ��
  ip varchar2(20) not null, --������
  group_number number(2) not null, --�׷��ȣ
  sequence_number number(2) not null, --�ۼ�����ȣ
  sequence_level number(2) not null, --�� ����
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
  