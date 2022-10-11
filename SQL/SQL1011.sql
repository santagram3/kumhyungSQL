select * from dba_users;
select * from dba_data_files;
select * from dba_tablespaces;/*primary key는 주키로 사용하고 인덱스(빠른검색을 위해서 설정)로도 사용*/
select * from user_indexes;

/* index생성 create index 인덱스명 on 테이블(칼럼)*/
create index ind_dept
on dept(dname);
/*생성된 인덱스에 해당하는 칼럼을 기준으로 조회*/
select * from dept where dname='SALES';

/*VIEW를 이용하면 내가 원하는 부분만 추출해서 재 추출 할 수 있게 해주는 실행문*/
select * from emp;
select * from dept;
select * from salgrade;

-- view 생성 
create view emp_dept_salInfo as 
select empno,ename,job,sal,dname,loc,grade 
from emp, dept, salgrade 
where emp.deptno = dept.deptno 
and emp.sal between salgrade.losal and salgrade.hisal;
/* 생성된 view확인*/
select * from user_views;
/*view로 부터 조회 ->query문을 찾아가 실행*/
select * from emp_dept_salInfo;


/*민감한 정보를 제외하고 사원번호, 사원이름, 부서번호, 직무 column으로만 view 생성*/
create view emp_info as 
select empno, ename, job, deptno
from emp;

-- view로 부터 공개된 저옵 조회 
select * from emp_info;

--해결됨 


-- 시퀀스 생성 
create sequence seq_no;
-- 접속한 유저가 생성한 모든 오브젝트 정보 조회  user_objects  
select * from user_objects order by object_type;


-- 시퀀스로 부터 값 조회 
-- select 값(식|함수) from 테이블; 
select 'hello' from dual;
select sysdate from emp;
select 10*3 from dual;
select seq_no.nextval , seq_no.currval from dual; 

-- 시노님(동의어) 생성 .. 
create synonym myEmp
for scott.emp;

select * from myEmp;

-- 여기까지이해 됨 


-- 프로시져 생성 
create or replace procedure pro_noparam 
is
v_empno number(4):= 7788;
v_ename varchr2(10);
begin 
	v_ename := 'SCOTT'
	dbms_output.put_line('v_empno :' || v_empno);
	dbms_output.put_line('v_ename :' || v_ename);
end; 


-- 함수 생성 
create or replace function func_aftertax(sal in number)
return number  /*입력되는 매개 변수 선언 */
is 
tax number:=0.05;/*리턴할 타입 선언*/
begin
	return (round(sal - (sal*tax)));
end func_atertax;

-- 함수 실행 
select func_aftertax(10000) from dual;


create table a(dol varchar2(10));
create table b(dol varchar2(10));
insert into a values('hello');
insert into b values('hello');
select * from a ;
select * from b ;
-- a테이블에 값이 insert 되면 b 에도 자동 insert되게 trigger 갖성
/* :old.col1<- null , :new.col1 <- 'hello'
 * 삭제일경우 
 * :old.col1<- 'hello' , :new.col1 <- null
 * 수정일 경우 'hello' - > 'hi'
 * :old.col1<- 'hello' , :new.col1 <- 'hi'
 * */
create or replace trigger trg_insert_a
after /*트리거 발생 시점: 입력 직후*/
insert on a /*insert <- 이벤트(입력), a<-테이블명 */
for each row /*행 단위 트리거 호출 */
begin
	insert into b(dol) values (:new.col1);
end ;


/*트리거 상태 확인*/

select * from user_triggers;

insert into a(dol) values('hello kim');

-- 트리거 비활성화 
alter trigger trg_insert_a disable;
-- 트리거 활성화  
alter trigger trg_insert_a enable;