    --그룹함수: 하나의 결과값을 산출한다. 
    --sum(),avg(),max(),min(),count() (null값은 제외해서 계산)
    
    select 
        sum(salary) 
        from employees;
    select 
        round(avg(salary),3) 
        from employees;
    select 
      max(salary),
      min(salary) 
    from employees;
    
    select
      count(employee_id) 
      from employees;
      
    select
      count(commission_pct)
      from employees;
      
    select 
      distinct (job_id)
      from employees
      where commission_pct is not null;
    
    --*은 null값은 포함, column은 null값 포함 안함
    select
      count(manager_id),
      count(*)     
    from employees; 
    
    select
      count(distinct job_id)
      from employees;
      
    select * from employees;
    
    select
      count(distinct job_id)
      from employees
      where department_id=80;
      
    select 
      count(commission_pct)
      from employees
      where department_id=80;
     
    select
      avg(salary)
      from employees
      where job_id='IT_PROG' and department_id=60;
    
    select first_name
      from employees
      where salary=(select max(salary) from employees);
    
    select
      department_id
      from employees;
      
    select
      distinct department_id
      from employees;
    
    select 
      department_id
      from employees
      where department_id is not null
      group by department_id
      order by department_id desc;
      
    select 
      job_id
      from employees
      group by job_id;
    
    select 
      department_id,
      round(avg(salary),1) 
      from employees
      group by department_id;

select
  job_id,
  max(salary),
  min(salary),
  sum(salary)
  from employees
  group by job_id;
  
select 
  department_id,
  avg(salary),
  count(employee_id),
  count(*)
  from employees
  where department_id=100
  group by department_id;

select
  job_id,
  round(avg(salary))
  from employees
  group by job_id
  having avg(salary) >=2000;
  
select
  job_id,
  avg(salary),
  count(job_id)
  from employees
  group by job_id
  having job_id='IT_PROG';

select
  job_id,
  avg(salary),
  count(job_id)
  from employees
  where job_id='IT_PROG'
  group by job_id;
  
select 
  job_id,
  avg(salary),
  count(employee_id)
  from employees
  group by job_id
  having count(employee_id)>=2
  order by avg(salary) desc;