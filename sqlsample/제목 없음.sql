--SQL �ֿ� �Լ���
--�����Լ�,�����Լ�,��¥�Լ�
--default ���̺� ==> dual
select sysdate from dual;

--round : �ݿø�
select round(1234.567),round(1234.567,3),round(1234.567,-1),round(1234.567,-2),round(1235.567,-1) from dual;

--trunc �����Լ�
select trunc(1234.567),trunc(1234.567,-1),trunc(1235.567,-1) from dual;

--ceil �Ҽ������� ���� ����� �ִ밪 ������ ��ȯ
--floor �Ҽ������� ���� ����� �ּҰ� ������ ��ȯ
select ceil(2.5),floor(2.5) from dual;
--sign ������ -1 0�� 0 ����� 1
select sign(-10),sign(0),sign(10) from dual;
--mod �־��� ���ڸ� ������ ���ڷ� ���� �������� ��ȯ
select mod(1,3),mod(2,3),mod(5,4) from dual;
--power ������ �� ��ȯ
select power(2,3),power(4,2),power(5,3) from dual;

--�����Լ�
--upper �빮�ڷ� ��ȯ
select upper('Welcome to Oracle 10g') from dual;
select upper(first_name) from employees;

--lower �ҹ��ڷ� ��ȯ
select lower('Welcome to Oracle 10g') from dual;
select lower(first_name) from employees;

--initcap �̴ϼȸ�(ù ���ڸ�) �빮�ڷ� ��ȯ��Ų��. (������ ����)
select initcap('welcome to oracle 10g') from dual;
select initcap(first_name) from employees;

--length ���ڿ��� ���̸� �˷��ش�.
select length('Welcome to Oracle 10g') from dual;
select first_name,length(first_name) from employees;

--instr Ư�������� ��ġ�� �˷��ش�.
select instr('Welcome to Oracle 10g','o') from dual;
select instr('Welcome to oracle 10g','o',3,3) from dual;

--substr ���ڿ��� Ư�����ڸ� �����Ѵ�.
select substr('Welcome to Oracle 10g',3,2) from dual;
select substr('Welcome to oracle 10g',-3,2) from dual;

--LPAD ������ ������ ���ʿ� ���� ����鿡 Ư�� ���ڸ� ä���.
select lpad('Welcome to oracle 10g',40,'#') from dual;
select lpad('Welcome to oracle 10g',10,'#') from dual;

--RPAD ���� ������ �����ʿ� ���� �� ���鿡 Ư�� ���ڸ� ä���.
select rpad('Welcome to Oracle 10g',40,'#') from dual;
select rpad('Welcome to Oracle 10g',10,'#') from dual;

--LTRIM ���ʿ� Ư�����ڸ� �����Ѵ�.
select ltrim('aaa Oracle 10g aaa','a') from dual;
select ltrim('    Oracle 10g     ') from dual;

--RTRIM �����ʿ� Ư�����ڸ� �����Ѵ�.
select rtrim('aaa Oracle 10g aaa','a') from dual;
select rtrim('     oracle 10g      ')from dual;

--TRIM �յڿ��� Ư�����ڸ� �����Ѵ�.
select trim('a' from 'aaa Oracle 10g aaa')from dual;

--chr �ƽ�Ű �ڵ带 ���ڷ�
select chr(65) from dual;
select chr(1) from dual;
select chr(27) from dual;
--ascii ���ڸ� �ƽ�Ű �ڵ��
select ascii('A') from dual;
--replace ���ڿ����� Ư�����ڸ� Ư�����ڷ� ġȯ
select replace('welcome to oracle','m','f') from dual;
select replace(first_name , substr(first_name,1,3),'#') from employees;