--��¥ �����Լ�
select sysdate from dual;

--��¥ ���갡��
select sysdate "����",sysdate-1 "����",sysdate+1 "����" from dual;

--��� �ٹ��ϼ�
select employee_id "�����ȣ",trunc(sysdate-hire_date) "��� �ٹ��ϼ�" from EMPLOYEES;

--Months_BETWEEN ��¥�� ��¥ ������ ���� ���� ���
select employee_id "�����ȣ",sysdate "����" , hire_date "�Ի�����" , trunc(MONTHS_BETWEEN(SYSDATE,hire_date)) from employees;

--add_months: �־��� ��¥�� ���� ��ŭ�� ���� �߰�
select add_Months(Sysdate,6)from dual;

select employee_id,hire_date,add_months(hire_date,3) from employees;

--last_day : �־��� ��¥�� ���� ���� ���� ������ �� ���
select last_day(sysdate) from dual;

select employee_id,hire_date,last_day(hire_date) from employees;

--next_day : �־��� ��¥�� �������� ���ƿ��� ���� �ֱ� ������ ��¥
select next_day(SYSDATE,'��') from dual;
select next_day(SYSDATE,'��') from dual;

--�� ��ȯ �Լ�: ����(������,�Ǽ���),��¥,����(����+���ڿ�)
--TO_CHAR:��¥,���ڸ� ���ڷ� ��ȯ
--��(MM,MON,MONTH),��(DD,DAY,DDTH)�ð�(HH24,HH) ��(MI,SS)
--�⵵(YYYY,YY)

select to_char(sysdate,'yy/mm/dd') day1,
      TO_CHAR(SYSDATE,'YYYY.MM.DD') ��,
      to_Char(sysdate,'month dd.yyyy') day3,
      to_char(sysdate, 'DY DD mon yy') day4,
      to_char(sysdate, 'day mon dd') day5
from dual;

select to_char(hire_date,'mm'),
       to_char(hire_date,'dd'),
       to_char(hire_date,'YYYY')
from EMPLOYEES;

select employee_id,
       first_name,
       hire_date
from employees where to_char(hire_date,'MM')=03;

select employee_id,
       first_name,
       hire_date
from EMPLOYEES where to_char(hire_date,'YYYY')<=2000;

select to_char(1234,'9999') num1,
       to_char(1234,'9,9999') num2,
       to_char(1234,'9,999') num3,
       to_char(1234,'0,9999') num4,
       to_char(1234.56,'99,999.999') num5,
       to_char(1234,'$99,999') num6,
       to_char(1234,'L99,999') num7,
       to_char(-1234,'9999MI') num8,
       to_char(1234,'999EEEE') num9
from dual;

--���� -> ����
select 77+to_number('1') from dual;
--���� -> ��¥
select to_date('1990/12/25','YYYY-MM-DD') 
from dual;

select trunc(sysdate - to_date('2013/01/01','YYYY-MM-DD')) 
from dual;

select hire_date from EMPLOYEES where to_char(hire_date,'YYYY') < 2000;
select hire_date from EMPLOYEES where hire_date < to_date('1990-01-01','yyyy-dd-mm');