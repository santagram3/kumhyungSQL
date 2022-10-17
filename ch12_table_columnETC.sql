

/*데이터 정의의 Data Definition Language (DDL)
 * 데이터 저장소(table), 데이타 타입, 데이타 최대길이 */
drop table emp_ddl;
create table emp_ddl(
empno number(4),
ename varchar2(10),
job varchar(9),
mgr number(4),
hiredate date,
sal number (7,2),
comm number(7,2),
deptno number(2),
tel varchar2(15)
);
select * from emp_ddl;

insert into emp_ddl
values(1111,'홍길동','MANAGER',9999,SYSDATE,5000,NULL,20,'010-1457-1234');
insert into emp_ddl
values(2222,'임꺽정','SALESMAN',1111,SYSDATE,3000,1000,30,'010-6657-6634');
insert into emp_ddl
values(3333,'일지매','SALESMAN',1111,SYSDATE,3000,1000,30,'010-9957-1112');


ROLLBACK
COMMIT
/*db에 직접 반영 - rollback 사용불가 ! 
 * delete 와 truncate차이  
 * 
 * */
truncate table emp_ddl;

/*table 수정 alter table 변경 작업 */
/*table 칼럼 변경 alter table 테이블명 modify*/

alter table emp_ddl modify empno number(5);

select * from emp_ddl;

alter table emp_ddl modify empno number(3);
/*
ORA-01440: column to be modified must be empty to decrease precision or scale
(0 rows affected)
*/

/*칼럼 추가 alter table 테이블명 add 칼럼 타입(길이)*/
alter table emp_ddl add hp varchar(20); -- 아무것도 안들어가서 null 값으로 드러감

/*칼럼 명 바꾸기 alter table 테이블명 rename columm 이전명 to 새로운명*/
alter table emp_ddl rename column hp to tel;

select * from emp_ddl;

/*칼럼 삭제 alter table 테이블명 drop column --데이터 입력된 상태에서 칼럼 제거 - 잘 제거됨  */
alter table emp_ddl drop column tel;

/*테이블 명 변경 rename 이전테이블명 to 바꿀 테이블명 */
rename emp_ddl to emp_myddl;
rename emp_myddl to emp_ddl;

select * from emp_ddl;

drop table 











