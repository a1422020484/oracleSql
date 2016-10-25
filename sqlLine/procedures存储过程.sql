
--1、创建存储过程
CREATE OR REPLACE PROCEDURE INSERT_SP AS
BEGIN
INSERT INTO t_user
SELECT * from t_user2;
COMMIT;
END INSERT_SP ;


--2、建立JOB：
DECLARE
   job_no_123 NUMBER;   
BEGINs
   --DBMS_JOB.SUBMIT(job_no_123,'INSERT_SP;',sysdate,'TRUNC(sysdate)+1+19/24');     -- 20/24 每天晚上8点
   DBMS_JOB.SUBMIT(job_no_123,'INSERT_SP;',sysdate,'TRUNC(sysdate,''mi'') + 1 / (24*60)');     --每分钟执行一次
   COMMIT;
END; 
/
--使用dbms_job.submit方法过程，这个过程有五个参数：job、what、next_date、interval与no_parse。

dbms_job.submit( 
job       OUT binary_ineger, 
What      IN  varchar2, 
next_date IN  date, 
interval  IN  varchar2, 
no_parse  IN  booean:=FALSE)

--job参数是输出参数，由submit()过程返回的binary_ineger，这个值用来唯一标识一个工作。一般定义一个变量接收，可以去user_jobs视图查询job值。 
--what参数是将被执行的PL/SQL代码块，存储过程名称等。 
--next_date参数指识何时将运行这个工作。 
--interval参数何时这个工作将被重执行。 
--no_parse参数指示此工作在提交时或执行时是否应进行语法分析——true，默认值false。指示此PL/SQL代码在它第一次执行时应进行语法分析，而FALSE指示本PL/SQL代码应立即进行语法分析。
--binary_integer对应有符号的整数.number可以包含小数点,你可以认为binary_integer是number的子集,number(precision,scale),对于binary_integer,不考虑大小取值,他相当于number(precision,0)





