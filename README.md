Created On 12-25-2017

Trust the Process (Basketball Database)

By: Adit Gupta, Dhruv Patel, Oluwatobi Olaleya, Kishan Joshi

----------------------------------------------------------------------------------------------


This document describes the scripts to create, test, and delete the Database and provides specifics of the components that make up this project.


==============================================================================================
					
					Script Descriptions

1. Create.sql - This script creates the 9 tables required for the database. The Tables are named Coach, Team, Season, Team_Record, Player, Stats.  At the top of the script there are drop statements to drop the tables before creating them to avoid errors.


2. Insert.sql - This script contains insert statements to populate all tables in the database.


3. Procs.sql - This script creates all procedures and triggers for our database. The script doesnt spool a file, but there are comments within it to explain what each procedur does.


4. Autorun.sql - This script runs automatically runs through all set up and cleanup phases. Output will be spooled to autorun.lst


5. Test.sql - This script contains several sql and pl/sql statememts that test all procedures and triggers created with the Create_Procs.sql script. 



6. Cleanup.sql - This script deletes all tables, procedures, functions and triggers for the pickup database.


==============================================================================================

To use this Projects (Please follow this order)

  1) Create.sql - This script is run with the @Create.sql command in the ssh shell
  2) Insert.sql - This script is run with the @Insert.sql command in the ssh shell
  3) Procs.sql -This script is run with the @Procs.sql command in the ssh shell
  4) Test.sql - This script is run with the @Test.sql command in the ssh shell. All output will spooled to test.lst file
  5) Cleanup.sql - This script is run with the @Cleanup.sql command in the ssh shell

  Additional Files: 
  1) Documentation.docx - This document provides specific details on the ideation and creation process of this project. It provides things like requirements, scope, design, functionality, and much more. 