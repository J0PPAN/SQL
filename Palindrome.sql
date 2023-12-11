DECLARE
Ostring varchar2(30);
Rstring varchar2(30);
Length int;
BEGIN
Ostring:='malayalam';
Length:= LENGTH(Ostring);
for i in REVERSE 0..Length loop
Rstring:=Rstring || SUBSTR(Ostring,i,1);
end loop;
if Rstring = Ostring then
dbms_output.put_line('The given string is a palindrome');
else
dbms_output.put_line('The given string is not a palindrome');
end if;
end;
