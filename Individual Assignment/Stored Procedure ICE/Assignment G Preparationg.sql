
GO
/****** Object:  Table [dbo].[tblFluency]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFluency](
	[FluencyID] [int] IDENTITY(1,1) NOT NULL,
	[RANKING] [float] NULL,
	[FLUENCYCODE] [nvarchar](250) NULL,
	[FLUENCYDESCRIPTION] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblFluencyKey] PRIMARY KEY CLUSTERED 
(
	[FluencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLanguage]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLanguage](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblLanguage] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMembership]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMembership](
	[MembershipID] [int] IDENTITY(1,1) NOT NULL,
	[MembershipNumber] [int] NULL,
	[IsCurrentMember] [bit] NULL,
	[MembershipTypeID] [int] NULL,
	[MembershipFeePaidDate] [DATE] NULL,
 CONSTRAINT [PK_tblMembership] PRIMARY KEY CLUSTERED 
(
	[MembershipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMembershipType]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMembershipType](
	[MembershipTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MembershipType] [varchar](250) NULL,
	[AnnualFee] [money] NULL,
	[IsGroup] [bit] NULL,
 CONSTRAINT [PK_tblMembershipType] PRIMARY KEY CLUSTERED 
(
	[MembershipTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](250) NOT NULL,
	[MiddleName] [varchar](250) NULL,
	[LastName] [varchar](250) NULL,
	[Address] [varchar](250) NULL,
	[City] [varchar](250) NULL,
	[State] [varchar](250) NULL,
	[ZipCode] [varchar](250) NULL,
	[AreaCode] [varchar](250) NULL,
	[PhoneNumber] [varchar](250) NULL,
	[EmailAddress] [varchar](250) NULL,
	[MembershipID] [int] NULL,
 CONSTRAINT [PK_tblPerson] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonLanguageFluency]    Script Date: 3/8/2018 3:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonLanguageFluency](
	[PersonID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[FluencyID] [int] NULL,
 CONSTRAINT [PK_tblPersonLanguageFluency] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC,
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFluency] ON 

INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (1, 10, N'WP ', N'Words and Phrases Only')
INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (2, 20, N'LC', N'Light Conversation')
INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (3, 30, N'FF ', N'Fluent Foreign Speaker')
INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (4, 40, N'NS ', N'Native Speaker')
INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (5, 50, N'PT', N'Professional Translator')
INSERT [dbo].[tblFluency] ([FluencyID], [RANKING], [FLUENCYCODE], [FLUENCYDESCRIPTION]) VALUES (6, 0, N'FNK ', N'Fluency level Not Known ')
SET IDENTITY_INSERT [dbo].[tblFluency] OFF
SET IDENTITY_INSERT [dbo].[tblLanguage] ON 

INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (1, N'Arabic')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (2, N'Cherokee')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (3, N'Chinese')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (4, N'English')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (5, N'Finnish')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (6, N'French')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (7, N'Irish')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (8, N'Italian')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (9, N'Japanese')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (10, N'Korean')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (11, N'Mongolian')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (12, N'Nepali')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (13, N'Portuguese ')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (14, N'Russian')
INSERT [dbo].[tblLanguage] ([LanguageID], [LanguageName]) VALUES (15, N'Spanish')
SET IDENTITY_INSERT [dbo].[tblLanguage] OFF
SET IDENTITY_INSERT [dbo].[tblMembership] ON 

INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (1, 1628, 1, 1)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (2, 5806, 1, 1)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (3, 8131, 1, 1)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (4, 499, 1, 2)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (5, 3638, 1, 2)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (6, 5082, 1, 2)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (7, 6812, 1, 2, '11/01/2016')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (8, 9854, 1, 2,'10/10/2015')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (9, 410, 1, 3,'09/10/2014')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (10, 668, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (11, 959, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (12, 1345, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (13, 1633, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (14, 1949, 1, 3,'11/12/2019')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (15, 2226, 1, 3, '11/12/2020')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (16, 2281, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (17, 2544, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (18, 2566, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (19, 2702, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (20, 2926, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID], [MembershipFeePaidDate]) VALUES (21, 2967, 1, 3, '12/10/2021')
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (22, 3597, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (23, 3773, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (24, 4076, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (25, 4285, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (26, 4688, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (27, 4730, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (28, 4820, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (29, 5031, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (30, 5091, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (31, 5104, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (32, 5202, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (33, 5507, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (34, 5944, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (35, 6001, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (36, 6115, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (37, 6249, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (38, 6544, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (39, 6963, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (40, 7203, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (41, 7209, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (42, 7736, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (43, 8612, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (44, 8737, 0, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (45, 8879, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (46, 9309, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (47, 9401, 1, 3)
INSERT [dbo].[tblMembership] ([MembershipID], [MembershipNumber], [IsCurrentMember], [MembershipTypeID]) VALUES (48, 9950, 1, 3)
SET IDENTITY_INSERT [dbo].[tblMembership] OFF
SET IDENTITY_INSERT [dbo].[tblMembershipType] ON 

INSERT [dbo].[tblMembershipType] ([MembershipTypeID], [MembershipType], [AnnualFee], [IsGroup]) VALUES (1, N'Corporate', 250.0000, 1)
INSERT [dbo].[tblMembershipType] ([MembershipTypeID], [MembershipType], [AnnualFee], [IsGroup]) VALUES (2, N'Family', 50.0000, 1)
INSERT [dbo].[tblMembershipType] ([MembershipTypeID], [MembershipType], [AnnualFee], [IsGroup]) VALUES (3, N'Individual', 25.0000, 0)
INSERT [dbo].[tblMembershipType] ([MembershipTypeID], [MembershipType], [AnnualFee], [IsGroup]) VALUES (4, N'Patron', 100.0000, 0)
INSERT [dbo].[tblMembershipType] ([MembershipTypeID], [MembershipType], [AnnualFee], [IsGroup]) VALUES (5, N'Student', 10.0000, 0)
SET IDENTITY_INSERT [dbo].[tblMembershipType] OFF
SET IDENTITY_INSERT [dbo].[tblPerson] ON 

INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (1, N'', N'', N'Balboa Enterprises', N'2812 Haxton Way', N'Bellingham', N'WA', N'98226', N'206', N'7230961', N'Info@balboa.com', 1)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (2, N'Vasco', N'', N'Núñez de Balboa', N'801 Newell St', N'Bellingham', N'WA', N'98225-5722', N'206', N'9354110', N'VasNunez@otter.org', 1)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (3, N'', N'', N'Marquette Electronics', N'PO Box 191', N'Acme', N'WA', N'98220-0191', N'206', N'8427735', N'Sales@marquette.org', 2)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (4, N'Jacques', N'', N'Marquette', N'3102 Deer Island Dr E         ', N'Sumner', N'WA', N'98390', N'425', N'6728665', N'MarquetteJ@hamster.com', 2)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (5, N'Pierre', N'', N'de la Salle', N'612 H Street Rd', N'Lynden', N'WA', N'98264', N'', N'', N'de.la.Salle@marquette.org', 2)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (6, N'', N'', N'Bering Seafoods', N'11623 228th NE', N'Arlington', N'WA', N'98223', N'425', N'2524335', N'Bering.Seafoods@bering.com', 3)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (7, N'Vitus', N'', N'Bering', N'3021 Cowgill                  ', N'Bellingham', N'WA', N'98225', N'206', N'5232430', N'BeringV@hamster.com', 3)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (8, N'Herman', N'', N'Perry', N'1232 Crawford Rd', N'Lynnwood', N'WA', N'98036', N'360', N'6500098', N'PerryH@hamster.com', 4)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (9, N'Matthew', N'', N'Perry', N'707 Baker St', N'Bellingham', N'WA', N'98225', N'253', N'8621340', N'MatPerry@otter.org', 4)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (10, N'Priscilla', N'', N'Perry', N'707 Baker St', N'Bellingham', N'WA', N'98225', N'214', N'6299039', N'PerryP@hamster.com', 4)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (11, N'Xavier', N'', N'Perry', N'707 Baker St', N'Bellingham', N'WA', N'98225', N'425', N'8236637', N'PerryX@hamster.com', 4)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (12, N'April', N'Song', N'Byrd', N'5697 Mt Baker Hwy             ', N'Deming', N'WA', N'98244', N'360', N'7561008', N'ByrdA@hamster.com', 5)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (13, N'Richard', N'', N'Byrd', N'5697 Mt Baker Hwy             ', N'Deming', N'WA', N'98244', N'360', N'7561008', N'RByrd@gerbil.net', 5)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (14, N'Frances', N'', N'Drake', N'3545 Bartlett Ave', N'Bellingham', N'WA', N'98226', N'425', N'2100437', N'', 6)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (15, N'Francis', N'', N'Drake', N'3545 Bartlett Ave', N'Bellingham', N'WA', N'98226', N'425', N'2100437', N'DrakeF@hamster.com', 6)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (16, N'Louis', N'', N'Jolliet', N'PO Box 647', N'Lynden', N'WA', N'98264', N'206', N'7890429', N'LouJolli@otter.org', 7)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (17, N'Louise', N'de Mille', N'Joliet', N'10209 40th Ave SE             ', N'Everett', N'WA', N'98208', N'360', N'6472823', N'', 7)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (18, N'Francesca', N'', N'Rodrigues-Coronado', N'72111 Patawa Rd', N'Pendleton', N'OR', N'97801-9505', N'425', N'2524042', N'FraRodri@otter.org', 8)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (19, N'Francisco', N'', N'Vásquez de Coronado', N'72111 Patawa Rd', N'Pendleton', N'OR', N'97801-9505', N'715', N'4242073', N'Fvasquez.de.Coronado@gerbil.net', 8)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (20, N'Jacques', N'', N'Cartier', N'4654 Guide Meridian', N'Bellingham', N'WA', N'98226', N'360', N'6713721', N'JCartier@gerbil.net', 9)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (21, N'John', N'', N'Cabot', N'PO Box 1363                   ', N'Blaine', N'WA', N'98230', N'360', N'7141220', N'JohCabot@otter.org', 10)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (22, N'Christopher', N'', N'Columbus', N'PO Box 20', N'Boise', N'ID', N'83726', N'757', N'6861721', N'ChrColum@otter.org', 11)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (23, N'Benjamin', N'Franklin', N'Pierce', N'14809 Broadway', N'Snohomish', N'WA', N'98296', N'360', N'2233824', N'PierceB@hamster.com', 12)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (24, N'Sherman', N'T.', N'Potter', N'PO Box 176                    ', N'Trout Lake', N'WA', N'98650', N'360', N'7386902', N'ShePotte@otter.org', 13)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (25, N'Walter', N'', N'Raleigh', N'1000 Edgewater Ln             ', N'Lynden', N'WA', N'98264', N'406', N'4584772', N'RaleighW@hamster.com', 14)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (26, N'Edmund', N'', N'Hillary', N'701 E North                   ', N'Bellingham', N'WA', N'98225', N'360', N'7529861', N'EHillary@gerbil.net', 15)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (27, N'Vasco', N'da', N'Gama', N'PO Box 1548                   ', N'Oroville', N'WA', N'98844', N'360', N'7141179', N'VasGama@otter.org', 16)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (28, N'William', N'', N'Clark', N'503 Howardville Rd', N'Canton', N'NY', N'13617-3439', N'907', N'7462497', N'WClark@gerbil.net', 17)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (29, N'Margaret', N'', N'Houlihan', N'1901 West 6th                 ', N'Aberdeen', N'WA', N'98520', N'360', N'6715286', N'HoulihanM@hamster.com', 18)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (30, N'Yuri', N'', N'Gagarin', N'131 W 13th St                 ', N'Port Angeles', N'WA', N'98362', N'253', N'9459494', N'GagarinY@hamster.com', 19)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (31, N'David', N'', N'Livingstone', N'7413 Upper Ridge Rd           ', N'Everett', N'WA', N'98203', N'265', N'5357290', N'DavLivin@otter.org', 20)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (32, N'Abel', N'', N'Tasman', N'808 21st St 100', N'Bellingham', N'WA', N'98225', N'360', N'6832294', N'', 21)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (33, N'Tenzing', N'', N'Norgay', N'3130 Bennett Dr', N'Bellingham', N'WA', N'98225', N'480', N'7594640', N'NorgayT@hamster.com', 22)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (34, N'Marco', N'', N'Polo', N'237 Middlefield Rd', N'Bellingham', N'WA', N'98225', N'360', N'7347230', N'PoloM@hamster.com', 23)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (35, N'Alan', N'', N'Shepard', N'3131 Ferry B-308', N'Bellingham', N'WA', N'98225', N'845', N'6587579', N'ShepardA@hamster.com', 24)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (36, N'James', N'', N'Cook', N'2103 N 62nd St', N'Seattle', N'WA', N'98103-5720', N'425', N'3535231', N'CookJ@hamster.com', 25)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (37, N'Henry', N'', N'Blake', N'1344 Mc Lean Rd', N'Mount Vernon', N'WA', N'98273', N'360', N'6479523', N'BlakeH@hamster.com', 26)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (38, N'Hernán', N'', N'Cortés', N'4427 Ridgemont Dr', N'Everett', N'WA', N'98203', N'360', N'5747902', N'HCortes@gerbil.net', 27)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (39, N'Valentina', N'', N'Tereshkova', N'704 W 20th St', N'Vancouver', N'WA', N'98660-2420', N'206', N'7796604', N'VTereshkova@gerbil.net', 28)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (40, N'John', N'Francis Patrick', N'Mulcahy', N'12208 NE 137th Pl', N'Kirkland', N'WA', N'98034-2228', N'360', N'7158413', N'MulcahyJ@hamster.com', 29)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (41, N'Charles', N'Emerson', N'Winchester III', N'1311 37th St', N'Bellingham', N'WA', N'98229-3234', N'360', N'4352393', N'WinchesterC@hamster.com', 30)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (42, N'Neil', N'', N'Armstrong', N'PO Box 276', N'Leavenworth', N'WA', N'98826', N'206', N'6163663', N'NeiArmst@otter.org', 31)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (43, N'George', N'', N'Vancouver', N'1802 B 16th Street', N'Bellingham', N'WA', N'98225', N'360', N'3712131', N'VancouverG@hamster.com', 32)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (44, N'John', N'Francis Xavier', N'McIntyre', N'6029 Championship Cir', N'Mukilteo', N'WA', N'98275-5031', N'541', N'5829678', N'JMcIntyre@gerbil.net', 33)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (45, N'Sally', N'', N'Ride', N'1803 Sandalwood Ctr', N'Mount Vernon', N'WA', N'98273', N'541', N'2761104', N'RideS@hamster.com', 34)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (46, N'Juan', N'', N'Ponce de León', N'2100 1/2 NEw St', N'Bellingham', N'WA', N'98225', N'425', N'8817671', N'Ponce.de.LeonJ@hamster.com', 35)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (47, N'Genghis', N'', N'Khan', N'405 Foxhound Ct', N'Versailles', N'KY', N'40383-1644', N'360', N'7343832', N'KhanG@hamster.com', 36)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (48, N'Charles', N'', N'Lindbergh', N'20124 32nd Avenue NE', N'Seattle', N'WA', N'98155-1500', N'360', N'6475661', N'LindberghC@hamster.com', 37)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (49, N'Leif', N'', N'Eriksson', N'PO Box 19444', N'Seattle', N'WA', N'98109', N'360', N'2401230', N'LeiEriks@otter.org', 38)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (50, N'Mehmed', N'Emin', N'Pasha', N'1030 15th St', N'Bellingham', N'WA', N'98225', N'360', N'7560904', N'PashaM@hamster.com', 39)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (51, N'Franklin', N'D.', N'Burns', N'3007 Federal Ave              ', N'Everett', N'WA', N'98201', N'425', N'8685894', N'BurnsF@hamster.com', 40)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (52, N'Mary', N'Henrietta', N'Kingsley', N'475 Pepper Ave', N'Wisconsin Rapids', N'WI', N'54494-6108', N'206', N'4397337', N'MKingsley@gerbil.net', 41)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (53, N'Ferdinand', N'', N'Magellan', N'PO Box 1946', N'Ferndale', N'WA', N'98248', N'360', N'6971706', N'FerMagel@otter.org', 42)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (54, N'Sacagawea', N'', N'Charbonneau', N'2473 S Spencer St', N'Seattle', N'WA', N'98108', N'503', N'2888104', N'CharbonneauS@hamster.com', 43)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (55, N'Walter', N'Eugene', N'O''Reilly', N'4759 Bay Road', N'Blaine', N'WA', N'98230', N'206', N'7899178', N'WOReilly@gerbil.net', 44)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (56, N'Meriwether', N'', N'Lewis', N'2030 Pleasant Creek Rd', N'Rogue River', N'OR', N'97537-9710', N'425', N'3370541', N'LewisM@hamster.com', 45)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (57, N'Roald', N'', N'Amundsen', N'4603 182nd Pl SW              ', N'Lynnwood', N'WA', N'98037', N'360', N'3545995', N'RAmundsen@gerbil.net', 46)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (58, N'Amelia', N'', N'Earhart', N'8417 NE Paulanna Ln', N'Bainbridge Island', N'WA', N'98110', N'360', N'2200814', N'AmeEarha@otter.org', 47)
INSERT [dbo].[tblPerson] ([PersonID], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [ZipCode], [AreaCode], [PhoneNumber], [EmailAddress], [MembershipID]) VALUES (59, N'George', N'', N'Vancouver', N'801 Harris Ave Bldg 1', N'Bellingham', N'WA', N'98225', N'360', N'3845171', N'GeoVanco@otter.org', 48)
SET IDENTITY_INSERT [dbo].[tblPerson] OFF
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (2, 4, 5)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (2, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (4, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (4, 6, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (5, 4, 5)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (5, 6, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (7, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (7, 14, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (8, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (9, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (9, 5, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (10, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (11, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (11, 10, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (12, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (12, 9, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (13, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (13, 5, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (14, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (15, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (16, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (17, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (18, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (18, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (19, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (19, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (20, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (20, 6, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (20, 15, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (21, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (22, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (22, 8, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (23, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (24, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (25, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (26, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (26, 12, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (27, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (27, 13, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (27, 15, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (28, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (29, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (30, 14, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (30, 15, 5)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (31, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (31, 14, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (32, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (32, 15, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (33, 4, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (33, 5, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (34, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (34, 8, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (35, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (36, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (36, 9, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (37, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (37, 10, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (38, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (38, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (39, 4, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (39, 14, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (40, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (41, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (41, 10, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (42, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (43, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (43, 14, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (44, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (45, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (46, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (46, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (47, 3, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (47, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (47, 11, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (48, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (48, 10, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (49, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (49, 5, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (50, 1, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (50, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (51, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (51, 10, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (52, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (52, 9, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (53, 4, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (53, 15, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (54, 2, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (54, 4, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (54, 6, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (54, 15, 2)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (55, 4, 3)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (55, 7, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (56, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (56, 9, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (57, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (57, 5, 1)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (58, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (59, 4, 4)
INSERT [dbo].[tblPersonLanguageFluency] ([PersonID], [LanguageID], [FluencyID]) VALUES (59, 15, 1)
ALTER TABLE [dbo].[tblMembership]  WITH CHECK ADD  CONSTRAINT [FK_tblMembership_tblMembershipType] FOREIGN KEY([MembershipTypeID])
REFERENCES [dbo].[tblMembershipType] ([MembershipTypeID])
GO
ALTER TABLE [dbo].[tblMembership] CHECK CONSTRAINT [FK_tblMembership_tblMembershipType]
GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [FK_tblPerson_tblMembership] FOREIGN KEY([MembershipID])
REFERENCES [dbo].[tblMembership] ([MembershipID])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK_tblPerson_tblMembership]
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonLanguageFluency_tblFluency] FOREIGN KEY([FluencyID])
REFERENCES [dbo].[tblFluency] ([FluencyID])
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency] CHECK CONSTRAINT [FK_tblPersonLanguageFluency_tblFluency]
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPersonLanguageFluency_tblLanguage] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[tblLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency] CHECK CONSTRAINT [FK_tblPersonLanguageFluency_tblLanguage]
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPersonLanguageFluency_tblPerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[tblPerson] ([PersonID])
GO
ALTER TABLE [dbo].[tblPersonLanguageFluency] CHECK CONSTRAINT [FK_tblPersonLanguageFluency_tblPerson]
GO
