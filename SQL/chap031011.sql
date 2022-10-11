

-- 데이타 조회 select 문 
select empno,ename , job,mgr ,hiredate , sal ,comm, deptno from emp;

-- whildcard 문자 * 로 전체 칼럼 대체 
select * from emp;

-- selection

select * from emp where empno = 7788;

-- projection 
select empno,ename , job ,deptno from EMP;

-- select & projection 
select empno ename , job ,deptno from emp where empno = 7788;

-- select 중복 
select all deptno from emp;

select deptno from emp;
 
-- 중복 배제 select distinct
select distinct deptno from emp;


-- 사원테이블(emp)에서 모든 사원 정보 출력 
-- select 추출할 칼럼리스트 from 테이블명 ;
select * from emp; 
-- 사원테이블(emp)에서 모든 사원의 사원번호, 이름, 부서번호 출력
select empno,ename,deptno from emp;
-- 사원테이블(emp)에서 업무별(job)별 부서번호(deptno) 종류별 출력 
select distinct job, deptno from emp ;


-- 컬럼 결과 as 별칭 만들기 
-- null 과 다른 데이터와 연산 결과는 항상 null이 나옴 ;  
-- 별칭이 분리되었을때 ""로 묶어줌 
select ename, sal ,sal*12  "a n n u a l",sal*12+comm  "12Sal And Comm",comm from emp;

-- 정렬 - 오름차순 order by 칼럼명 asc 
select * from emp order by empno;
select * from emp order by empno asc;
-- 정렬 - 내림차순 order by 칼럼명 desc 
select * from emp order by empno desc;
-- 정렬 기준이 2개 이상인 경우 , 로 구분 
-- 부서번호는 오름차순 ,부서별 급여는 내림차순 , 
select * from emp order by deptno, sal desc;


-- 부서별 오름차순 ,업무별 오름차순 급여별 내림차순 
select * from emp order by deptno , job , sal desc;


-- 컬럼명에 별칭 붙이기 
/*empno - employee_no , ename - employee_no
 * mgr - manager ,
 * sal - salary
 * comm - commission
 * deptno - > department_no 
 * */

select 
empno  employee_no , ename  employee_no,mgr  manager ,sal salary,comm  commission, deptno department_no 
from emp;




