--①	가장 최근에 입사한 사원의 입사일과 입사한지 가장 오래된 사원의 입사일을 출력하는퀴리를 작성하세요.

select 
  max(hire_date) "가장 최근입사사원",
  min(hire_date) "가장 오래된입사사원"
  from employees;
  
--②	부서코드별 연봉합계 구한 후 부서코드별 오름차순 정렬
select
  department_id,sum(salary)
  from employees
  group by department_id
  order by department_id asc;
  
--80번 부서소속의 사원중에서 커미션을 받는 사원 수를 구해보세요.
select
  count(employee_id)
  from employees
  where department_id=80 and commission_pct is not null;

--④ 부서별 최대급여와 최저급여 구한 후 내림차순 정렬 하세요.
select
  department_id,
  max(salary),
  min(salary)
  from employees
  group by department_id
  order by department_id desc;
  
--⑤  Employees 테이블을 사용하여 연봉(salary)과 수당(commission_pct)를 합친 금액이 가장 많은 경우와 가장 적은 경우,
--평균 금액을 구하세요. 단 수당이 없을 경우는 보너스를 0으로 계산하고 평균 금액은 소수점 첫째 자리까지만 출력

select 
  max(salary+nvl(commission_pct,0)),
  min(salary+nvl(commission_pct,0)),
  round(avg(salary+nvl(commission_pct,0)),1)
  from employees;
  
select
  max(salary+(salary*nvl(commission_pct,0))) as mm,
  min(salary+(salary*nvl(commission_pct,0))) as mn
  from employees;
  
  