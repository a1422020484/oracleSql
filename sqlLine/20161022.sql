--1��plsql������
begin
  dbms_output.put_line('hello');
  --�������
end;
/
--2��
--��sqlplus ����Ҫ���ã�������plsql�в���Ҫ���á��Ƿ���������ֻ�ڵ�ǰ���������Ч
set serveroutput on/off ;


--3��������
declare
    mysum number(3):=0;
    tip nvarchar2(10):='�����';
begin
    --����ҵ������
    mysum :=10+100;
    --������
    dbms_output.put_line(tip||mysum);
end;
/

--4��%type  ������������ñ��������������ĳ�ֶε�������ͬʱ�����ʹ��
--����emp��
create table emp
(
       name nvarchar2(20),
       age number(3)
)

declare
    pename emp.name%type; 
    peage  emp.age%type;
begin
    --����Ӧ��ֵ�ŵ���Ӧ�ı�����
    select name,age into pename,peage from emp where name='yang';
    dbms_output.put_line('�����ǣ�'||pename||'�����ǣ�'||peage);
end;
/
--5.%rowtype ��emp�����е��ֶζ���ֵ��emp_record��,ͨ��emp.name�ķ�ʽ������
             --������ñ������ṹ�ı�������ͬ��ʱ�������ж��塣
declare
    --������emp_record�����뽫���е��ֶζ��ŵ�emp_record�У�����ֻ�����м����ֶ�
    emp_record emp%rowtype;
begin
    select * into emp_record from emp where name = 'yang';
    dbms_output.put_line(emp_record.name);
end;
/
--6�������жϣ�1��if else
--ʹ��if-else-end if��ʾ���������ڼ� �ǹ����ջ�����Ϣ��
--sql
select to_char(sysdate,'day') from dual;
--plsql
declare
       pday varchar2(10);
begin
       select to_char(sysdate,'day') into pday from dual;
       dbms_output.put_line('�����ǣ�'||pday);
       if pday in ('������','������') then
          dbms_output.put_line('��������Ϣ��');
       else
          dbms_output.put_line('�����ǹ�����');
       end if;
end;
/
--7�������жϣ�2��if then 
   --elsif then 
   --elsif then
   --end if;
declare
   --Ĭ��ֵ
   --age number(3) := 22;
   --��������
   age number(3) :=&age;
begin
   if age<16 then 
      dbms_output.put_line('age��16����');
   elsif age<30 then
      dbms_output.put_line('age��30����');
   elsif age<60 then
      dbms_output.put_line('age��60����');
   elsif age<80 then
      dbms_output.put_line('age��80����');
   end if;
end;
/

--8��ѭ������
declare 
   i number(2) :=1;
begin
   loop
     --��i>10ʱ��ѭ���˳�
   exit when i>10;
   --���i��ֵ
   dbms_output.put_line(i);
   end loop;























    
