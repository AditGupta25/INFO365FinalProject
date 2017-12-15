CREATE OR REPLACE FUNCTION divide (total IN NUMBER, games IN NUMBER)
  RETURN number IS
  quotient NUMBER(3,1);
  BEGIN
    quotient := total/games;
    RETURN quotient;
  END;
/

/*
* To test function, a call like this.
 */
-- DECLARE
--   c NUMBER(3,1);
-- BEGIN
--   c := divide(543,23);
--   dbms_output.put_line('Avg Points per game: ' || c);
-- END;
-- /