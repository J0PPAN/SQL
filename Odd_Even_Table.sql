CREATE TABLE even (evenno INT);
CREATE TABLE odd (oddno INT);

DECLARE
   n INT;
BEGIN
   -- Provide a static value for demonstration
   n :=10;

   FOR i IN 1..n LOOP
      IF MOD(i, 2) = 0 THEN
         INSERT INTO even VALUES (i);
      ELSE
         INSERT INTO odd VALUES (i);
      END IF;
   END LOOP;

   COMMIT; -- Add COMMIT to persist changes
END;
/
select * from even;
select * from odd;
