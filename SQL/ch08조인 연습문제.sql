

-- 급여 sal 가 2000 초과인 사원들의 부서 정보 , 사원 정보를 오른쪽과 같이 출력해보세요 
/*단 . SQL-99 이전방식과 SQL-99 방식을 각각 사용하세요 */

select * from emp;

select sal from emp 
where sal > 2000;

select deptno ,ename , empno, sal 
from emp 
where sal > 2000;


select b.deptno , b,dname , a,empno, a.ename ,a.sal
from emp a , dept b 
where a.sal >2000 
and  a.deptno = b.deptno
;




