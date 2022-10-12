
-- 다중행 함수 
select sum(sal)
from emp; 

select avg(sal),sum(sal)/12,sum(sal)/count(*) 
from emp;


-- count() 함수는 값이 null 이면 집계에서 제외 됨  
-- 일반적으로 count()함수는 count(*) 로 사용 
select count(empno) , count(*) , count(comm) , count(nvl(comm,0))
from emp;

-- 최대값
select max(sal)
from emp;
-- 최소값 
select min(sal)
from emp;

----------------그----룹 ----------별 -집 계 ------------------------------------------

-- 다중행 함수  - group by 그룹기준 
select deptno, sum(sal)
from emp
group by deptno;

select sum(sal)
from emp
group by deptno;


-- 평균 avg 값
select deptno, avg(sal),sum(sal)/12,sum(sal)/count(*) 
from emp
group by deptno;


-- count() 함수는 값이 null 이면 집계에서 제외 됨  
-- 일반적으로 count()함수는 count(*) 로 사용 
select count(empno) , count(*) , count(comm) , count(nvl(comm,0))
from emp;

-- 최대값
select max(sal)
from emp;
-- 최소값 
select min(sal)
from emp;







