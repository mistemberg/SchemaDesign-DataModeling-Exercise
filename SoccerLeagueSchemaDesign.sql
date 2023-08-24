CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(25),
    TeamLocation VARCHAR(25)
);

CREATE TABLE Player (
    PlayerID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Referee (
    RefereeID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25)
);

CREATE TABLE Match (
    MatchID INT PRIMARY KEY,
    Team1ID INT,
    Team2ID INT,
    MatchDate DATE,
    RefereeID INT,
    SeasonID INT,
    FOREIGN KEY (Team1ID) REFERENCES Teams(TeamID),
    FOREIGN KEY (Team2ID) REFERENCES Teams(TeamID),
    FOREIGN KEY (RefereeID) REFERENCES Referee(RefereeID),
    FOREIGN KEY (SeasonID) REFERENCES Season(SeasonID)
);

CREATE TABLE Goal (
    GoalID INT PRIMARY KEY,
    MatchID INT,
    PlayerID INT,
    FOREIGN KEY (MatchID) REFERENCES Match(MatchID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE Season (
    SeasonID INT PRIMARY KEY,
    StartDate DATE,
    EndDate DATE
);
