

/*현재 날짜 시간 출력 함수 sysdate*/

select sysdate from dual;

/*날짜 연산(기준단위 : 날짜)*/

select sysdate as now,
	   sysdate -1 as yesterday,/* - 이전*/
	   sysdate +1 as tomorrow /* + 이후*/
	   from dual;

/*개월후 날짜 구하기 add_months(날짜,개월수)*/
	   select sysdate , add_months(sysdate,3),/* + 이후*/
	   select sysdate , add_months(sysdate,-3),/* - 이전*/
	   from dual ; 
	   
/* 사원별 입사(hiredate) 10주년이 되는 날 추출 */	
select empno , ename , hiredate , add_months(hiredate,120) as work10year
from emp ; 
	
/*입사 42년 미만인 사원 출력 */
select empno , ename , hiredate 
from emp 
where add_months(hiredate,12*42) > sysdate;

/*개월수 구하기 함수 months_between(a,b)*/
select empno , ename , hiredate ,12*32,
	round(months_between(sysdate,hiredate))
from emp 
where round(months_between(sysdate,hiredate)) > 12*32;



select empno , ename , hiredate ,sysdate, 
	months_between(sysdate,hiredate) as month1, /*이전 - 현재 = 음수 */
	months_between(hiredate,sysdate) as month2 /*현재 - 이전 = 양수 */
	/* 개 월 수 가 나 와 벌 림 */
from emp ;


/*요일 계산 함수 next_day() , 월의 마지막 날 계산 함수 last_day()*/

select sysdate,next_day(sysdate,'월요일'), last_day(sysdate)
	from dual ; 
	
-- 날짜 반올림 함수 round() trunc() 
select sysdate ,
	round(sysdate,'CC') as format_cc,
	round(sysdate,'yyyy') as format_yyyy,
	round(sysdate,'Q') as format_q, -- 분기반올림
	round(sysdate,'ddd') as format_ddd, -- 정오반올림
	round(sysdate,'hh') as format_hh -- 시간 반올림 
from dual;


select sysdate ,
	turnc(sysdate,'CC') as format_cc,
	turnc(sysdate,'yyyy') as format_yyyy,
	turnc(sysdate,'Q') as format_q, -- 분기버림
	turnc(sysdate,'ddd') as format_ddd,-- 정오버림
	turnc(sysdate,'hh') as format_hh -- 시간버림 
from dual;









	   

	   
	   
	   
	   
