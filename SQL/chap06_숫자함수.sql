/*숫자 관련 함수들*/
/*round (숫자값, 올림자리수)*/
SELECT ROUND(1234.5678) AS ROUND,--소수점 첫자리에서 반올림
       ROUND(1234.5678, 0) AS ROUND_0,--소수점 첫자리에서 반올림
       ROUND(1234.5678, 1) AS ROUND_1,--소수점 둘째자리에서 반올림
       ROUND(1234.5678, 2) AS ROUND_2,--소수점 셋째자리에서 반올림
       ROUND(1234.5678, -1) AS ROUND_3,--1의자리에서 반올림
       ROUND(1234.5678, -2) AS ROUND_4--십의자리에서 반올림
  FROM DUAL;
  
 /*trunc (숫자값, 버림 자리수)*/ 
  SELECT trunc(1234.5678) AS trunc,--소수점 첫자리에서 버림 
       trunc(1234.5678, 0) AS trunc_0,--소수점 첫자리에서 버림
       trunc(1234.5678, 1) AS trunc_1,--소수점 둘째자리에서 버림
       trunc(1234.5678, 2) AS trunc_2,--소수점 셋째자리에서 버림
       trunc(1234.5678, -1) AS trunc_3,--1의자리에서 버림
       trunc(1234.5678, -2) AS trunc_4--십의자리에서 버림
  FROM DUAL;
  
  /*지정한 숫자와 가까운 정수 ceil()-올림정수 ,floor()-내림정수*/
  select ceil(3.14) , floor(3.14) , ceil(-3.14) , floor(-3.14)
  from dual;
  
  /*나머지 함수 mod(a,b)*/
  select mod(15,6) , mod(10,2), mod(11,2), mod(-5,2)
  from dual;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  