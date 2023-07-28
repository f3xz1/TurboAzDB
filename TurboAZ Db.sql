use master

go 

create database turboAZ

go


use turboAZ

go

create table [dbo].[Colors](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Color] nvarchar(50)
)

go

create table [dbo].[Cities](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Name] nvarchar(100)
)

go
create table [dbo].[BodyTypes](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Type] nvarchar(50)
)
go

create table [dbo].[WheelDriveTypes](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Type] nvarchar(50)
)
go
create table [dbo].[FuelTypes](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Type] nvarchar(50)
)
go
create table [dbo].[TransmissionTypes](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Type] nvarchar(50)
)
go

create table [dbo].[ShowRooms](
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
[Name] nvarchar(100),
[Address] nvarchar(max),
[PhoneNumber] nvarchar(20)
)

go

create table [dbo].[Cars] (
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [Make] nvarchar(100),
    [Model] nvarchar(100),
    [Year] date,
    [VIN] nvarchar(50),
    [Milage] int,
    [EngineVolume] int,
    [HorsePower] int,
    [PassegerCount] int,
    [Price] money,
    [PhoneNumber] nvarchar(18),

    ShowRoomId INT,
    BodyTypeId INT,
    CityId INT,
    ColorId INT,
    WheelDriveTypeId INT,
    FuelTypeTypeId INT,
    TransmissionTypeId INT,

    foreign key (ShowRoomId) references ShowRooms(Id),
    foreign key (BodyTypeId) references BodyTypes(Id),
    foreign key (CityId) references Cities(Id),
    foreign key (ColorId) references Colors(Id),
    foreign key (WheelDriveTypeId) references WheelDriveTypes(Id),
    foreign key (FuelTypeTypeId) references FuelTypes(Id),
    foreign key (TransmissionTypeId) references TransmissionTypes(Id),
);