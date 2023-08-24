CREATE TABLE Region (
    RegionID INT PRIMARY KEY,
    LocationCity VARCHAR(25),
    LocationState VARCHAR(25)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(15),
    Email VARCHAR(100),
    PreferredRegionID INT,
    FOREIGN KEY (PreferredRegionID) REFERENCES Region(RegionID)
);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Post (
    PostID INT PRIMARY KEY,
    Title VARCHAR(100),
    Text TEXT,
    UserID INT,
    RegionID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);
