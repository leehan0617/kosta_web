--��	���� �ֱٿ� �Ի��� ����� �Ի��ϰ� �Ի����� ���� ������ ����� �Ի����� ����ϴ������� �ۼ��ϼ���.

select 
  max(hire_date) "���� �ֱ��Ի���",
  min(hire_date) "���� �������Ի���"
  from employees;
  
--��	�μ��ڵ庰 �����հ� ���� �� �μ��ڵ庰 �������� ����
select
  department_id,sum(salary)
  from employees
  group by department_id
  order by department_id asc;
  
--80�� �μ��Ҽ��� ����߿��� Ŀ�̼��� �޴� ��� ���� ���غ�����.
select
  count(employee_id)
  from employees
  where department_id=80 and commission_pct is not null;

--�� �μ��� �ִ�޿��� �����޿� ���� �� �������� ���� �ϼ���.
select
  department_id,
  max(salary),
  min(salary)
  from employees
  group by department_id
  order by department_id desc;
  
--��  Employees ���̺��� ����Ͽ� ����(salary)�� ����(commission_pct)�� ��ģ �ݾ��� ���� ���� ���� ���� ���� ���,
--��� �ݾ��� ���ϼ���. �� ������ ���� ���� ���ʽ��� 0���� ����ϰ� ��� �ݾ��� �Ҽ��� ù° �ڸ������� ���

select 
  max(salary+nvl(commission_pct,0)),
  min(salary+nvl(commission_pct,0)),
  round(avg(salary+nvl(commission_pct,0)),1)
  from employees;
  
select
  max(salary+(salary*nvl(commission_pct,0))) as mm,
  min(salary+(salary*nvl(commission_pct,0))) as mn
  from employees;
  
  