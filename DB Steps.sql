CREATE DATABASE metro 
GO

CREATE TABLE Users
(
MemberNumber INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
UserName nvarchar(20) UNIQUE,
UserPassword nvarchar(10),
FirstName nvarchar(20),
LastName nvarchar(20),
MemberAddress nvarchar(20),
City nvarchar(20),
Province nvarchar(2),
PostalCode nvarchar(6),
Telephone nvarchar(20),
Email nvarchar(30) UNIQUE,
BookClubMember INT,
Comments nvarchar(200),
Avatar nvarchar(200)

);


CREATE TABLE Books
(
BookID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
Title nvarchar(50) UNIQUE,
Author nvarchar(30),
AuthorBio nvarchar(450),
Available INT,
ElectronicCopy INT,

);


CREATE TABLE Reservations
(
ReservationNumber INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
BookID int FOREIGN KEY REFERENCES Books(BookID),
UserID int FOREIGN KEY REFERENCES Users(MemberNumber),
DateBegin DATE,
DateOwedReturn DATE,
DateReturned DATE,
LateFees MONEY,

);


INSERT INTO Books
VALUES ('Bliss','Peter Carey', 'Peter Carey is the author of twelve previous novels and has twice received the Booker Prize. His other honors include the Commonwealth Writers Prize and the Miles Franklin Literary Award. Born in Australia ','1','1' );

INSERT INTO Books
VALUES ('Fat Man in History','Peter Carey','Peter Carey is the author of twelve previous novels and has twice received the Booker Prize. His other honors include the Commonwealth Writers Prize and the Miles Franklin Literary Award. Born in Australia','1','1' );

INSERT INTO Books
VALUES ('How to Fly a Horse','Kevin Ashton','Kevin Ashton led pioneering work on RFID networks, for which he coined the term “the Internet of Things,” and cofounded the Auto-ID Center at MIT. His writing about innovation and technology has appeared in The New York Times.','1','1');


INSERT INTO Users
VALUES('user1', 'pass1','James','Jones','987 rue','Montreal','PQ','H7H7H7','5142345436','james@email.com','1','I love books, i read all the time','Avatar');

INSERT INTO Users
VALUES('user2', 'pass2','Petit','Lu','985 rue','Montreal','PQ','H7H7H8','5142345443','jones@email.com','1','i read every day','Avatar');

