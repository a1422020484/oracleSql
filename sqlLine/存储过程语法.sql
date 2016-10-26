--存储过程语法
Oracle存储过程基本语法 存储过程 
　　1 CREATE OR REPLACE PROCEDURE 存储过程名 
　　2 IS/AS 
　　3 BEGIN 
　　4 NULL; 
　　5 END; 
行1: 
　　CREATE OR REPLACE PROCEDURE 是一个SQL语句通知Oracle数据库去创建一个叫做skeleton存储过程, 如果存在就覆盖它; 
行2: 
　　IS/AS关键词表明后面将跟随一个PL/SQL体。 IS和AS是一个意思
行3: 
　　BEGIN关键词表明PL/SQL体的开始。 
行4: 
　　NULL PL/SQL语句表明什么事都不做，这句不能删去，因为PL/SQL体中至少需要有一句; 
行5: 
　　END关键词表明PL/SQL体的结束 


create or replace procedure 存储过程名（param1 in type，param2 out type） 
as 
       变量1 类型（值范围）; --vs_msg VARCHAR2(4000); 
       变量2 类型（值范围）; 
Begin 
Select count(*) into 变量1 from 表A where列名=param1； 
If (判断条件) then 
Select 列名 into 变量2 from 表A where列名=param1； 
Dbms_output.Put_line(‘打印信息'); 
Elsif (判断条件) then 
Dbms_output.Put_line(‘打印信息'); 
Else 
Raise 异常名（NO_DATA_FOUND）; 
End if; 
Exception 
When others then 
Rollback; 
End; 
