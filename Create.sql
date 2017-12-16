--INFO 365
-- FLAGRANTS ONLY
--Create Table Statements
-- Last Updated 12/14/17 by T.O

DROP TABLE Coach; -- 4
DROP TABLE Team; -- 6
DROP TABLE Season; -- 5
DROP TABLE Team_Record; -- 2
DROP TABLE Player; -- 3
DROP TABLE Stats; -- 1

Create table Coach (
	CoachID 			NUMBER(4),	
	Lname 				VARCHAR2(20) NOT NULL,
	Fname 				VARCHAR2(20)NOT NULL,
	Salary 				NUMBER(9)NOT NULL,
	CONSTRAINT pk_coach
	PRIMARY KEY (CoachID)
);


 Create table Team (
	TeamID 				NUMBER(4),
	Name 				VARCHAR2(14) NOT NULL,
	City 				VARCHAR2(14) NOT NULL,
	Owner_Lname 	 	VARCHAR2(20) NOT NULL,
	CONSTRAINT pk_teamid
	PRIMARY KEY (TeamID)
);	

Create table Season (
	SeasonID 			NUMBER(4),
	ChampID 	 		NUMBER(4),
	CONSTRAINT pk_szn
		PRIMARY KEY (SeasonID),
	CONSTRAINT fk_ChampID
		FOREIGN KEY (ChampID)
		REFERENCES Team(TeamID)
		ON DELETE CASCADE
);


Create table Team_Record (
	RecordID			NUMBER(4),
	TeamID 				NUMBER(4),
	Wins				NUMBER(3) NOT NULL,
	Losses				NUMBER(3) NOT NULL,
	CoachID				NUMBER(4) NOT NULL,
	SeasonID 			NUMBER(4) NOT NULL,
	CONSTRAINT pk_recordid
	PRIMARY KEY (RecordID),
	CONSTRAINT fk_teamid
		FOREIGN KEY (TeamID)
		REFERENCES Team(TeamID)
		ON DELETE CASCADE,
	CONSTRAINT fk_recordszn
		FOREIGN KEY (SeasonID)
		REFERENCES Season(SeasonID)
		ON DELETE CASCADE,
	CONSTRAINT fk_teamcoach
		FOREIGN KEY (CoachID)
		REFERENCES Coach(CoachID)
		ON DELETE CASCADE
--Check that games add up to 82
--add not nulls
);

Create table Player (
	PlayerID 			NUMBER(4),
	Lname 				VARCHAR2(20),
	Fname 			 	VARCHAR2(20),
	Position			VARCHAR(2),
	CONSTRAINT pk_player
	PRIMARY KEY (PlayerID)
);

Create table Stats (
	StatID 				NUMBER(4),
	PlayerID 			NUMBER(4),
	RecordID			NUMBER(4),
	GamesPlayed 		NUMBER(3),
	Points 				NUMBER(4),
	Assists 			NUMBER(4),
	Rebounds 			NUMBER(4),
	PPG						NUMBER(3,1) DEFAULT 0,
	RPG						NUMBER(3,1) DEFAULT 0,
	APG						NUMBER(3,1) DEFAULT 0,
	CONSTRAINT pk_stat
	PRIMARY KEY (StatID),
	CONSTRAINT fk_playerrecord
		FOREIGN KEY (RecordID)
		REFERENCES Team_Record(RecordID)
		ON DELETE CASCADE,
	CONSTRAINT fk_playerid
		FOREIGN KEY (PlayerID)
		REFERENCES Player (PlayerID)
		ON DELETE CASCADE
	);

	


	
	
