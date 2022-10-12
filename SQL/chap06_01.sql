

/*오라클 함수  upper대문자 ,lower()소문자  initcap()첫글자 대문자 - 띄어쓰기 인식함*/
select 'hello' , upper('hello'), upper('Hello'),
lower('HELLO'),lower('Hello'),
initcap('hello'),initcap('Hello')
from dual ; 

--   initcap()첫글자 대문자 - 띄어쓰기 인식함
select 'hello gildong' , upper('hello'), 
lower('HELLO'),
initcap('hello gildong'),initcap('hellogildong')
from dual ; 

-- where 절에서 upper, lower 사용 
select * from emp ;
select * from emp where upper(ename) = upper('ALLEN');
select * from emp where upper(ename) = 'ALLEN';
select * from emp where ename = upper('allen');
select * from emp where ename = 'allen';
select * from emp where ename = 'ALLEN';

select * from emp ;
select * from emp where lower(ename) = lower('ALLEN');
select * from emp where lower(ename) = 'ALLEN';
select * from emp where ename = lower('allen');
select * from emp where ename = 'allen';
select * from emp where ename = 'ALLEN';

-- like 와 같이 사용 
select * from emp where upper(ename) like upper('%allen%');
select * from emp where upper(ename) like upper('%aln%');
select * from emp where lower(ename) like '%allen%';
select * from emp where lower(ename) like '%al%';

-- 문자열 길이 length , lengthb 
select ename , length(ename),lengthb(ename) from emp;

select '안녕하세요' , length('안녕하세요') ,lengthb('안녕하세요')
from dual ;


-- 문자열 길이 where 
select * from emp where length(ename) >=5

-- substr()함수 문자열 추출
select job , substr(job,1,2) , substr(job,3,2) , substr(job,5)
from emp ;

-- 음수는 뒤에서부터 시작 
select job , substr(job,-length(job)) , substr(job,-length(job),2) , substr(job,5)
from emp ;

--instr() 문자열내의 해당 패턴의 시작 위치 번호 
select instr('HELLO ,ORACLE!' , 'L') as instr_1,
/*INSTR (문자열 ,패턴 , 시작 인덱스 번호 )*/
instr('HELLO , ORACLE!' , 'L',5) as instr_2,
/*INSTR (문자열 ,패턴 , 시작 인덱스 번호 , 두번째 발견 패턴)*/
instr('HELLO, ORACLE!' , 'L',2,2) as instr_3,
instr('HELLO, ORACLE!' , 'F') as instr_4
from dual;

-- inster() where 에서 사용
select * from emp where instr(ename , 'S') > 0; 
select * from emp where ename like '%S%'; 


/*replace(문자열 , 찾는 문자열(old) , 대체할 문자열(new))*/
select '010-1234-5678' as replace_before,
	replace('010-1234-5678','-',' ') as replace_1,
	replace('010-1234-5678','-') as replace_2
from dual ;


/*lpad(), rpad()*/
/* 왼쪽으로 채우기 lpad(대상 문자열 , 전체길이 ,채울패턴), 오른쪽 채우기 rpad(대상 문자열 , 전체길이 ,채울패턴)*/
select 'Oracle',
lpad('Oracle',10,'!@') as lpad_1
,rpad('Oracle',10,'#-')as rpad_1
,lpad('Oracle',10)as lpad_2
,rpad('Oracle',10)as rpad_2
,length(lpad('Oracle',10))as lpad_2_length
,length(rpad('Oracle',10))as rpad_2_length
,length(trim(lpad('Oracle',10)))as lpad_2_length_trim
,length(trim(rpad('Oracle',10)))as rpad_2_length_trim
from dual ; 

/*rpad()함수를 사용하여 개인정보 뒷자리 마스킹*/

select rpad('971225-',14,'*') as rpad_jmno,
 rpad('010-1234-',13,'*') as rpad_phone
from dual ;


/*문자열 합치기 a||b , 함수 concat(a,b)*/
select empno||ename,
		concat(empno,ename)
		from emp 
		where ename = upper('ALLEN')
		;

/*두개 이상의 문자열 합치기 */
select empno||' : '||ename,
		concat(concat(empno ,' : '),ename)
		from emp 
		where ename = upper('ALLEN')
		;

/*특정 패턴을 지우는 trim() , ltrim(), rtrim()*/
/*trim([삭제옵션(선택)leading|trailing|both]삭제할 문자(선택) from 타겟문자(필수))*/
		select '['||trim(' _ _Oracle_ _ ')||']' as trim ,
			   '['||trim(leading from ' _ _Oracle_ _ ')||']' as trim_leading,
		       '['||trim(trailing from ' _ _Oracle_ _ ')||']' as trim_trailing,
		       '['||trim(both from ' _ _Oracle_ _ ')||']' as trim_both
		from dual;
		
/*trim(leading|trailing|both]삭제할 문자(선택) from 타겟문자(필수))*/
		select '['||trim('_ _Oracle_ _')||']' as trim ,
			   '['||trim('_' from '_ _Oracle_ _')||']' as trim,
		       '['||trim('_' from ' _ _Oracle_ _ ')||']' as trim_,
		       '['||trim(leading '_' from '_ _Oracle_ _')||']' as trim_leading,
		       '['||trim(trailing '_' from '_ _Oracle_ _')||']' as trim_trailing,
		       '['||trim(both '_' from '_ _Oracle_ _')||']' as trim_both
		from dual;
		/*ltrim([원본문자열(필수)],[삭제할 문자집합(선택)])*/
		select '['||trim(' _Oracle_ ')||']' as trim ,
			   '['||ltrim(' _Oracle_ ')||']' as trim_l,
			   '['||ltrim('<_Oracle_>','_<')||']' as trim_l2,
			   '['||ltrim('<_<_Oracle_>','_<')||']' as trim_l3,
			   '['||rtrim(' _Oracle_ ')||']' as trim_r,
			   '['||rtrim('<_Oracle_>','>_')||']' as trim_r2,
			   '['||rtrim('<_Oracle_>>_','>_')||']' as trim_r3
		from dual;
		
		
		
		
		
		
		
		
		
		
		
		


























