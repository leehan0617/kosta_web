--ȸ������ ���̺�
create table member(
  num number(5) not null, --�ڵ�������ȣ
  id varchar2(15) not null, --���̵�
  password varchar2(10) not null, --��й�ȣ
  name varchar2(20) not null, --�̸�
  jumin1 varchar2(6) not null, --�ֹι�ȣ��
  jumin2 varchar2(7) not null, --�ֹι�ȣ��
  email varchar2(50) not null, --�̸���
  zipcode varchar2(50) not null, --�����ȣ
  address varchar2(100) not null, --�ּ�
  job varchar2(20) not null,  --����
  mailling varchar2(5) not null, --���ϼ��ſ���
  interset varchar2(30) not null, --���ɿ���
  member_level varchar2(2) not null, --ȸ�����
  register_date date not null, --���Գ�¥
  primary key(num)
  );
  
  create sequence member_num_seq
  start with 1
  increment by 1;
  
  -- select * from tab; --���̺� ���� ��ɾ�
  -- select * from seq; --sequence ���� ��ɾ�