DECLARE
a int;
b int;
c int;
d int;
BEGIN
a:=1;
b:=1;
c:=0;
d:=10;
 dbms_output.put_line(a);
 dbms_output.put_line(b);
for i in 1..d loop	
	c:= a+b;
	dbms_output.put_line(c);
	a:= b+c;
	dbms_output.put_line(a);
	b:= c+a;
	dbms_output.put_line(b);
end loop;
end;
