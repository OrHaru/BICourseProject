-- TABLE
CREATE TABLE Attempts (
  AID int not null,
  Ashot_place varchar(50),
  Ais_goal int,
  Aassist_method varchar(50),
  Asituation varchar(50),
  PRIMARY KEY(AID),
  FOREIGN KEY(AID) REFERENCES Events(EID)
   );
CREATE TABLE Events (
  EID int not null,
  MID int not null,
  ETID int not null,
  Etime int,
  Etype varchar(50),
  PRIMARY KEY(EID),
  FOREIGN KEY(MID) REFERENCES Matches(MID),
  FOREIGN KEY(ETID) REFERENCES Teams(TID)

   );
CREATE TABLE Leagues (
  LID int not null,
  Lname varchar(50),
  Lcountry varchar(50),
  PRIMARY KEY(LID)
  );
CREATE TABLE Matches (
  MID int not null,
  HomeTID int not null,
  AwayTID int not null,
  SID int not null,
  Mdate date,
  HomeGoals int,
  AwayGoals int,
  PRIMARY KEY(MID),
  FOREIGN KEY(HomeTID) REFERENCES Teams(TID),
  FOREIGN KEY(AwayTID) REFERENCES Teams(TID),
  FOREIGN KEY(SID) REFERENCES Seasons(SID)
  
  );
CREATE TABLE Seasons (
  SID int not null,
  Syears varchar(50) not null,
  PRIMARY KEY(SID)
  );
CREATE TABLE Teams (
  TID int not null,
  LID INt not null,
  Tname varchar(50),
  PRIMARY KEY(TID),
  FOREIGN KEY(LID) REFERENCES Leagues(LID)
  );
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
