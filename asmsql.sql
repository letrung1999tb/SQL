
use asm1


create table Class(
	ClassID char(7) primary key, --PK
	ClassName varchar(30),
	yearStart int,
	yearEnd int,
)
go
create table Student(
	StudentID varchar(20) primary key, --PK
	ClassID char(7) references Class(ClassID), --Foreign key,
	[Name] varchar(30),
	Phone varchar(12),
	Email varchar(30),
	[Address] varchar(30),
	
)
go
-- Do it yourself to create other tables/entities
create table Tutor(
	TutorID varchar(20) primary key, --PK
	[Name] varchar(30),
	Phone varchar(12),
	Email varchar(30),
	[Address] varchar(30),
)
go
create table Course(
	CourseID varchar(20) primary key,
	[Name] varchar (20),
	[Description] varchar(30),
)
go
create table Slot(
	NameSlot varchar(20) primary key, --PK	
	[StartTime] time ,
	[EndTime] time ,
	
)
go
create table [Session](
ClassID char(7) references Class(ClassID),
CourseID varchar(20) references Course(CourseID),
SessionID varchar(20) primary key,
TutorID varchar(20) references Tutor(TutorID),
Room varchar(20)
)
go
create table Attendance(
	StudentID varchar(20) references Student(StudentID),
	NameSlot varchar(20) references Slot(NameSlot),
	SessionID varchar(20) references [Session](SessionID),
	Dateattendance date,
	Comment varchar (20),
	
	
)
Select * from Class
Select * from Student
Select * from Tutor
Select * from Course
Select * from Slot
Select * from Attendance
Select*from [Session]


Insert into Class(ClassID, ClassName, yearStart, yearEnd) values ('GJH0707','Networking',2018,2019)
Insert into Class(ClassID, ClassName, yearStart, yearEnd) values ('GJH0708', 'WebDesign', 2018,2019)
Insert into Class(ClassID, ClassName, yearStart, yearEnd) values ('GJH0709', 'Database', 2018,2019)
Insert into Class(ClassID, ClassName, yearStart, yearEnd) values ('GJH0710', 'Alogrism', 2018,2019)
Insert into Class(ClassID, ClassName, yearStart, yearEnd) values ('GJH0711', 'Practice', 2018,2019)


Insert into Student(StudentID, ClassID,[Name], Phone, Email,[Address] ) values ('GBH17254','GJH0707', 'Le Van Trung',0977734432 , 'trunglvgbh@fpt.com', 'Ha Noi' )
Insert into Student(StudentID, ClassID,[Name], Phone, Email,[Address] ) values ('GBH18293','GJH0708', 'Nguyen Kim Nguyen',0987766654, 'nguyentrs@fpt.com', 'Thai Binh' )
Insert into Student(StudentID, ClassID,[Name], Phone, Email,[Address] ) values ('GCH15874', 'GJH0708','Min Kye Ong',0988815243,  'Ongkm@fpt.com', 'Son La' )
Insert into Student(StudentID, ClassID,[Name], Phone, Email,[Address] ) values ('GBH98793','GJH0710', 'Quach Ngoc Tuan',0971728372, 'Tuanch@fpt.com', 'Quang Ngai')
Insert into Student(StudentID, ClassID,[Name], Phone, Email,[Address] ) values ('GBH89876','GJH0711', 'Bui Huy Anh',0988162736, 'Anhbhj@fpt.com', 'Lao cai')


Insert into Tutor(TutorID, [Name], Phone, Email,[Address]) values ('GAH3254', 'Manh Dzung Lai', '0988825534', 'Dungdt@fpt.com','Ha Noi' )
Insert into Tutor(TutorID, [Name], Phone, Email,[Address]) values ('GAH3255', 'Hoang Ton Giap', '0966637713', 'Giapht@fpt.com','HCM' )
Insert into Tutor(TutorID, [Name], Phone, Email,[Address]) values ('GAH3256', 'Nguyen Tran Quan', '0977281827', 'Quannt@fpt.com','Lao Cai' )
Insert into Tutor(TutorID, [Name], Phone, Email,[Address]) values ('GAH3257', 'Mai Phuong Thuy', '0901928738', 'Thuymt@fpt.com','Ha Noi' )
Insert into Tutor(TutorID, [Name], Phone, Email,[Address]) values ('GAH3258', 'Sao Quoc Anh', '0913413134', 'Anhqs@fpt.com','Ha Noi' )


Insert into Course(CourseID, [Name], [Description]) values ('B1', 'Networking', 'DNS')
Insert into Course(CourseID, [Name], [Description]) values ('B3', 'WebDesign', 'Design')
Insert into Course(CourseID, [Name], [Description]) values ('B4', 'Database', 'Code')
Insert into Course(CourseID, [Name], [Description]) values ('B5', 'Alogrism', 'Code')
Insert into Course(CourseID, [Name], [Description]) values ('B2', 'Practice', 'Sofware')


Insert into Slot(NameSlot, StartTime,EndTime) values ('1','07:30', '9:20')
Insert into Slot(NameSlot, StartTime,EndTime) values ('2','9:30', '12:20')
Insert into Slot(NameSlot, StartTime,EndTime) values ('3','12:30', '13:20')
Insert into Slot(NameSlot, StartTime,EndTime) values ('4','14:30', '15:20')
Insert into Slot(NameSlot, StartTime,EndTime) values ('5','15:30', '17:20')




Insert into Attendance( StudentID, NameSlot, SessionID, Dateattendance, Comment) values ('GBH17254','1','S1', '5/6/2019','Present')
Insert into Attendance( StudentID, NameSlot, SessionID, Dateattendance, Comment) values ('GBH18293','2','S2', '6/7/2019', 'Present')
Insert into Attendance( StudentID, NameSlot, SessionID, Dateattendance, Comment) values ('GCH15874','3','S3', '7/8/2019', 'Absent')
Insert into Attendance( StudentID, NameSlot, SessionID, Dateattendance, Comment) values ('GBH98793','4','S4', '8/9/2019', 'Present')
Insert into Attendance( StudentID, NameSlot, SessionID, Dateattendance, Comment) values ('GBH89876','5','S5', '8/7/2019', 'Absent')

 

Insert into [Session](ClassID,CourseID,SessionID,TutorID,Room) values ('GJH0707','B1','S1','GAH3254','A1')
Insert into [Session](ClassID,CourseID,SessionID,TutorID,Room) values ('GJH0708','B2','S2','GAH3255','A2')
Insert into [Session](ClassID,CourseID,SessionID,TutorID,Room) values ('GJH0709','B3','S3','GAH3256','A3')
Insert into [Session](ClassID,CourseID,SessionID,TutorID,Room) values ('GJH0710','B4','S4','GAH3257','A4')
Insert into [Session](ClassID,CourseID,SessionID,TutorID,Room) values ('GJH0711','B5','S5','GAH3258','A5')



