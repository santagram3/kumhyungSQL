

-- 부서 번호가 30인 사원정보 데이타 출력 ; 
select * 
from emp 
where deptno = 30 ;

-- JOB 기준으로 추출 JOB = 'CLERK'
select * 
from emp 
where job = 'CLERK';



-- 부서 번호가 30이면서 , 급여가 1500 이상인 사원정보 데이타 출력 ; 
select * 
from emp 
where deptno = 30 and sal>1500;


-- sal*12를 한 결과가 36000인 사원 정보 
-- 칼럼의 연산 결과와 같은 값을 가진 조건으로 추출 ! 
select * 
from emp 
where sal*12 = 36000;


-- 비교연산으로 추출 
select * from emp where sal >= 3000;

-- 이름(문자열) 비교 연산으로 추출 // 뒤에오는 A보다 Z 값이 더 높아서 비교대상이 저럼 ! 
select * from emp where ename >= 'F' order by ename;
select * from emp where ename >= 'FORD' order by ename;
select * from emp where ename <= 'FORD' order by ename;


-- 급여가 3000 이 아닌 사람들만 추출 
select * from emp where sal != 3000;
select * from emp where sal <> 3000;
select * from emp where sal ^= 3000;

-- 조회 조건 2개 이상 인 경우 ! 
-- WHERE 다음에 첫번째 조건 AND 두번째 조건 ! 
select * 
from emp 
where deptno = 30 and job = 'SALESMAN';

-- 입사일자가 1980년 1월 1일 이후 입사 , 부서번호가 30이고 JOB이 'CLERK'인 사원정보 
select * 
from emp 
WHERE hiredate >= '1980-01-01' and deptno = 30 and job = 'CLERK'; 

--부서본호가 30 이고 job이 salesman , commission 이 0인 사원
select * from emp where deptno = 30 and job = 'SALESMAN' and comm =0;
-- emp테이블에서 job의 종류 는 몇개일까요 ? 
select distinct job from emp;
select count(distinct job) from emp;
-- emp 테이블에서 모든 사원의 수는 몇명인가요 ? 
select count(empno) from emp;
select count(*) from emp;
-- emp 테이블에서 job별 오름차순 , 급여별 내림차순 정렬 /
select * from emp order by job ,sal desc;
-- emp 테이블에서 job별 오름차순 , 연봉(sal*12+comm)별 내림차순 정렬 // 
select * from emp order by job ,sal*12+comm desc;

/*null값과 null이 아닌값을 연산한 결과는 null이 되어 연산불가 */
/*null을 다른값으로 대체하는 함수 nvl(칼럼(값),대체값)*/
-- emp 테이블에서 job별 오름차순 , 연봉(sal*12+comm)별 내림차순 정렬 // 
select nvl(null,0),nvl(1,0),nvl(null,'hello') ,nvl('hi','hello') from dual;
-- nvl 에서 null 이 아니면 그 값 그대로 나옴 nvl(1,0) = 1  nvl('hi','hello') = hi 
/*nvl 함수의 첫번재 인자가 null이 아니면 그대로 출력*/
select * from emp order by job ,sal*12+comm desc;

-- nvl() 함수를 이용하여 다시 계산 ! 
select empno,job,sal,comm,nvl(comm,0),sal*12+nvl(comm,0) from emp order by job ,sal*12+nvl(comm,0) desc;










