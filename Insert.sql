--INFO 365
--FLAGRANTS ONLY
--Insert Table Statements

--COACHES
INSERT INTO Coach values (0011,'Brown', 'Mike', 700000);
INSERT INTO Coach values (0022,'Hornacek', 'Jeff', 7200000);
INSERT INTO Coach values (0033,'Auerbach', 'Red', 9800000);
INSERT INTO Coach values (0044,'Jackson', 'Phil', 110000);
INSERT INTO Coach values (0055,'Thibodeau', 'Tom', 800000);
INSERT INTO Coach values (0066,'Scott', 'Byron', 800000);
INSERT INTO Coach values (0077,'Stevens', 'Brad', 770000);

--SEASON
INSERT INTO Season values (2008,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2009,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2010,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2011,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2012,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2013,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2014,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2015,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2016,'[CHAMPIONPLACEHOLDER]');
INSERT INTO Season values (2017,'[CHAMPIONPLACEHOLDER]');

--TEAMS
INSERT INTO Team values (0001,'Process', 'Philadelphia', 'Harris');
INSERT INTO Team values (0002,'Metros', 'New York', 'Dolan');
INSERT INTO Team values (0003,'Irish', 'Boston', 'Gaston');
INSERT INTO Team values (0004,'Stars', 'Los Angeles', 'Buss');
INSERT INTO Team values (0005,'Toros', 'Chicago', 'Reinsdorf');


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

INSERT INTO Player values (5000,'Paul','Chris','PG');
INSERT INTO Player values (5001,'Thompson','Klay','SG');
INSERT INTO Player values (5002,'James','LeBron','F');
INSERT INTO Player values (5003,'Griffin','Blake','F');
INSERT INTO Player values (5004,'Porzingis','Kristaps','C');

INSERT INTO Player values (5005,'Irving','Kyree','PG');
INSERT INTO Player values (5006,'Harden','James','G');
INSERT INTO Player values (5007,'George','Paul','F');
INSERT INTO Player values (5008,'Horford','Al','F');
INSERT INTO Player values (5009,'McHale','Kevin','C');		
		
INSERT INTO Player values (5010,'Curry','Stephen','PG');
INSERT INTO Player values (5011,'Jordan','Michael','SG');
INSERT INTO Player values (5012,'Butler','Jimmy','G');
INSERT INTO Player values (5013,'Love','Kevin','F');
INSERT INTO Player values (5014,'Cousins','DeMarcus','C');		
		
INSERT INTO Player values (5015,'Iverson','Allen','PG');
INSERT INTO Player values (5016,'Beal','Bradley','SG');
INSERT INTO Player values (5017,'Cheeks','Mo','F');
INSERT INTO Player values (5018,'Igoudala','Andre','F');
INSERT INTO Player values (5019,'Embid','Joel','C');	

INSERT INTO Player values (5016,'Westbrook','Russell','PG');
INSERT INTO Player values (5017,'Bryant','Kobe','SG');
INSERT INTO Player values (5018,'Leonard','Kawai','F');
INSERT INTO Player values (5019,'Durant','Kevin','F');
INSERT INTO Player values (5020,'Jordan','DeAndre','C');	

----------NY PLAYER STATS----------------------------
--Chris Paul
INSERT INTO Stats values (6000,5000,2000,82,990,580,100);
INSERT INTO Stats values (6001,5000,2100,82,1315,550,125);
INSERT INTO Stats values (6002,5000,2200,82,1392,700,140);
INSERT INTO Stats values (6003,5000,2300,82,1504,745,147);
INSERT INTO Stats values (6004,5000,2400,82,1551,710,130);
INSERT INTO Stats values (6005,5000,2500,82,1642,770,111);
INSERT INTO Stats values (6006,5000,2600,82,1670,811,140);
INSERT INTO Stats values (6007,5000,2700,82,1689,1200,132);
INSERT INTO Stats values (6008,5000,2800,82,1569,1240,100);
INSERT INTO Stats values (6009,5000,2900,82,1470,1260,110);

--Klay Thompson		
INSERT INTO Stats values (6010,5001,2000,82,1100,410,380);		
INSERT INTO Stats values (6011,5001,2100,82,1200,475,400);	
INSERT INTO Stats values (6012,5001,2200,82,1270,490,420);	
INSERT INTO Stats values (6013,5001,2300,82,1660,500,440);	
INSERT INTO Stats values (6014,5001,2400,82,1669,570,523);	
INSERT INTO Stats values (6015,5001,2500,82,1710,510,550);		
INSERT INTO Stats values (6016,5001,2600,82,1780,596,600);	
INSERT INTO Stats values (6017,5001,2700,82,1723,670,523);	
INSERT INTO Stats values (6018,5001,2800,82,1800,642,541);	
INSERT INTO Stats values (6019,5001,2900,82,1812,644,525);			
		
--Lebron James		
INSERT INTO Stats values (6020,5002,2000,82,1600,500,600);	
INSERT INTO Stats values (6020,5002,2100,82,1640,600,675);
INSERT INTO Stats values (6020,5002,2200,82,1810,700,700);
INSERT INTO Stats values (6020,5002,2300,82,1895,740,730);
INSERT INTO Stats values (6020,5002,2400,82,2000,750,751);		
INSERT INTO Stats values (6020,5002,2500,82,2240,730,774);	
INSERT INTO Stats values (6020,5002,2600,82,2300,790,739);
INSERT INTO Stats values (6020,5002,2700,82,2466,820,795);
INSERT INTO Stats values (6020,5002,2800,82,2450,785,770);
INSERT INTO Stats values (6020,5002,2900,82,2400,774,795);			
		
--Blake Griffin
INSERT INTO Stats values (6021,5003,2000,82,980,310,600);	
INSERT INTO Stats values (6021,5003,2100,82,1160,330,670);	
INSERT INTO Stats values (6021,5003,2200,82,1200,360,686);	
INSERT INTO Stats values (6021,5003,2300,82,1230,310,820);	
INSERT INTO Stats values (6021,5003,2400,82,1110,420,840);	
INSERT INTO Stats values (6021,5003,2500,82,1400,430,860);
INSERT INTO Stats values (6021,5003,2600,82,1450,400,900);	
INSERT INTO Stats values (6021,5003,2700,82,1500,498,910);	
INSERT INTO Stats values (6021,5003,2800,82,1598,500,870);	
INSERT INTO Stats values (6021,5003,2900,82,1599,475,856);			

--Kristaps		
INSERT INTO Stats values (6022,5004,2000,82,996,365,640);
INSERT INTO Stats values (6021,5004,2100,82,1080,400,720);	
INSERT INTO Stats values (6021,5004,2200,82,1120,410,760);	
INSERT INTO Stats values (6021,5004,2300,82,1160,435,770);	
INSERT INTO Stats values (6021,5004,2400,82,1230,448,765);		
INSERT INTO Stats values (6022,5004,2500,82,1236,491,742);
INSERT INTO Stats values (6021,5004,2600,82,1240,430,790);	
INSERT INTO Stats values (6021,5004,2700,82,1270,450,890);	
INSERT INTO Stats values (6021,5004,2800,82,1300,476,885);	
INSERT INTO Stats values (6021,5004,2900,82,1450,441,874);			
------------------------------------------------------------------		
		
		
		
		
		
		
