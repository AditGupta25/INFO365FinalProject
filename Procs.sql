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

/*
WARNING, NOT TESTED. NEED to insert first to test.
Updates the ppg after each stat update. if no games played, then does not divide by zero, instead keeps ppg at 0.
 */
CREATE or REPLACE TRIGGER Stats_PPG_After_Update
AFTER
  INSERT OR
  UPDATE
  ON Stats
FOR EACH ROW
  DECLARE
    v_points NUMBER(4);
    v_gamesPlayed NUMBER(3);
    v_ppg NUMBER(3,1);

  BEGIN

    SELECT Points, GamesPlayed INTO v_points, v_gamesPlayed
    FROM Stats;

    If v_gamesPlayed < 1 THEN
      UPDATE Stats
      SET PPG = 0;
    ELSE
      v_ppg := divide(v_points, v_gamesPlayed);
      UPDATE Stats
      SET PPG = v_ppg;

    END IF;
  END Stats_PPG_After_Update;
/


/*
NOT TESTED YET. NEED to insert first
Query Im working on that gives top 5 leaders in PPG.
Will soon wrap in a stored Procedure once tested
Soon will make one for APG, RPG, Wins
 */
SELECT fname, lname, position, ppg from player, stats
  where player.playerid = stats.playerid
        AND ROWNUM <= 5
  ORDER BY ppg DESC;



/*
------------------------------------------------
Here are the 4 Triggers made by Adit Gupta 
Below are the triggers and a brief description of 
what they do
------------------------------------------------
*/





/*
------------------------------------------------
End Triggers
------------------------------------------------
*/
  
