
/*tranaction commit; rollback*/
-- create table 은 트렌젝션이 아님 . 그래서 그냥 DB에 그냥 반영 
create table dept_tc1 as select * from dept; 

select * from dept_tc1; 

insert into dept_tc1 values(50,'DATABASE','SEOUL');
UPDATE DEPT_TC1 SET LOC = 'BUSAN' WHERE deptno=40;
delete from dept_tc1 where dname = 'RESEARCH';

SELECT * FROM dept_tc1;
/*메모리에서 작업한 내용을 DB에 영구 저장*/
commit

insert into DEPT_TC1 values(60,'WEB','PANGYO');
UPDATE DEPT_TC1 SET LOC = 'JEJU' WHERE deptno=40;
delete from dept_tc1 where dname = 'DATABASE';

SELECT * FROM dept_tc1;
/*앞전 COMMIT 시점 이후 부터 작업 INSERT,  UPDATE , DELETE 작업 */
/*내용을 이전 COMMIT; 시점을 되돌림*/
ROLLBACK


