DECLARE
original int;
lastdigit int;
rev int;
BEGIN
original:=12345;
rev:=0;
dbms_output.put_line(original||'  '||rev); --This print statement is given early on in the code, just to print the original condition of the values to compare it with the new reversed values
while original>0 loop --We used the "original" number as the limit for our loop as in the end the value of the original number will come down to zero after all the opertaions has been done.
	lastdigit:=mod(original,10); --This is the main part of the code where we separate the last digit from the number to break down the number one by one to store it in a reverse order in the rev variable.
	rev:= (rev*10)+lastdigit; --This is where the number is stored in reverse by breaking the last digit of the number and sotring it. The rev*10 is done to store the numbers in proper format. Here, after the first loop, rev=5. Next number that we have to store is 4 and we have to get something like 54. But if we dont use rev*10, we will get 9. But on the other hand when we use rev*10, we get 50+4 = 54, which is the proper format in which we want the answer
	original:=TRUNC(original/10); --The TRUNC function is used to take only the integer part of the number that it is working with. eg: if we do TRUNC(10.123,0), we would get 10. But if we do TRUNC(10.123,2), then we would get something like 10.23. 
end loop;
dbms_output.put_line(original||'  '||rev);
end;
