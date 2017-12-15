--INFO 365
--FLAGRANTS ONLY
--Insert Table Statements


--SEASON
INSERT INTO Season values (2008,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2009,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2010,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2011,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2012,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2013,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2014,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2015,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2016,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');
INSERT INTO Season values (2017,'[CHAMPIONPLACEHOLDER]', '[MVPPLACEHOLDER]');

--TEAMS
INSERT INTO Team values (0001,'Process', 'Philadelphia, Harris');
INSERT INTO Team values (0002,'Metros', 'New York, Dolan');
INSERT INTO Team values (0003,'Irish', 'Boston, Gaston');
INSERT INTO Team values (0004,'Stars', 'Los Angeles', 'Buss');
INSERT INTO Team values (0002,'Toros', 'Chicago', 'Reinsdorf');

--COACHES
INSERT INTO Coach values (0011,'Brown', 'Mike', 700000);
INSERT INTO Coach values (0022,'Hornacek', 'Jeff', 7200000);
INSERT INTO Coach values (0033,'Auerbach', 'Red', 9800000);
INSERT INTO Coach values (0044,'Jackson', 'Phil', 110000);
INSERT INTO Coach values (0055,'Thibodeau', 'Tom', 800000);
INSERT INTO Coach values (0066,'Scott', 'Byron', 800000);
INSERT INTO Coach values (0077,'Stevens', 'Brad', 770000);


--RECORDS		
INSERT INTO Team_Record values (1000,0001,27,55,0011,2008);
INSERT INTO Team_Record values (1100,0001,24,58,0011,2009);	
INSERT INTO Team_Record values (1200,0001,26,56,0011,2010);	
INSERT INTO Team_Record values (1300,0001,35,47,0011,2011);	
INSERT INTO Team_Record values (1400,0001,35,47,0011,2012);	
INSERT INTO Team_Record values (1500,0001,41,41,0011,2013);	
INSERT INTO Team_Record values (1600,0001,27,55,0011,2014);	
INSERT INTO Team_Record values (1700,0001,35,47,0011,2015);	
INSERT INTO Team_Record values (1800,0001,50,32,0011,2016);	
INSERT INTO Team_Record values (1900,0001,62,20,0011,2017);	

INSERT INTO Team_Record values (2000,0002,35,47,0022,2008);
INSERT INTO Team_Record values (2100,0002,24,58,0022,2009);	
INSERT INTO Team_Record values (2200,0002,41,41,0022,2010);	
INSERT INTO Team_Record values (2300,0002,35,47,0022,2011);	
INSERT INTO Team_Record values (2400,0002,35,47,0022,2012);	
INSERT INTO Team_Record values (2500,0002,41,41,0022,2013);	
INSERT INTO Team_Record values (2600,0002,22,60,0022,2014);	
INSERT INTO Team_Record values (2700,0002,35,47,0022,2015);	
INSERT INTO Team_Record values (2800,0002,50,32,0022,2016);	
INSERT INTO Team_Record values (2900,0002,27,55,0022,2017);	

INSERT INTO Team_Record values (3000,0003,50,32,0033,2008);
INSERT INTO Team_Record values (3100,0003,55,27,0033,2009);	
INSERT INTO Team_Record values (3200,0003,62,20,0033,2010);	
INSERT INTO Team_Record values (3300,0003,50,32,0033,2011);	
INSERT INTO Team_Record values (3400,0003,62,20,0033,2012);	
INSERT INTO Team_Record values (3500,0003,41,41,0077,2013);	
INSERT INTO Team_Record values (3600,0003,27,55,0077,2014);	
INSERT INTO Team_Record values (3700,0003,62,20,0077,2015);	
INSERT INTO Team_Record values (3800,0003,50,32,0077,2016);	
INSERT INTO Team_Record values (3900,0003,62,20,0077,2017);	

INSERT INTO Team_Record values (4000,0004,62,20,0044,2008);
INSERT INTO Team_Record values (4100,0004,62,20,0044,2009);	
INSERT INTO Team_Record values (4200,0004,26,56,0044,2010);	
INSERT INTO Team_Record values (4300,0004,50,32,0066,2011);	
INSERT INTO Team_Record values (4400,0004,55,27,0066,2012);	
INSERT INTO Team_Record values (4500,0004,72,10,0066,2013);	
INSERT INTO Team_Record values (4600,0004,41,41,0066,2014);	
INSERT INTO Team_Record values (4700,0004,35,47,0066,2015);	
INSERT INTO Team_Record values (4800,0004,62,20,0044,2016);	
INSERT INTO Team_Record values (4900,0004,41,41,0044,2017);

INSERT INTO Team_Record values (5000,0005,41,41,0055,2008);
INSERT INTO Team_Record values (5100,0005,24,58,0055,2009);	
INSERT INTO Team_Record values (5200,0005,50,32,0055,2010);	
INSERT INTO Team_Record values (5300,0005,62,20,0044,2011);	
INSERT INTO Team_Record values (5400,0005,35,47,0044,2012);	
INSERT INTO Team_Record values (5500,0005,41,41,0044,2013);	
INSERT INTO Team_Record values (5600,0005,27,55,0044,2014);	
INSERT INTO Team_Record values (5700,0005,35,47,0044,2015);	
INSERT INTO Team_Record values (5800,0005,50,32,0055,2016);	
INSERT INTO Team_Record values (5900,0005,35,47,0055,2017);
		
--PLAYERS

Create table Player (
	PlayerID 			NUMBER(4),
	Lname 				VARCHAR2(20),
	Fname 			 	VARCHAR2(20),
	Position			VARCHAR(2),
	CONSTRAINT pk_player
	PRIMARY KEY (PlayerID)
	CONSTRAINT playerteam
		FOREIGN KEY (Team)
		REFERENCES Team(RecordID)
		ON DELETE CASCADE
		
		
INSERT INTO Player values (5000,'James','LeBron','F');
INSERT INTO Player values (5001,'Irving','Kyree','PG');
INSERT INTO Player values (5000,'Harden','James','G');
INSERT INTO Player values (5000,'Curry','Steph','G');
INSERT INTO Player values (5000,'Durant','Kevin','F');
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
