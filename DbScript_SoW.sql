USE [master]
GO
/****** Object:  Database [SOW_Db]    Script Date: 2/10/2023 3:30:51 PM ******/
CREATE DATABASE [SOW_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SOW_Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SOW_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SOW_Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SOW_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SOW_Db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SOW_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SOW_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SOW_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SOW_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SOW_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SOW_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SOW_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SOW_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SOW_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SOW_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SOW_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SOW_Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET  MULTI_USER 
GO
ALTER DATABASE [SOW_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SOW_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SOW_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SOW_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SOW_Db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SOW_Db', N'ON'
GO
ALTER DATABASE [SOW_Db] SET QUERY_STORE = OFF
GO
USE [SOW_Db]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [nvarchar](100) NOT NULL,
	[MobileNo] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[Skills] [nvarchar](max) NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Pincode] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[IsInternal] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[RegionId] [int] NULL,
	[isDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DellManager]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DellManager](
	[DellManagerId] [int] IDENTITY(1,1) NOT NULL,
	[DellManagerName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DellManagerName] PRIMARY KEY CLUSTERED 
(
	[DellManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[DomainId] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[RegionId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](100) NOT NULL,
	[LoginPassword] [nvarchar](100) NOT NULL,
	[EmailId] [nvarchar](200) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruiter]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruiter](
	[RecruiterId] [int] IDENTITY(1,1) NOT NULL,
	[RecruiterName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RecruiterName] PRIMARY KEY CLUSTERED 
(
	[RecruiterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleScreens]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleScreens](
	[RoleScreenId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ScreenId] [int] NOT NULL,
 CONSTRAINT [PK_RoleScreens] PRIMARY KEY CLUSTERED 
(
	[RoleScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[ScreenId] [int] IDENTITY(1,1) NOT NULL,
	[ScreenName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOW]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOW](
	[SowId] [int] IDENTITY(1,1) NOT NULL,
	[SoName] [nvarchar](100) NULL,
	[JRCode] [nvarchar](10) NULL,
	[RequestCreationDate] [datetime] NULL,
	[AccountId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
	[Role] [nvarchar](100) NULL,
	[LocationId] [int] NULL,
	[RegionId] [int] NOT NULL,
	[TargetOpenPositions] [int] NULL,
	[PositionsTobeClosed] [int] NULL,
	[USTPOCId] [int] NOT NULL,
	[RecruiterId] [int] NOT NULL,
	[USTTPMId] [int] NOT NULL,
	[DellManagerId] [int] NOT NULL,
	[StatusId] [int] NULL,
	[Band] [nvarchar](100) NULL,
	[ProjectId] [nvarchar](100) NULL,
	[AccountManager] [nvarchar](200) NULL,
	[ExternalResource] [nvarchar](100) NULL,
	[InternalResource] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SOW] PRIMARY KEY CLUSTERED 
(
	[SowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOWCandidate]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOWCandidate](
	[SOW_CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[SowId] [int] NOT NULL,
	[CandidateId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SOWCandidate] PRIMARY KEY CLUSTERED 
(
	[SOW_CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[TechnologyId] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
	[DomainId] [int] NOT NULL,
 CONSTRAINT [PK__Technolo__705701585B3368AA] PRIMARY KEY CLUSTERED 
(
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTPOC]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTPOC](
	[USTPOCId] [int] IDENTITY(1,1) NOT NULL,
	[USTPOCName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTPOCName] PRIMARY KEY CLUSTERED 
(
	[USTPOCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTTPM]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTTPM](
	[USTTPMId] [int] IDENTITY(1,1) NOT NULL,
	[USTTPMName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTTPMName] PRIMARY KEY CLUSTERED 
(
	[USTTPMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (1, N'DL-IN-45', 0)
GO
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (2, N'DL-IN-30', 0)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (5, N'ramesh', N'9482105444', N'male', CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'ramesh@GMAIL.COM', N'Java', N'Hyderabad', N'855552', N'Secundrabad', CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'Canceled', 0, 1)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (8, N'Ramesh raja', N'9482105444', N'male', CAST(N'2021-12-08T00:00:00.000' AS DateTime), N'rameshraja@gmail.com', N'Nodejs', N'Hyderabad', N'855552', N'Secundrabad', CAST(N'2022-08-29T18:39:00.000' AS DateTime), N'Canceled', 1, 1)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (10, N'roshan kumar', N'9482105444', N'male', CAST(N'2007-04-21T00:00:00.000' AS DateTime), N'roshankumar@gmail.com', N'HR,Communication', N'Hyderabad', N'855552', N'Secundrabad', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'Canceled', 1, 0)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (11, N'Praveen', N'8999441111', N'male', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'praveen@gmail.com', N'Java,Angular', N'Bangalore', N'560066', N'MG Road', CAST(N'2022-08-31T00:00:00.000' AS DateTime), N'Joined', 1, 1)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (12, N'Rakesh Ram', N'7522211222', N'male', CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'rakesh.ram@gmail.com', N'Java,Angular,Html,Javascript', N'Bangalore', N'560092', N'RR Nagar', CAST(N'2022-05-11T00:00:00.000' AS DateTime), N'Canceled', 0, 0)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (14, N'Priyanka', N'8922542563', N'female', CAST(N'1999-10-06T00:00:00.000' AS DateTime), N'priyanka@gmail.com', N'SAP', N'Bangalore', N'560066', N'Whitefield', CAST(N'2022-09-28T00:00:00.000' AS DateTime), N'Joined', 0, 0)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (15, N'Rupali', N'8952112222', N'male', CAST(N'1999-07-05T00:00:00.000' AS DateTime), N'rupali@gmail.com', N'Python, Fast Api', N'Bangalore', N'560066', N'whitefield', CAST(N'2022-10-07T00:00:00.000' AS DateTime), N'Joined', 1, 0)
GO
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [isDeleted]) VALUES (16, N'Deepak', N'7824212121', N'male', CAST(N'2022-12-06T00:00:00.000' AS DateTime), N'deepak@gmail.com', N'Python', N'Bangalore', N'560065', N'Whitefield', CAST(N'2022-12-13T00:00:00.000' AS DateTime), N'Canceled', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[DellManager] ON 
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (1, N'Raja', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (2, N'Davis', 0)
GO
SET IDENTITY_INSERT [dbo].[DellManager] OFF
GO
SET IDENTITY_INSERT [dbo].[Domain] ON 
GO
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (2, N'ML/AI', 0)
GO
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (3, N'Web', 0)
GO
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (6, N'CRM', 0)
GO
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (7, N'DevOps', 0)
GO
SET IDENTITY_INSERT [dbo].[Domain] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 
GO
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (1, N'Bangalore', 1, 0)
GO
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (2, N'Hyderabad', 1, 0)
GO
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (3, N'Texas', 2, 0)
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 
GO
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId]) VALUES (1, N'rahul', N'rahul@123', N'rahul@gmail.com', 1)
GO
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId]) VALUES (2, N'sakshi', N'sakshi@gmail.com', N'sakshi@gmail.com', 2)
GO
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 
GO
INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (1, N'View')
GO
INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (2, N'Edit')
GO
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Recruiter] ON 
GO
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (1, N'Pramod', 0)
GO
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (2, N'Priya', 0)
GO
SET IDENTITY_INSERT [dbo].[Recruiter] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 
GO
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (1, N'India', 0)
GO
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (2, N'USA', 0)
GO
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (1, N'Manager', 1)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (2, N'Admin', 2)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleScreens] ON 
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (6, 1, 2)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (7, 1, 3)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (8, 2, 1)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (9, 2, 3)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (10, 2, 4)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (11, 2, 2)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (13, 1, 1)
GO
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (14, 1, 5)
GO
SET IDENTITY_INSERT [dbo].[RoleScreens] OFF
GO
SET IDENTITY_INSERT [dbo].[Screens] ON 
GO
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (1, N'CandidateDetails')
GO
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (2, N'SOW')
GO
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (3, N'Domain')
GO
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (4, N'Technology')
GO
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (5, N'Mapping')
GO
SET IDENTITY_INSERT [dbo].[Screens] OFF
GO
SET IDENTITY_INSERT [dbo].[SOW] ON 
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1004, N'DL-IN-45-67', N'34445', CAST(N'2021-11-16T15:54:54.103' AS DateTime), 2, 1, N'Developer', 3, 2, 21, 11, 2, 2, 1, 2, 3, N'B2', N'DLIN-0045-01', N'Uday', N'', N'', 0)
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1005, N'SOW2', N'68152591', CAST(N'2021-11-16T15:55:59.233' AS DateTime), 2, 1, N'Developer', 2, 1, 6, 3, 2, 2, 2, 1, 1, N'A3', N'DL-IN-57', N'Uday', N'Rahul', N'Suresh', 1)
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1006, N'SOW4', N'68152591', CAST(N'2021-12-05T16:08:10.067' AS DateTime), 2, 2, N'Developer', 3, 2, 5, 3, 2, 2, 1, 2, 1, N'B2', N'DLIN-0045-01', N'Uday', N'Rahul', N'', 0)
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1007, N'SOW3', N'68152591', CAST(N'2021-12-06T10:11:49.130' AS DateTime), 2, 2, N'Developer', 3, 2, 3, 1, 1, 2, 2, 2, 3, N'B2', N'DL-IN-57', N'Sanjay', N'Rahul', N'', 0)
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1008, N'DL-IN-45-66', N'681525', CAST(N'2021-12-15T14:38:32.867' AS DateTime), 2, 3, N'Developer', 3, 2, 4, 2, 1, 2, 2, 2, 3, N'A3', N'DLIN-0045-01', N'Uday', N'', N'', 0)
GO
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1009, N'SOW4', N'68152591', CAST(N'2021-12-15T15:08:00.117' AS DateTime), 2, 2, N'Developer', 1, 1, 4, 2, 2, 2, 1, 2, 2, N'B2', N'DLIN-0045-01', N'Uday', N'Rahul', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[SOW] OFF
GO
SET IDENTITY_INSERT [dbo].[SOWCandidate] ON 
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (8, 1005, 14, 1, 1)
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (9, 1004, 10, 2, 0)
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (10, 1005, 12, 3, 1)
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (11, 1006, 15, 1, 0)
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (12, 1008, 16, 3, 0)
GO
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (1012, 1008, 16, 3, 0)
GO
SET IDENTITY_INSERT [dbo].[SOWCandidate] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 
GO
INSERT [dbo].[Status] ([StatusId], [StatusName], [isDeleted]) VALUES (1, N'Offered', 0)
GO
INSERT [dbo].[Status] ([StatusId], [StatusName], [isDeleted]) VALUES (2, N'Declined', 0)
GO
INSERT [dbo].[Status] ([StatusId], [StatusName], [isDeleted]) VALUES (3, N'Closed', 0)
GO
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 
GO
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (1, N'Java', 0, 3)
GO
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (2, N'Python', 0, 2)
GO
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (3, N'Java', 0, 3)
GO
SET IDENTITY_INSERT [dbo].[Technology] OFF
GO
SET IDENTITY_INSERT [dbo].[USTPOC] ON 
GO
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (1, N'sanat', 0)
GO
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (2, N'Sushmitha', 0)
GO
SET IDENTITY_INSERT [dbo].[USTPOC] OFF
GO
SET IDENTITY_INSERT [dbo].[USTTPM] ON 
GO
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (1, N'Mahesh', 0)
GO
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (2, N'Praveen', 0)
GO
SET IDENTITY_INSERT [dbo].[USTTPM] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Candidate] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[DellManager] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Domain] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Location] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Recruiter] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Region] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF_SOW_USTTPMId]  DEFAULT ((0)) FOR [USTTPMId]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF__SOW__isDeleted__4D5F7D71]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOWCandidate] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Status] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technolog__isDel__5E8A0973]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTPOC] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTTPM] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([RegionId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Region]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Roles]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Permission] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([PermissionId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Permission]
GO
ALTER TABLE [dbo].[RoleScreens]  WITH CHECK ADD  CONSTRAINT [FK_RoleScreens_Screens] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([ScreenId])
GO
ALTER TABLE [dbo].[RoleScreens] CHECK CONSTRAINT [FK_RoleScreens_Screens]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_DellManager] FOREIGN KEY([DellManagerId])
REFERENCES [dbo].[DellManager] ([DellManagerId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_DellManager]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Recruiter] FOREIGN KEY([RecruiterId])
REFERENCES [dbo].[Recruiter] ([RecruiterId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Recruiter]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Status]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Technology] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([TechnologyId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Technology]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_USTPOC] FOREIGN KEY([USTPOCId])
REFERENCES [dbo].[USTPOC] ([USTPOCId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_USTPOC]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_USTTPM] FOREIGN KEY([USTTPMId])
REFERENCES [dbo].[USTTPM] ([USTTPMId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_USTTPM]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Candidate]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_SOW] FOREIGN KEY([SowId])
REFERENCES [dbo].[SOW] ([SowId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_SOW]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Status]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Domain] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([DomainId])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Domain]
GO
/****** Object:  StoredProcedure [dbo].[Account_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Account_proc]  
(  
@AccountId int,  
@AccountName nvarchar(100), 
@Type nvarchar(100)  
)  
AS BEGIN  
IF(@Type='post')  
BEGIN INSERT INTO Account(AccountId,AccountName)  
VALUES(@AccountId,@AccountName)  
END  
  
ELSE IF(@Type='get')      
BEGIN      
  SELECT * FROM Account where isDeleted=0 order by AccountId desc      
END     
  
  
ELSE IF(@Type='getid')      
BEGIN      
  SELECT * FROM Account where AccountId=@AccountId     
END   
  
ELSE IF(@Type='update')      
BEGIN      
update Account SET   
AccountName=@AccountName  WHERE AccountId=@AccountId  
  
END  
  
ELSE IF(@Type='Delete')      
BEGIN      
 
 update Account SET isDeleted=1 where AccountId=@AccountId

END   
  
  
END
GO
/****** Object:  StoredProcedure [dbo].[DellManager_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DellManager_proc]    
(    
@DellManagerId int,    
@DellManagerName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO DellManager(DellManagerName)    
VALUES(@DellManagerName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM DellManager where isDeleted=0 order by DellManagerId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM DellManager where DellManagerId= @DellManagerId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update DellManager SET     
DellManagerName=@DellManagerName  WHERE DellManagerId= @DellManagerId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN           
  update DellManager SET isDeleted=1 where DellManagerId= @DellManagerId   
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Domain_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Domain_proc]      
(      
@DomainId int,      
@DomainName nvarchar(100),      
@Type nvarchar(100)      
)      
AS BEGIN      
IF(@Type='post')      
BEGIN INSERT INTO Domain(DomainName)      
VALUES(@DomainName)      
END      
   

ELSE IF(@Type='get')          
BEGIN          
  SELECT * FROM Domain where isDeleted=0 order by DomainId desc          
END         
      
 
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Domain where DomainId=@DomainId        
END       
   
ELSE IF(@Type='update')          
BEGIN          
update Domain SET           
DomainName=@DomainName  where DomainId=@DomainId    
END      

        
ELSE IF(@Type='Delete')          
BEGIN          
 --DELETE FROM Domain  where DomainId=@DomainId    
 update Domain SET isDeleted=1 where DomainId=@DomainId 
END       
          
END
GO
/****** Object:  StoredProcedure [dbo].[Location_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
     
CREATE procedure [dbo].[Location_proc]      
(      
@LocationId int,      
@Location nvarchar(50),  
@RegionId int,  
@Type nvarchar(100)      
)       
AS BEGIN      
IF(@Type='post')      
BEGIN   
INSERT INTO Location(Location,RegionId)      
VALUES(@Location,@RegionId)      
END      
      
ELSE IF(@Type='get')          
BEGIN          
  SELECT * FROM Location where isDeleted=0 order by LocationId desc          
END         
      
      
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Location where LocationId=@LocationId         
END       
      
ELSE IF(@Type='update')          
BEGIN          
update Location SET       
Location=@Location,RegionId=@RegionId    where LocationId=@LocationId  
END      
      
ELSE IF(@Type='Delete')          
BEGIN          
-- DELETE FROM Location WHERE LocationId=@LocationId 
 update Location SET isDeleted=1 where LocationId=@LocationId 
END       
      
      
END
GO
/****** Object:  StoredProcedure [dbo].[loginproc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[loginproc]  
(  
@LoginName varchar(100),
@LoginPassword varchar(100)
)  
as

--DECLARE @LoginName as varchar(100)
--DECLARE @LoginPassword as varchar(100)


 Begin 
 if Exists (SELECT * FROM [Login] where LoginName=@LoginName and LoginPassword=@LoginPassword)
 Begin 

 DECLARE @listStr VARCHAR(MAX)
SELECT @listStr = COALESCE(@listStr+',' ,'') + S.ScreenName
 FROM [Login] L INNER Join Roles R ON L.RoleId= R.RoleId
 INNER Join RoleScreens RS ON R.RoleId=RS.RoleId 
 INNER JOIN Screens S ON RS.ScreenId=S.ScreenId
  where LoginName=@LoginName and LoginPassword=@LoginPassword


 select DISTINCT L.LoginName, L.EmailId,R.RoleName,P.PermissionName,@listStr as 'ScreenNames','1' as [status] 
 FROM [Login] L INNER Join Roles R ON L.RoleId= R.RoleId 
 INNER JOIN Permission P ON R.PermissionId=P.PermissionId
 INNER Join RoleScreens RS ON R.RoleId=RS.RoleId 
 INNER JOIN Screens S ON RS.ScreenId=S.ScreenId
 where LoginName=@LoginName and LoginPassword=@LoginPassword
 end

 else
 
 Begin 

 select  '' as LoginName, '' as EmailId,'' as RoleName,'' as PermissionName,'' as ScreenNames,'0' as [status];
   
 end

 END
 
GO
/****** Object:  StoredProcedure [dbo].[Recruiter_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
CREATE procedure [dbo].[Recruiter_proc]    
(    
@RecruiterId int,    
@RecruiterName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO Recruiter(RecruiterName)    
VALUES(@RecruiterName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM Recruiter where isDeleted=0 order by RecruiterId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM Recruiter where RecruiterId= @RecruiterId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update Recruiter SET     
RecruiterName=@RecruiterName  WHERE RecruiterId= @RecruiterId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM Recruiter WHERE RecruiterId= @RecruiterId  
  update Recruiter SET isDeleted=1 where RecruiterId= @RecruiterId  
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Region_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      
CREATE procedure [dbo].[Region_proc]    
(    
@RegionId int,    
@Region nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO Region(Region)    
VALUES(@Region)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM Region where isDeleted=0 order by RegionId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM Region where RegionId=@RegionId       
END     
    
ELSE IF(@Type='update')        
BEGIN        
update Region SET     
    
Region=@Region  where RegionId=@RegionId  
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM Region  where RegionId=@RegionId 
 update Region SET isDeleted=1 where RegionId=@RegionId
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Sow_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sow_proc](            
 @SowId int,   
 @SoName nvarchar(100) NULL,     
 @JRCode nvarchar(10),            
 @RequestCreationDate datetime,            
 @AccountId int Null,            
 @TechnologyId nvarchar(500) NULL,            
 @Role nvarchar(100) NULL,            
 @LocationId int null , 
 @RegionId int null , 
 @TargetOpenPositions int NULL,            
 @PositionsTobeClosed int NULL,            
 @USTPOCId   int null ,         
 @RecruiterId  int null ,           
 @USTTPMId    int null ,         
 @DellManagerId   int null ,   
 @StatusId int NULL,            
 @Band nvarchar(100) NULL,            
 @ProjectId nvarchar(100) NULL,            
 @AccountManager nvarchar(200) NULL,            
 @ExternalResource nvarchar(100) NULL,            
 @InternalResource nvarchar(100) NULL,           
 @Type nvarchar(100))          
 as            
 Begin             
 If(@Type='insert')          
 begin          
 Insert into SOW(SoName,JRCode,RequestCreationDate,AccountId,TechnologyId,Role,LocationId,RegionId,TargetOpenPositions,PositionsTobeClosed,            
 USTPOCId,RecruiterId,USTTPMId,DellManagerId,StatusId,Band,ProjectId,AccountManager,ExternalResource,InternalResource)             
 Values            
 (@SoName,@JRCode,@RequestCreationDate,@AccountId,@TechnologyId,@Role,@LocationId,@RegionId,@TargetOpenPositions,@PositionsTobeClosed,            
 @USTPOCId,@RecruiterId,@USTTPMId,@DellManagerId,@StatusId,@Band,@ProjectId,@AccountManager,@ExternalResource,@InternalResource)            
 end          
 else if(@Type='get')          
 begin          
 select * from SOW where isDeleted=0 order by SowId desc          
 end          
 else if(@Type='getid')          
 begin          
 select * from SOW where SowId=@SowId          
 end          
 else if(@Type='update')          
 begin          
 update SOW set          
 SoName=@SoName,JRCode=@JRCode,RequestCreationDate=@RequestCreationDate,AccountId=@AccountId,TechnologyId=@TechnologyId,          
 Role=@Role,LocationId=@LocationId,TargetOpenPositions=@TargetOpenPositions,PositionsTobeClosed=@PositionsTobeClosed,            
 USTPOCId=@USTPOCId,RecruiterId=@RecruiterId,USTTPMId=@USTTPMId,DellManagerId=@DellManagerId,StatusId=@StatusId,Band=@Band,          
 ProjectId=@ProjectId,AccountManager=@AccountManager,ExternalResource=@ExternalResource,InternalResource=@InternalResource        
 Where SowId=@SowId;     
end          
          
else if(@Type='Delete')          
 begin          
 --delete from SOW where SowId=@SowId  
 update SOW SET isDeleted=1 where SowId=@SowId 
 end          
            
 end 
GO
/****** Object:  StoredProcedure [dbo].[SowCandidate_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SowCandidate_proc]    
(    
@SOW_CandidateId int,    
@SowId int,    
@CandidateId int,    
@StatusId int,    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO SOWCandidate(SowId,CandidateId,StatusId)    
VALUES(@SowId,@CandidateId,@StatusId)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM SOWCandidate where isDeleted=0 order by SOW_CandidateId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM SOWCandidate where SOW_CandidateId=@SOW_CandidateId       
END     
    
ELSE IF(@Type='update')        
BEGIN        
update SOWCandidate SET     
SowId=@SowId,    
CandidateId=@CandidateId,StatusId=@StatusId   where SOW_CandidateId=@SOW_CandidateId
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM SOWCandidate WHERE SOW_CandidateId=@SOW_CandidateId
  update SOWCandidate SET isDeleted=1 where SOW_CandidateId=@SOW_CandidateId
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Status_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Status_proc]
(
@StatusId int,
@StatusName nvarchar(100),
@Type nvarchar(100)
)
AS BEGIN
IF(@Type='post')
BEGIN INSERT INTO Status(StatusName)
VALUES(@StatusName)
END

ELSE IF(@Type='get')    
BEGIN    
  SELECT * FROM Status where isDeleted=0 order by StatusId desc    
END   


ELSE IF(@Type='getid')    
BEGIN    
  SELECT * FROM Status where StatusId=@StatusId   
END 

ELSE IF(@Type='update')    
BEGIN    
update Status SET 
StatusName=@StatusName

END

ELSE IF(@Type='Delete')    
BEGIN    
-- DELETE FROM Status WHERE StatusId=@StatusId    
 update Status SET isDeleted=1 where StatusId=@StatusId   
END 


END
GO
/****** Object:  StoredProcedure [dbo].[Technology_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


        
CREATE procedure [dbo].[Technology_proc]      
(      
@TechnologyId int,      
@TechnologyName nvarchar(100),   
@DomainId int,
@Type nvarchar(100)      
)      
AS BEGIN      
IF(@Type='post')      
BEGIN INSERT INTO Technology(TechnologyName,DomainId)
VALUES(@TechnologyName,@DomainId)      
END      
   

ELSE IF(@Type='get')          
BEGIN          
  SELECT * FROM Technology where IsDeleted=0 order by TechnologyId desc          
END         
      
 
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Technology where TechnologyId=@TechnologyId        
END       
   
ELSE IF(@Type='update')          
BEGIN          
update Technology SET       
      
TechnologyName=@TechnologyName, DomainId=@DomainId  where TechnologyId=@TechnologyId    
END      

        
ELSE IF(@Type='Delete')          
BEGIN          
 --DELETE FROM Technology  where TechnologyId=@TechnologyId   
  update Technology SET IsDeleted=1 where TechnologyId=@TechnologyId   
END       
      
      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_addCandidateData]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_addCandidateData]
@CandidateName nvarchar(100),
@MobileNo nvarchar(50),
@Gender nvarchar(20),
@DOB date,
@EmailId nvarchar(50),
@Location nvarchar(50),
@Pincode nvarchar(10),
@Address nvarchar(max),
@Status nvarchar(50),
@Skills nvarchar(max),
@JoiningDate datetime,
@IsInternal bit
as
begin
set nocount on
insert into Candidate(CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal)
values(@CandidateName,@Gender,@MobileNo,@DOB,@EmailId,@Location,@Pincode,@Address,@Status,@Skills,@JoiningDate,@IsInternal)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_deleteCandidateData]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_deleteCandidateData]
@CandidateId int
as
begin

 update Candidate SET IsDeleted=1 where CandidateId=@CandidateId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_editCandidateData]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_editCandidateData]
@CandidateId int,
@CandidateName nvarchar(100),
@MobileNo nvarchar(50),
@Gender nvarchar(20),
@DOB date,
@EmailId nvarchar(50),
@Location nvarchar(50),
@Pincode nvarchar(10),
@Address nvarchar(max),
@Status nvarchar(50),
@Skills nvarchar(max),
@JoiningDate datetime,
@IsInternal bit
as
begin
UPDATE Candidate
SET CandidateName=@CandidateName,
MobileNo=@MobileNo,Gender=@Gender,DOB=@DOB,EmailId=@EmailId,Location=@Location,Pincode=@Pincode,Address=@Address,Status=@Status,Skills=@Skills,
JoiningDate=@JoiningDate,IsInternal=@IsInternal
Where CandidateId=@CandidateId;
end
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllCandidateData]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_getAllCandidateData]
as
begin
set nocount on
select CandidateId,CandidateName,MobileNo,DOB,EmailId,Location,Skills,JoiningDate,IsInternal,Address,Status,Pincode,Gender
from Candidate where isDeleted=0 order by CandidateId desc
end
GO
/****** Object:  StoredProcedure [dbo].[usp_showCandidateData]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_showCandidateData]
@CandidateId int 
as
begin 
set nocount on
select CandidateId,CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal
from Candidate where CandidateId=@CandidateId
end
GO
/****** Object:  StoredProcedure [dbo].[USTPOC_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USTPOC_proc]    
(    
@USTPOCId int,    
@USTPOCName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO USTPOC(USTPOCName)    
VALUES(@USTPOCName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM USTPOC where isDeleted=0 order by USTPOCId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM USTPOC where USTPOCId= @USTPOCId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update USTPOC SET     
USTPOCName=@USTPOCName  WHERE USTPOCId= @USTPOCId   
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM USTPOC WHERE USTPOCId= @USTPOCId   
  update USTPOC SET isDeleted=1 where USTPOCId= @USTPOCId  
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[USTTPM_proc]    Script Date: 2/10/2023 3:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USTTPM_proc]    
(    
@USTTPMId int,    
@USTTPMName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO USTTPM(USTTPMName)    
VALUES(@USTTPMName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM USTTPM where isDeleted=0 order by USTTPMId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM USTTPM where USTTPMId= @USTTPMId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update  USTTPM SET     
USTTPMName=@USTTPMName  WHERE USTTPMId= @USTTPMId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM USTTPM where USTTPMId= @USTTPMId    
   update USTTPM SET isDeleted=1 where USTTPMId= @USTTPMId   
END     
    
    
END
GO
USE [master]
GO
ALTER DATABASE [SOW_Db] SET  READ_WRITE 
GO
