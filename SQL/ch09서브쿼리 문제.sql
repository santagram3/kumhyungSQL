
-- 1번 
-- 전체 사원 중 ALLEN 과 같은 직책 job 인 사원들의 사원 정보 부서 정보를 다음과 같이 출력하는 sql 을 작성하시오 
-- 전체사원 
select * from emp;
select * from dept;

-- ALLEN 의 직책 SALESMAN
select job 
from emp 
where ename = 'ALLEN';

-- 전체 사원 중 ALLEN 과 같은 직책 job 인 사원들의 사원 정보 부서 정보를 다음과 같이 출력하는 sql 을 작성하시오 
SELECT a.empno , a.ename , a.sal , b.deptno ,b.dname 
from emp a,dept b
where a.deptno =b.deptno
and job = (select job 
from emp 
where ename = 'ALLEN');



-- 전체 사원의 평균 급여 (sal) 보다 높은 급여를 받는 사원들의 정보 부서 정보 급여 등급 정보를 출력하는 sql 을 작서앟시오 
-- (단 출력할때 급여가 많은 순으로 정렬하되 급여가 같은ㄹ경우넨 사원 번호를 기준으로 오름차순으로 하시오 )
--	order by sal desc empno ;

-- 전체 사원 평균 급여 
select avg(sal)


from emp ; 

select * from emp ;

select * from dept; -- loc dname deptno 

-- 정답 grade 는 귀찮아서 뺌 
select a.empno ,b.dname , a.hiredate ,b.loc ,a.sal 
from emp a , dept b 
where a.deptno = b.deptno
and a.sal > (select avg(sal)
from emp )
order by a.sal desc ,a.empno ;

--q 3 
-- 10번 부서에 근무하는 사원중 30번 부서에는 존재하지 않는 직책을 가진 사람들의 사원 정보 
-- ,부서정보를 다음과 같이 출력하는 sql문으로 작성하세요

select * from emp;

select * from emp
where deptno =10 ;

select distinct job from emp
where deptno =30;
-- SALEMAN CLERK MANAGER 

SELECT a.empno , a.ename , a.job , a.deptno , b.dname , b.loc 
from emp a, dept b  
where a.deptno = b.deptno
and deptno= 10;

-- 정답!! 
SELECT a.empno , a.ename , a.job , a.deptno , b.dname , b.loc 
from emp a, dept b  
where a.deptno = b.deptno -- 여기까진 잘 나옴 
and a.deptno = 10 and a.job not in (select distinct job from emp
where deptno =30);

select * from dept;


/*직책이 salesman 인 사람들의 최고 급여보다 높은 급여를 받는 사원들의 사원정보 , 급ㅇ등급 정보를 다음과 같이 출력하는 sql 문을 작성하세요*/
/*단 서브쿼리를 활용할때 다중행 함수를 사용하는방법과 ,사용하지않는 방법을 통해 사원번호를 기준으로 오름차순으로 정렬하세요*/ 

다중행 함수 : max()
-- 'SALESMAN'; 급여
SELECT JOB , SAL FROM EMP 
where job = 'SALESMAN';
-- 'SALESMAN'; 최고급여 
select max(sal) from emp
where job = 'SALESMAN';

-- 다중행 함수 쓰는것 
SELECT EMPNO, ENAME , SAL 
FROM EMP 
WHERE SAL > (select max(sal) from emp
where job = 'SALESMAN')
ORDER BY empno ;

-- 다중행 함수 안쓰는것 

SELECT EMPNO, ENAME , SAL 
FROM EMP 
WHERE SAL > all (select sal from emp
where job = 'SALESMAN')
ORDER BY empno ;









