--SQL 주요 함수들
--숫자함수,문자함수,날짜함수
--default 테이블 ==> dual
select sysdate from dual;

--round : 반올림
select round(1234.567),round(1234.567,3),round(1234.567,-1),round(1234.567,-2),round(1235.567,-1) from dual;

--trunc 버림함수
select trunc(1234.567),trunc(1234.567,-1),trunc(1235.567,-1) from dual;

--ceil 소수점에서 가장 가까운 최대값 정수를 반환
--floor 소수점에서 가장 가까운 최소값 정수를 반환
select ceil(2.5),floor(2.5) from dual;
--sign 음수는 -1 0은 0 양수는 1
select sign(-10),sign(0),sign(10) from dual;
--mod 주어진 숫자를 지정된 숫자로 나눈 나머지를 반환
select mod(1,3),mod(2,3),mod(5,4) from dual;
--power 제곱근 값 반환
select power(2,3),power(4,2),power(5,3) from dual;

--문자함수
--upper 대문자로 변환
select upper('Welcome to Oracle 10g') from dual;
select upper(first_name) from employees;

--lower 소문자로 변환
select lower('Welcome to Oracle 10g') from dual;
select lower(first_name) from employees;

--initcap 이니셜만(첫 글자만) 대문자로 변환시킨다. (기준은 공백)
select initcap('welcome to oracle 10g') from dual;
select initcap(first_name) from employees;

--length 문자열의 길이를 알려준다.
select length('Welcome to Oracle 10g') from dual;
select first_name,length(first_name) from employees;

--instr 특정문자의 위치를 알려준다.
select instr('Welcome to Oracle 10g','o') from dual;
select instr('Welcome to oracle 10g','o',3,3) from dual;

--substr 문자에서 특정문자만 추출한다.
select substr('Welcome to Oracle 10g',3,2) from dual;
select substr('Welcome to oracle 10g',-3,2) from dual;

--LPAD 오른쪽 정렬후 왼쪽에 생긴 빈공백에 특정 문자를 채운다.
select lpad('Welcome to oracle 10g',40,'#') from dual;
select lpad('Welcome to oracle 10g',10,'#') from dual;

--RPAD 왼쪽 정렬후 오른쪽에 생긴 빈 공백에 특정 문자를 채운다.
select rpad('Welcome to Oracle 10g',40,'#') from dual;
select rpad('Welcome to Oracle 10g',10,'#') from dual;

--LTRIM 왼쪽에 특정문자를 삭제한다.
select ltrim('aaa Oracle 10g aaa','a') from dual;
select ltrim('    Oracle 10g     ') from dual;

--RTRIM 오른쪽에 특정문자를 삭제한다.
select rtrim('aaa Oracle 10g aaa','a') from dual;
select rtrim('     oracle 10g      ')from dual;

--TRIM 앞뒤에서 특정문자를 삭제한다.
select trim('a' from 'aaa Oracle 10g aaa')from dual;

--chr 아스키 코드를 문자로
select chr(65) from dual;
select chr(1) from dual;
select chr(27) from dual;
--ascii 문자를 아스키 코드로
select ascii('A') from dual;
--replace 문자열에서 특정문자를 특정문자로 치환
select replace('welcome to oracle','m','f') from dual;
select replace(first_name , substr(first_name,1,3),'#') from employees;