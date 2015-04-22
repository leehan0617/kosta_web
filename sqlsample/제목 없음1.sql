--날짜 관련함수
select sysdate from dual;

--날짜 연산가능
select sysdate "오늘",sysdate-1 "어제",sysdate+1 "내일" from dual;

--사원 근무일수
select employee_id "사원번호",trunc(sysdate-hire_date) "사원 근무일수" from EMPLOYEES;

--Months_BETWEEN 날짜와 날짜 사이의 개월 수를 계산
select employee_id "사원번호",sysdate "오늘" , hire_date "입사년원일" , trunc(MONTHS_BETWEEN(SYSDATE,hire_date)) from employees;

--add_months: 주어진 날짜에 숫자 만큼의 달을 추가
select add_Months(Sysdate,6)from dual;

select employee_id,hire_date,add_months(hire_date,3) from employees;

--last_day : 주어진 날짜가 속한 달의 가장 마지막 날 출력
select last_day(sysdate) from dual;

select employee_id,hire_date,last_day(hire_date) from employees;

--next_day : 주어진 날짜를 기준으로 돌아오는 가장 최근 요일의 날짜
select next_day(SYSDATE,'금') from dual;
select next_day(SYSDATE,'월') from dual;

--형 변환 함수: 숫자(정수형,실수형),날짜,문자(문자+문자열)
--TO_CHAR:날짜,숫자를 문자로 변환
--월(MM,MON,MONTH),일(DD,DAY,DDTH)시간(HH24,HH) 분(MI,SS)
--년도(YYYY,YY)

select to_char(sysdate,'yy/mm/dd') day1,
      TO_CHAR(SYSDATE,'YYYY.MM.DD') 날,
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

--문자 -> 숫자
select 77+to_number('1') from dual;
--문자 -> 날짜
select to_date('1990/12/25','YYYY-MM-DD') 
from dual;

select trunc(sysdate - to_date('2013/01/01','YYYY-MM-DD')) 
from dual;

select hire_date from EMPLOYEES where to_char(hire_date,'YYYY') < 2000;
select hire_date from EMPLOYEES where hire_date < to_date('1990-01-01','yyyy-dd-mm');