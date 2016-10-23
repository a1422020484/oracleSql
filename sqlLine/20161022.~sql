--1、plsql初体验
begin
  dbms_output.put_line('hello');
  --输出换行
end;
/
--2、
--在sqlplus 中需要设置，但是在plsql中不需要设置。是否输出结果。只在当前输入框内有效
set serveroutput on/off ;


--3、计算结果
declare
    mysum number(3):=0;
    tip nvarchar2(10):='结果是';
begin
    --定义业务运算
    mysum :=10+100;
    --输出结果
    dbms_output.put_line(tip||mysum);
end;
/

--4、%type  当定义变量，该变量的类型与表中某字段的类型相同时候可以使用
--创建emp表
create table emp
(
       name nvarchar2(20),
       age number(3)
)

declare
    pename emp.name%type; 
    peage  emp.age%type;
begin
    --将对应的值放到对应的变量中
    select name,age into pename,peage from emp where name='yang';
    dbms_output.put_line('姓名是：'||pename||'年龄是：'||peage);
end;
/
--5.%rowtype 将emp中所有的字段都赋值到emp_record中,通过emp.name的方式来访问
             --当定义该变量与表结构的变量都相同的时候来进行定义。
declare
    --声明的emp_record，必须将所有的字段都放到emp_record中，不能只放其中几个字段
    emp_record emp%rowtype;
begin
    select * into emp_record from emp where name = 'yang';
    dbms_output.put_line(emp_record.name);
end;
/
--6、条件判断（1）if else
--使用if-else-end if显示今天是星期几 是工作日还是休息日
--sql
select to_char(sysdate,'day') from dual;
--plsql
declare
       pday varchar2(10);
begin
       select to_char(sysdate,'day') into pday from dual;
       dbms_output.put_line('今天是：'||pday);
       if pday in ('星期六','星期日') then
          dbms_output.put_line('今天是休息日');
       else
          dbms_output.put_line('今天是工作日');
       end if;
end;
/
--7、条件判断（2）if then 
   --elsif then 
   --elsif then
   --end if;
declare
   --默认值
   --age number(3) := 22;
   --键盘输入
   age number(3) :=&age;
begin
   if age<16 then 
      dbms_output.put_line('age是16以下');
   elsif age<30 then
      dbms_output.put_line('age是30以下');
   elsif age<60 then
      dbms_output.put_line('age是60以下');
   elsif age<80 then
      dbms_output.put_line('age是80以下');
   end if;
end;
/

--8、循环变量 loop
declare 
   i number(2) :=1;
begin
   loop
     --当i>10时候循环退出
   exit when i>10;
   --输出i的值
   dbms_output.put_line(i);
   i :=i+1;
   end loop;
end;
/
--9、循环变量 while
declare
   i number(2) :=1;
begin
   while i<11
   loop 
         dbms_output.put_line(i);
         i:=i+1;
   end loop;
end;
/

--插入99条记录
declare
   i number(3) :=1;
begin
   while i<100
   loop
         dbms_output.put_line(i);
         insert into emp(name,age) values ('yang'||i,i);
         i:=i+1;
   end loop;
end;
/
--删除99条记录
declare
   i number(3) :=1;
begin
   while i<100
   loop
         dbms_output.put_line(i);
         delete from emp where age = i;
         i :=i+1;
   end loop;
end;
/
--11、for 循环
declare
   i number(2) :=1;
begin
   --只能是两个点，不能多
   for i in 1..10
   loop
       dbms_output.put_line(i);
   end loop;
end;
/ 
--12、游标Cursor
   --什么是游标
   --从上向下一次获取每一条记录的内容
--(1)无参游标类型
declare
   --定义游标
   --cursor 名称
   cursor cemp is select name,age from emp;
   cname emp.name%type;
   cage  emp.age%type;
begin
   --打开游标,初始状态游标在第一条记录之前或之上；
   open cemp;
   loop
       --向下移动游标一条。
       fetch cemp into cname,cage;
       --退出游标,当游标下移一次之后，找不到记录，就循环退出；
       exit when cemp%notfound;
       --输出结果
       dbms_output.put_line(cname||'---'||cage);
   end loop;
   --关闭游标
   close cemp;
end;
/
--(2)有参游标类型
declare 
   cursor cemp(cage emp.age%type) is select name,age from emp where age=cage;
   ccname emp.name%type;
   ccage  emp.age%type;
begin
   --设置参数
   open cemp(10);
   --输入参数
   --open cemp(&cage);
        loop
          fetch cemp into ccname,ccage;
          exit when cemp%notfound;
          --输出结果
          dbms_output.put_line(ccname||'---'||ccage);
        end loop;
   close cemp;
end;
/
--13、exception
--(1)内置异常
declare 
   myresult varchar2(10);
begin
   myresult :=1/0;
   dbms_output.put_line(10);
exception
   when zero_divide then
        dbms_output.put_line('除数为0');
     
end;
/
no_data_found
--自定义异常
nohave_emp_found
         
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   






















    
