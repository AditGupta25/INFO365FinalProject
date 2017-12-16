--Autorun.SQL

--Created On 12-25-2017

--By: Adit Gupta, Dhruv Patel, Oluwatobi Olaleya, Kishan Joshi


--This script automatically runs commands that create and populates the tables, runs the triggers, test procedures, and then later deletes them.

SPOOL autorun.lst;


Pause About to Create tables for the database. The tables are: Coach, Team, Season, Team_Record, Player and Stats. <PRESS ENTER TO CONTINUE>
@Create.sql;


Pause About to Insert Values into the tables. <PRESS ENTER TO CONTINUE>
@Insert.sql;



Pause Creating Procedures, Triggers, and functions. Please refer to comments in script to see what it does <PRESS ENTER TO CONTINUE>
@Procs.sql



Pause Testing all functions, and triggers. Results of each test wil be shown on the screen. Output will also be spooled to test.lst. <PRESS ENTER TO CONTINUE>
@Test.sql



Pause Cleaning up the database. All tables, functions, triggers, etc, will be removed. <PRESS ENTER TO CONTINUE>
@Cleanup.sql



SPOOL OFF;