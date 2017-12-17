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
Updates the ppg after each stat update. if no games played, then does not divide by zero, instead keeps ppg at 0.
 */
CREATE or REPLACE TRIGGER Stats_PPG_After_Update
BEFORE
INSERT OR
UPDATE
  ON Stats
FOR EACH ROW
  DECLARE
    v_points NUMBER(4);
    v_gamesPlayed NUMBER(3);
    v_ppg NUMBER(3,1);

  BEGIN
    v_gamesPlayed := :new.GamesPlayed;
    v_points := :new.Points;

    If v_gamesPlayed < 1 THEN
      :new.PPG := 0;
    ELSE
      v_ppg := divide(v_points, v_gamesPlayed);
      :new.PPG := v_ppg;
    END IF;
  END Stats_PPG_After_Update;
/

CREATE or REPLACE TRIGGER Stats_APG_After_Update
BEFORE
INSERT OR
UPDATE
  ON Stats
FOR EACH ROW
  DECLARE
    v_assists NUMBER(4);
    v_gamesPlayed NUMBER(3);
    v_apg NUMBER(3,1);

  BEGIN
    v_gamesPlayed := :new.GamesPlayed;
    v_assists := :new.Assists;

    If v_gamesPlayed < 1 THEN
      :new.APG := 0;
    ELSE
      v_apg := divide(v_assists, v_gamesPlayed);
      :new.APG := v_apg;
    END IF;
  END Stats_APG_After_Update;
/

CREATE or REPLACE TRIGGER Stats_RPG_After_Update
BEFORE
INSERT OR
UPDATE
  ON Stats
FOR EACH ROW
  DECLARE
    v_rebounds NUMBER(4);
    v_gamesPlayed NUMBER(3);
    v_rpg NUMBER(3,1);

  BEGIN
    v_gamesPlayed := :new.GamesPlayed;
    v_rebounds := :new.Rebounds;

    If v_gamesPlayed < 1 THEN
      :new.RPG := 0;
    ELSE
      v_rpg := divide(v_rebounds, v_gamesPlayed);
      :new.RPG := v_rpg;
    END IF;
  END Stats_RPG_After_Update;
/
/*
Query Im working on that gives top 5 leaders in PPG.
Will soon wrap in a stored Procedure once tested
Soon will make one for APG, RPG, Wins
 */

SELECT * FROM
  (
    SELECT fname, lname, position, ppg from player, stats
    WHERE stats.recordid = (SELECT MAX(RecordID) FROM Stats WHERE player.playerid = stats.playerid)
    ORDER BY ppg DESC
  ) results
WHERE ROWNUM <= 5;


CREATE OR REPLACE PROCEDURE top_ppg
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('League Leaders in PPG for the latest year');
    dbms_output.put_line('First'|| ' ' || 'Last' || ' ' || 'Position' || ' ' || 'PPG');
    dbms_output.put_line(chr(13)||chr(10));

    FOR row IN (SELECT * FROM
      (
        SELECT fname, lname, position, ppg from player, stats
        WHERE stats.recordid = (SELECT MAX(RecordID) FROM Stats WHERE player.playerid = stats.playerid)
        ORDER BY ppg DESC
      ) results
    WHERE ROWNUM <= 5)
    LOOP
      dbms_output.put_line(row.fname||' '||row.lname||' '|| row.position || ' ' || row.ppg);
    END LOOP;
  END;
/

CREATE OR REPLACE PROCEDURE top_apg
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('League Leaders in APG for the latest year');
    dbms_output.put_line('First'|| ' ' || 'Last' || ' ' || 'Position' || ' ' || 'APG');
    dbms_output.put_line(chr(13)||chr(10));

    FOR row IN (SELECT * FROM
      (
        SELECT fname, lname, position, apg from player, stats
        WHERE stats.recordid = (SELECT MAX(RecordID) FROM Stats WHERE player.playerid = stats.playerid)
        ORDER BY apg DESC
      ) results
    WHERE ROWNUM <= 5)
    LOOP
      dbms_output.put_line(row.fname||' '||row.lname||' '|| row.position || ' ' || row.apg);
    END LOOP;
  END;
/

CREATE OR REPLACE PROCEDURE top_rpg
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('League Leaders in RPG for the latest year');
    dbms_output.put_line('First'|| ' ' || 'Last' || ' ' || 'Position' || ' ' || 'APG');
    dbms_output.put_line(chr(13)||chr(10));

    FOR row IN (SELECT * FROM
      (
        SELECT fname, lname, position, rpg from player, stats
        WHERE stats.recordid = (SELECT MAX(RecordID) FROM Stats WHERE player.playerid = stats.playerid)
        ORDER BY rpg DESC
      ) results
    WHERE ROWNUM <= 5)
    LOOP
      dbms_output.put_line(row.fname||' '||row.lname||' '|| row.position || ' ' || row.rpg);
    END LOOP;
  END;
/

/*
------------------------------------------------
Here are the 4 Procedures
------------------------------------------------
*/
--This query will print salaries of the coach that are most paid, with his name. Gets Top 3 hoighest paid coaches
-- CREATE OR REPLACE PROCEDURE most_paid_coach_details
-- IS
--   coach_cur IS
--       SELECT * FROM
--       (
--         SELECT Fname, Lname, Salary,
--         RANK() OVER (ORDER BY SALARY DESC) EMPRANK
--         FROM coach
--       )
--       WHERE EMPRANK <= 3;
--       coach_rec coach_cur%rowtype;
-- BEGIN
--   FOR coach_rec in coach_cur
--     LOOP
--       dbms_output.put_line(coach_cur.Fname || ' ' ||coach_cur.Lname
--       || ' ' ||coach_cur.Salary);
--    END LOOP;
-- EXCEPTION
--   WHEN OTHERS THEN
--     DBMS_OUTPUT.PUT_LINE('There was an error that occured!');
--
-- END;
-- /

CREATE OR REPLACE PROCEDURE most_paid_coach
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('Worst Records in the year from teams');
    dbms_output.put_line('First Name' || ' ' || 'Last Name' || ' ' || 'Salary');
    dbms_output.put_line(chr(13)||chr(10));

    FOR coach_cur IN (SELECT * FROM
      (
        SELECT Fname, Lname, Salary,
          RANK() OVER (ORDER BY SALARY DESC) EMPRANK
        FROM coach
      )
    WHERE EMPRANK <= 3)
    LOOP
      dbms_output.put_line(coach_cur.Fname || ' ' ||coach_cur.Lname
                           || ' ' ||coach_cur.Salary);
    END LOOP;
  END;
/


--This query will Print out the players with the most points to the least
CREATE OR REPLACE PROCEDURE players_with_most_points
IS    
   playerPoint_cur
      SELECT PlayerID, GamesPlayed, Assists, Rebounds, Points,
      RANK() OVER (ORDER BY POINTS DESC) POINTRANK
      FROM stats
      (
        SELECT 
      )
      point_rec playerPoint_cur%rowtype;
BEGIN    
  FOR point_rec in playerPoint_cur
    LOOP 
      dbms_output.put_line(point_rec.PlayerID || ' ' ||point_rec.GamesPlayed
      || ' ' ||point_rec.Assists || ' ' ||point_rec.Rebounds || ' ' ||point_rec.Points);
   END LOOP;
EXCEPTION    
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('There was an error that occured!');
END; 
/


--This query will run the query that will get the player with the most assists
CREATE OR REPLACE PROCEDURE players_with_most_assists
IS    
   playerAssist_cur
      SELECT PlayerID, GamesPlayed, Assists, Rebounds, Points,
      RANK() OVER (ORDER BY Assists DESC) AssistRank
      FROM stats
      (
        SELECT 
      )
      assist_rec playerAssist_cur%rowtype;
BEGIN    
  FOR assist_rec in playerAssist_cur
    LOOP 
      dbms_output.put_line(assist_rec.PlayerID || ' ' ||assist_rec.GamesPlayed
      || ' ' ||assist_rec.Assists || ' ' ||assist_rec.Rebounds || ' ' ||assist_rec.Points);
   END LOOP;
EXCEPTION    
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('There was an error that occured!');
END; 
/


--Gets the player that has played the most games. Top 3 players with most games won.
CREATE OR REPLACE PROCEDURE players_with_most_games_played
IS    
   gamesPlayes_cur
      SELECT PlayerID, GamesPlayed, Assists, Rebounds, Points,
      RANK() OVER (ORDER BY GamesPlayed DESC) gamesRank
      FROM stats
      (
        SELECT 
      )
       WHERE gamesRank <= 3;
      games_rec gamesPlayes_cur%rowtype;
BEGIN    
  FOR games_rec in gamesPlayes_cur
    LOOP 
      dbms_output.put_line(games_rec.PlayerID || ' ' ||games_rec.GamesPlayed
      || ' ' ||games_rec.Assists || ' ' ||games_rec.Rebounds || ' ' ||games_rec.Points);
   END LOOP;
EXCEPTION    
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('There was an error that occured!');
END; 
/

--This query shows the 3 best seasons, by wins.
-- CREATE OR REPLACE PROCEDURE best_records
-- IS
-- 	win_cur IS
-- 	SELECT * FROM
-- 	(
-- 		SELECT TeamID, Wins, SeasonID
-- 		RANK() OVER (ORDER BY Wins DESC) WINRANK
-- 		FROM Team_Record
-- 	)
-- 	WHERE WINRANK <= 3;
-- 	win_rec team_cur%rowtype;
-- BEGIN
-- FOR win_rec in win_cur
-- 	LOOP
-- 		dbms_output.put_line(win_cur.TeamID || ' ' ||win_cur.SeasonID
-- 			|| ' '||win_cur.Wins);
-- 	END LOOP
-- EXCEPTION
-- 	WHEN OTHERS THEN
-- 		DBMS_OUTPUT.PUT_LINE('There was an error that occured');
--
-- END;

CREATE OR REPLACE PROCEDURE best_records
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('Best Records from teams');
    dbms_output.put_line('TeamID'|| ' ' || 'Name' || ' ' || 'SeasonID' || ' ' || 'Wins');
    dbms_output.put_line(chr(13)||chr(10));

    FOR loss_cur IN (SELECT * FROM
      (
        SELECT Team.TeamID, Name, Wins, SeasonID,
          RANK() OVER (ORDER BY Wins DESC) WINRANK
        FROM Team_Record, Team
        WHERE Team_Record.TeamID = Team.TeamID
      )
    WHERE WINRANK <= 3)
    LOOP
      dbms_output.put_line(loss_cur.TeamID || ' ' || loss_cur.Name || ' '||loss_cur.SeasonID
                           || ' '||loss_cur.Wins);
    END LOOP;
  END;
/
--This query shows the 3 worst seasons, by losses.




--
-- CREATE OR REPLACE PROCEDURE worst_records
-- IS
-- 	loss_cur IS
-- 	SELECT * FROM
-- 	(
-- 		SELECT TeamID, Losses, SeasonID,
-- 		RANK() OVER (ORDER BY Losses DESC) LOSSRANK
-- 		FROM Team_Record
-- 	)
-- 	WHERE LOSSRANK <= 3;
-- 	loss_rec team_cur%rowtype;
-- BEGIN
-- FOR loss_rec in team_cur
-- 	LOOP
-- 		dbms_output.put_line(loss_cur.TeamID || ' ' ||loss_cur.SeasonID
-- 			|| ' '||loss_cur.Losses);
-- 	END LOOP
-- EXCEPTION
-- 	WHEN OTHERS THEN
-- 		DBMS_OUTPUT.PUT_LINE('There was an error that occured');
--
-- END;
-- /


CREATE OR REPLACE PROCEDURE worst_records
AS

  BEGIN
    dbms_output.put_line(chr(13)||chr(10));
    dbms_output.put_line('Worst Records from teams');
    dbms_output.put_line('TeamID'|| ' ' || 'Name' || ' ' || 'SeasonID' || ' ' || 'Losses');
    dbms_output.put_line(chr(13)||chr(10));

    FOR loss_cur IN (SELECT * FROM
      (
        SELECT Team.TeamID, Name, Losses, SeasonID,
          RANK() OVER (ORDER BY Losses DESC) LOSSRANK
        FROM Team_Record, Team
        WHERE Team_Record.TeamID = Team.TeamID
      )
    WHERE LOSSRANK <= 3)
    LOOP
      dbms_output.put_line(loss_cur.TeamID || ' ' || loss_cur.Name || ' '||loss_cur.SeasonID
                           || ' '||loss_cur.Losses);
    END LOOP;
  END;
/
/*
------------------------------------------------
End Procedures
------------------------------------------------
*/
  
