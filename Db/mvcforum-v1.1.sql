
/****** Object:  Table [dbo].[TopicTag]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicTag](
	[Id] [uniqueidentifier] NOT NULL,
	[Tag] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Topic_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUser](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordSalt] [nvarchar](128) NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttempt] [int] NOT NULL,
	[Slug] [nvarchar](150) NOT NULL,
	[Comment] [ntext] NULL,
	[Signature] [nvarchar](1000) NULL,
	[Age] [int] NULL,
	[Location] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Twitter] [nvarchar](60) NULL,
	[Facebook] [nvarchar](60) NULL,
	[Avatar] [nvarchar](250) NULL,
	[FacebookAccessToken] [nvarchar](150) NULL,
	[FacebookId] [bigint] NULL,
	[TwitterAccessToken] [nvarchar](150) NULL,
	[TwitterId] [nvarchar](150) NULL,
	[GoogleAccessToken] [nvarchar](150) NULL,
	[GoogleId] [nvarchar](150) NULL,
	[IsExternalAccount] [bit] NULL,
	[TwitterShowFeed] [bit] NULL,
	[LoginIdExpires] [datetime] NULL,
	[MiscAccessToken] [nvarchar](150) NULL,
	[Latitude] [nvarchar](40) NULL,
	[Longitude] [nvarchar](40) NULL,
 CONSTRAINT [PK_MembershipUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[MembershipUser] ([Id], [UserName], [Password], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAnswerAttempt], [Slug], [Comment], [Signature], [Age], [Location], [Website], [Twitter], [Facebook], [Avatar], [FacebookAccessToken], [FacebookId], [TwitterAccessToken], [TwitterId], [GoogleAccessToken], [GoogleId], [IsExternalAccount], [TwitterShowFeed], [LoginIdExpires], [MiscAccessToken], [Latitude], [Longitude]) VALUES (N'afe9517a-2139-40ca-a7f4-a02800e572a4', N'admin', N'Lh7HdU7pOWTiMglEu7x+e2HZvq49F0gv/ib8kaWI3q4=', N'YmjFAHr9lkzietEs3URdSlP1NqaXvndE', N'you@email.com', NULL, NULL, 1, 0, CAST(0x00009EBA00E571E4 AS DateTime), CAST(0x0000A10701061F24 AS DateTime), CAST(0x0000A0A1009BD4F6 AS DateTime), CAST(0xFFFF2E4600000000 AS DateTime), 0, 0, N'admin', N'This is a comment test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[MembershipRole]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipRole](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_MembershipRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MembershipRole] ([Id], [RoleName]) VALUES (N'fbf4f43e-1e03-42da-9eec-a03b00900afa', N'Standard Members')
INSERT [dbo].[MembershipRole] ([Id], [RoleName]) VALUES (N'0145aa9b-6b83-4298-abd0-a04100769a0c', N'Guest')
INSERT [dbo].[MembershipRole] ([Id], [RoleName]) VALUES (N'ecf04365-021e-45fb-82f7-b0956c964019', N'Admin')
/****** Object:  Table [dbo].[Category]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [ntext] NULL,
	[Category_Id] [uniqueidentifier] NULL,
	[DateCreated] [datetime] NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsLocked] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Category_Id], [DateCreated], [Slug], [SortOrder], [IsLocked]) VALUES (N'f5eaaace-74d4-4cba-ab2d-a08400cfc7f5', N'Example Category', N'This is an example category that you can change', NULL, CAST(0x0000A08400CFC768 AS DateTime), N'example-category', 0, 0)
/****** Object:  Table [dbo].[LocaleResourceKey]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleResourceKey](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Notes] [ntext] NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK_LocaleResourceKey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'45924c56-f2de-43c3-b183-a05300f99ca8', N'Layout.Nav.Register', N'The message displayed at logoff', CAST(0xAE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1e3e1eaf-1303-4170-b946-a05500a674b8', N'Layout.Nav.Logon', NULL, CAST(0xB0350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b418e381-fdf8-4e49-ac14-a05500a6ad54', N'Layout.Nav.Activity', NULL, CAST(0xB0350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ba566274-7986-4750-9340-a0550103fcd1', N'Layout.Nav.Leaderboard', N'dfasdd', CAST(0xB0350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'cc127418-c9c5-4bb9-b27f-a05a0097754a', N'Layout.Nav.Home', N'adsd', CAST(0xB5350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b807e795-1164-49a3-8f76-a07c00b87764', N'Layout.Nav.Admin', N'Admin nav name', CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'98e02fe2-4161-4e79-bab7-a07c00b90de0', N'Layout.CreateButton', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'13b8049d-660c-4016-81de-a07c00b942b0', N'Layout.PoweredBy', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b514dd86-927f-44a5-8a8e-a07c00c8daed', N'Topic.Votes', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd4dbc7ac-769c-4573-bed9-a07c00c91969', N'Topic.Comments', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bb87d608-5c5d-4222-b63f-a07c00d06556', N'Topic.StartedBy', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'22b55b24-3f50-4019-9f74-a07c00d12129', N'Topic.InCategory', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b6cdd25d-328d-4121-84ee-a07c00d1fe8b', N'Topic.LatestBy', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c95ec48c-4196-45c2-884d-a07c00d38fdf', N'Topic.Views', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'65ac91f4-d430-4851-a9eb-a07c00d422cb', N'Post.VoteUp', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'85e7f11f-d211-4573-92d7-a07c00d42ff0', N'Post.VoteDown', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c3b82cff-64fb-4025-a55c-a07c00d4395a', N'Post.IsSolution', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e962fb97-5b91-43c1-bc58-a07c00d4b3a3', N'Post.PostedThis', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c1414123-0490-4f39-9900-a07c00d4d1b1', N'Post.Posts', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd2727cb8-82de-4fec-8fd3-a07c00d4dea7', N'Post.Points', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'872f4f64-74b4-4bf4-a339-a07c00d573a1', N'Post.LastEdited', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'8fd5d1ed-b7c9-4f1b-a8c9-a07c00d5f4aa', N'Post.Report', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'07366f2f-d39f-4edf-8f11-a07c00d6601f', N'Post.Edit', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'46ea810f-6a0e-4f9f-a5a3-a07c00d6689f', N'Post.Delete', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ca0575eb-9b8e-40ac-b3ef-a07c00d703e3', N'LogOn.LogOn', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f955b313-443d-46ae-8cb5-a07c00d70b16', N'LogOn.LogOff', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd204de6a-1b3e-4f6f-a694-a07c00d775f1', N'Post.PleaseWait', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'68f707bf-b819-4f4d-9714-a07c00d7f48a', N'Topic.DiscussionTaggedWith', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'af51390d-5cfc-4398-87a0-a07c00d85f31', N'Topic.TitleFallBack', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'939bb6b7-fe9f-4826-b353-a07c00d89c75', N'Topic.Subscribe', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'13e91d26-d157-4799-be64-a07c00d8a383', N'Topic.UnSubscribe', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'46ac6414-eafc-418a-8f72-a07c00d90d74', N'Topic.IsLocked', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'552861fc-066e-4e61-a47f-a07c00d95885', N'Topic.CreateDiscussion', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2bd357bf-c6c1-4352-b8eb-a07c00d9c166', N'Topic.TagThisTopic', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'8f33341b-f228-4015-99b8-a07c00d9fabf', N'Tags.PopularTags', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'9e627423-35b2-45c6-a408-a07c00da4733', N'Stats.FooterMainStatText', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c901e40a-8c2a-4f57-b8e9-a07c00daf054', N'Stats.LatestMembers', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ebd7921d-a287-4c65-91df-a07c00dbcb19', N'PM.Title', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'a8970f38-02ed-4932-857c-a07c00dbf6b3', N'PM.From', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c8304567-2a7d-47ce-8090-a07c00dbfc5e', N'PM.Sent', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'433d8780-b00b-4580-8efb-a07c00dc45b1', N'PM.BackToInbox', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2396d532-e54a-4338-8b10-a07c00dc51d9', N'PM.Reply', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f70ae9b1-03df-48f1-a676-a07c00dcadf0', N'PM.SentPrivateMessages', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ff8ba140-c90e-4dbc-b05a-a07c00dce344', N'PM.To', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2fd3523b-07cb-429a-a6cc-a07c00dcea6a', N'PM.Subject', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2dfd430c-2988-4e4c-8107-a07c00dcf190', N'PM.Date', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd6fdb15b-948f-4076-a7ff-a07c00dcfc67', N'PM.Read', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1a9286f4-5d99-47d3-a6f4-a07c00dd0803', N'PM.Delete', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3ecc30ac-3d4b-462b-86db-a07c00ddacd1', N'PM.NoMessages', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bc6c207c-120f-4abb-a3fc-a07c00de0d42', N'PM.Create', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'13aa795e-700d-4141-854f-a07c00de80fa', N'PM.ReceivedPrivateMessages', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b8bf9cee-9c14-43fa-aa52-a07c00df7f6d', N'PM.CreatePrivateMessage', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'003ccd99-dbb4-49ac-9a8f-a07c00dfc0ba', N'PM.Send', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c43a76d0-8209-4fed-b8c2-a07c00dff0e5', N'PM.OriginalMessage', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3da0c8de-8df1-40e7-bb4b-a07c00e0356f', N'Buttons.Send', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e618204c-94bc-4bb6-a1a0-a07c00e06247', N'Report.ReportPostBy', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'0bd7407a-72f3-41db-ab61-a07c00e0f936', N'Buttons.Edit', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'a764245e-f3f5-445b-9714-a07c00e135b2', N'Points.ThisWeeksHighEarners', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'fff71034-d6ed-4982-a5bd-a07c00e188a6', N'SideBox.MyTools', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'56430e42-9125-4b15-82ed-a07c00e1cb61', N'PM.PrivateMessages', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'95301cbc-66fc-41f1-875c-a07c00e20749', N'Members.SearchMembers', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b4159cbd-3a00-4286-8f2a-a07c00e26d97', N'Buttons.Search', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f82cc71b-ed5c-4016-843c-a07c00e2a1db', N'Members.Users', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'51559a81-6697-439a-aec3-a07c00e2ab94', N'Members.Points', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b993f928-220a-429a-bc40-a07c00e2b780', N'Members.DateJoined', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'6895a5ac-43b3-460a-a233-a07c00e35a00', N'Report.Report', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'a48de0a2-7b2f-4743-aa81-a07c00e3c500', N'Members.Register', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3c99d1b0-46d2-4d32-816d-a07c00e403df', N'Members.AlreadyRegistered', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'07e34c85-0b51-4a87-b44f-a07c00e4a568', N'Members.LogOnMessage', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'80ff35b9-583f-41a2-9fa8-a07c00e53737', N'Buttons.LogOn', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5695cb9e-5abf-48df-a2f1-a07c00e575c6', N'Members.ProfileTitle', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'4f80ffd9-2930-438c-9c63-a07c00e5c623', N'Members.Profile.Joined', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b2ec4b66-4059-48ee-97ff-a07c00e5d028', N'Members.Profile.Posts', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'6a845524-a045-476d-82eb-a07c00e5d870', N'Members.Profile.Points', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1179a6c0-03eb-41ed-8fd0-a07c00e66b9f', N'Buttons.Report', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd2983e96-0fa1-431a-80b6-a07c00e6c81f', N'Members.Profile.Age', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'eb059a3d-4cae-4886-80ed-a07c00e6e965', N'Members.Profile.Location', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'cd07789f-e534-4bc1-a060-a07c00e6f779', N'Members.Profile.Website', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5e083b95-b6de-47fd-9f10-a07c00e7041f', N'Members.Profile.Twitter', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'152a0563-f933-40a9-9336-a07c00e70cbc', N'Members.Profile.Facebook', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'a28b8858-8856-445d-b63d-a07c00e78e91', N'Members.Profile.DiscussionActivity', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f0f212db-29e9-4fbe-a05f-a07c00e7bcc8', N'Ajax.PleaseWait', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3b1982ff-1d16-470f-bef9-a07c00e7f67f', N'Members.Profile.Badges', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'59771dcb-6bbd-44ef-b5a2-a07c00ea2aff', N'Members.EditProfile', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'52a64880-2a19-499e-b941-a07c00ea665b', N'Buttons.Save', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2d24595b-2f19-4822-9c6c-a07c00eaa035', N'Members.EditMember', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'9b73fe32-d814-4796-b779-a07c00eb8a19', N'Leaderboard.ThisWeeksStars', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'34fdaae8-5992-4c7d-b20e-a07c00eb9662', N'Leaderboard.ThisYearsStars', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'87390e57-4677-47c3-ac44-a07c00ec65ee', N'Leaderboard.LeaderboardTitle', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'265a1ec1-0e1d-4331-87e3-a07c00ec990b', N'Home.LatestDiscussions', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2618f9c4-3844-4f1a-88e8-a07c00ecc2ba', N'Home.Rss', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'edc3fa6c-ef8b-4805-bc65-a07c00ed45cf', N'Activity.ActivityTitle', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2ae30f9a-7e3e-434f-b5d2-a07c00ee6003', N'Notification.SubscribeByEmail', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1445efdc-e157-45e4-b6eb-a07c00ee67e0', N'Notification.UnSubscribeByEmail', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3645297a-f123-42a8-a39e-a07c00ee71ac', N'Notification.Subscribe', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'fb0cd3f6-b42a-41f9-a39c-a07c00ee8187', N'Notification.UnSubscribe', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'4380f7b7-058f-4f93-a6ec-a07c00ef9890', N'Category.NoDiscussions', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'416897b6-a99b-4c02-a295-a07c00f041b1', N'Category.CategoriesSideHeading', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'45bff644-ecab-4d1c-940c-a07c00f621c2', N'PM.RecipientUsername', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'65da8826-b66a-411e-a530-a07c00f63d0e', N'PM.MessageSubject', NULL, CAST(0xD7350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1c23aff7-de84-4bed-927f-a07d00850c4b', N'Post.Label.TopicName', NULL, CAST(0xD8350B00 AS Date))
GO
print 'Processed 100 total records'
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'8529008e-3b1a-410c-a559-a07d0085761b', N'Post.Label.IsStickyTopic', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'869a449c-089b-4e3d-b99f-a07d0085856c', N'Post.Label.LockTopic', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'98cb8c72-1cde-474c-8ebb-a07d008595c9', N'Post.label.TopicCategory', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'01266b3d-6995-41c2-bc6a-a07d00869c42', N'Members.Label.Username', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1f3410f9-92a7-45cb-92be-a07d0086a626', N'Members.Label.EmailAddress', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2ae582ec-d39c-4182-aa6e-a07d0086aeda', N'Members.Label.Password', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bd259562-2bcb-4f39-81b6-a07d0086bcf2', N'Members.Label.ConfirmPassword', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ee93d63f-881e-43a6-8f06-a07d0086cdd6', N'Members.Label.UserIsApproved', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'166fb49a-35c4-4d06-be7a-a07d0086d6d0', N'Members.Label.Comment', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'd8089833-6012-4455-9270-a07d00876eea', N'Members.Label.Roles', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'91c51189-9c04-4d69-9a12-a07d00877b58', N'Members.Label.Signature', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'861541a0-2dc2-44a6-80cb-a07d00878481', N'Members.Label.Age', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5c352ddd-f6a4-4785-b96b-a07d008793e6', N'Members.Label.Location', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3e956605-4473-4e47-86d5-a07d00879bd0', N'Members.Label.Website', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3bc68372-216b-4547-a311-a07d0087a68b', N'Members.Label.Twitter', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'27209626-b25f-4062-aaa7-a07d0087b00d', N'Members.Label.Facebook', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'579796e4-3189-4d43-a7ec-a07d00882b3b', N'Members.Label.RememberMe', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f543b042-ad6c-4780-ba21-a07d0088456d', N'Members.Label.Users', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'91b368df-569c-4285-a707-a07d00885901', N'Members.Label.DateJoined', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'88aa0457-585d-4ed5-b62c-a07d008c59be', N'Errors.NoAccess', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'28e2e240-872d-41c8-850c-a07d00900b17', N'Errors.GenericMessage', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'6f7fad84-1319-4036-98af-a07d009092fe', N'Errors.NoPermission', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'46daabdb-33a0-49ab-a15d-a07d009154fc', N'Topic.Notification.NewTopics', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'4beb59b1-96fe-4b66-9a69-a07d00920b4c', N'Topic.Notification.Subject', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'715c0757-5f9b-422d-8379-a07d00944f83', N'PM.SendingToQuickly', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'7a243759-672d-4cd6-8b6c-a07d0094ade6', N'PM.SentItemsOverCapcity', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e7fbcf43-b162-46ae-894c-a07d0094b7c1', N'PM.ReceivedItemsOverCapcity', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'183004a9-f4b7-4e1f-aad2-a07d00956fdb', N'PM.MessageSent', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'22076756-bbbe-422d-ba17-a07d0095b87c', N'PM.UnableFindMember', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e280c6fb-8df0-4315-a011-a07d0095ecc5', N'PM.TalkToSelf', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c047e891-d74d-4b94-a252-a07d0096d265', N'Post.Updated', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bd0d4c8f-4d55-403e-8c88-a07d0097611e', N'Topic.Deleted', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'6984665e-f1a4-405b-aee6-a07d0097688a', N'Post.Deleted', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1a249cc4-c27d-4f96-bfb4-a07d009d352a', N'Post.Notification.NewPosts', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'114ae2e7-ff0a-40c2-86e5-a07d009f6fe3', N'Post.Notification.Subject', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b9ec2acc-b5e7-4dc0-b64b-a07d009fccde', N'Report.ReportSent', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'83999958-1e1c-4fd5-9e11-a07d00a02cec', N'Members.NowRegistered', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bc793500-c57e-4e79-abbd-a07d00a03753', N'Members.NowRegisteredNeedApproval', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1680e716-6f34-4f36-85cc-a07d00a0bdb1', N'Members.NowLoggedIn', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'50067d0c-ebac-4e4d-a67c-a07d00a103d2', N'Members.Errors.PasswordIncorrect', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f5073689-8b23-479b-919b-a07d00a10ea4', N'Members.Errors.PasswordAttemptsExceeded', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'dee0939c-fea5-4eb4-9ba0-a07d00a130b3', N'Members.Errors.UserLockedOut', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'37ae054e-392b-482b-8461-a07d00a13fcd', N'Members.Errors.UserNotApproved', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'db98c173-d19c-4147-a4fd-a07d00a15960', N'Members.Errors.LogonGeneric', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'480c7d5c-ab53-4ca3-8e0e-a07d00a2109c', N'Members.NowLoggedOut', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'55fa6036-139f-47f2-ae03-a07d00a257b5', N'Member.ProfileUpdated', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'917c9015-04b5-47fd-a945-a07d00a30646', N'Language.Changed', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'18bcfc49-cbcc-4acd-8857-a07d00a34ee6', N'Rss.LatestActivity.Title', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'81c1fe39-083c-4af7-97c2-a07d00a3565c', N'Rss.LatestActivity.Description', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'889b070b-8d51-427e-9879-a07d00a432e5', N'Errors.NothingToDisplay', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'339a9eab-d6e0-4a46-9f1b-a07d00a477ac', N'Rss.Category.Title', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2adc3d84-85bb-4014-8066-a07d00a483e2', N'Rss.Category.Description', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'34aeedba-e1c9-42a9-a385-a07d00a5f8ee', N'Report.Reporter', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'59a5319d-e85b-48b3-8484-a07d00a604a1', N'Report.MemberReported', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'4449670b-95d2-4e1d-9f32-a07d00a60d6c', N'Report.Reason', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5e6d1884-abd2-4f8c-b914-a07d00a61f1e', N'Report.MemberReport', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'fc6881b7-a098-4e72-87d1-a07d00a6295b', N'Report.Admin', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b9a11a4c-33eb-4ee2-a8aa-a07d00a63ca5', N'Report.PostReported', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c93fcf84-6f59-42ea-bcb9-a07d00a656ce', N'Report.PostReport', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ffb647c6-c840-4bf8-9da9-a07d00e28252', N'Badges.UnableToAward', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'607ebe0d-978b-4184-8c5a-a07d00e3f866', N'Badge.UnknownBadge', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'6f00aebd-9b51-4dd1-9f05-a07d00e448ed', N'Badge.BadegEnumNoClass', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c4f6d7e6-f071-475c-86b4-a07d00e63323', N'Members.Errors.DuplicateUserName', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'618dec61-e899-414b-be0b-a07d00e642dc', N'Members.Errors.DuplicateEmail', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'db475ae9-f449-4e63-a0cd-a07d00e64d3a', N'Members.Errors.InvalidPassword', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5c5dc092-626c-439c-b975-a07d00e6587d', N'Members.Errors.InvalidEmail', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e3994c69-4789-454c-b398-a07d00e66523', N'Members.Errors.InvalidAnswer', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'72027798-d491-439e-827b-a07d00e67090', N'Members.Errors.InvalidQuestion', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5e6cd9f4-b657-4d03-8337-a07d00e67eea', N'Members.Errors.InvalidUserName', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e2eec44c-de6e-488f-8b40-a07d00e68a6a', N'Members.Errors.ProviderError', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'bdcbc351-774c-4d97-9d13-a07d00e696c5', N'Members.Errors.UserRejected', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'49efd041-def5-4243-b497-a07d00e6a2e9', N'Members.Errors.Unknown', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ec18dfd0-4dcd-4b9b-9855-a07d00e85592', N'Members.NewMemberRegistered', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'73c5f8ed-a587-478a-a24f-a07d00e860b8', N'Members.Admin', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e5969723-e1e6-4803-a7a8-a07d00e87419', N'Members.NewMemberSubject', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'0669381e-e0fa-4392-9e6f-a07d00e9251e', N'Members.CantUnlock', NULL, CAST(0xD8350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'7d4c4fbe-34a7-458c-8978-a08300e547cb', N'Members.ForgotPassword.Email', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'1a99434e-d657-4be2-8080-a08300e5c2be', N'Members.ForgotPassword.Subject', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'56699a52-8723-471c-b88a-a08300e60092', N'Members.ForgotPassword.SuccessMessage', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'367dc448-1e3f-4644-a881-a08300e60ff3', N'Members.ForgotPassword.ErrorMessage', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'cdac17fe-917c-43a9-a57c-a08300e66f5f', N'Members.ChangePassword.Success', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3dc9fea5-3247-4352-ba81-a08300e675b4', N'Members.ChangePassword.Error', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'0c1bbc23-5d17-4abc-9167-a08300e6cede', N'Buttons.ChangePassword', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'65e2ab35-bc58-4191-9339-a08300e72add', N'Members.ChangePassword.Title', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'c7868d6a-800e-4f48-8517-a08300e759be', N'Members.ChangePassword.Text', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'5421f5e9-027c-449c-acfb-a08300e8e792', N'Members.ChangePassword.Link', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'39b9fed9-f78a-44f9-9308-a08300ea5970', N'Members.ForgotPassword.Title', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'f0dd2118-2b5d-4cb5-94d7-a08300ea9bde', N'Buttons.ResetPassword', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'3a989ca5-58e9-4d18-9a1e-a08300ead313', N'Members.ForgotPassword.Link', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ccf38e76-ce75-43ca-843e-a08300eb33fc', N'Members.Label.CurrentPassword', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'4b6b0155-aedb-4806-9939-a08300eb54be', N'Members.Label.NewPassword', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'23b7dc0f-cbeb-4bc5-b7c7-a08300eb7894', N'Members.Label.ConfirmNewPassword', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'381c438b-84ad-40e5-bb67-a08300eba46c', N'Members.Label.EmailAddressBlank', NULL, CAST(0xDE350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'ff319137-60c5-4ea9-9e2d-a08400a38506', N'Activity.Badge', NULL, CAST(0xDF350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e61277c2-d79f-43fe-8152-a08400a39f1e', N'Activity.UserAwardedBadge', NULL, CAST(0xDF350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e035a120-9f2f-47fb-a875-a08400a3c032', N'Activity.UserJoined', NULL, CAST(0xDF350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'784359cd-9323-470a-b2cd-a08400a3cba6', N'Activity.ProfileUpdated', NULL, CAST(0xDF350B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'e2fe9d74-98c8-41cc-ba33-a0b3008a2a85', N'Topic.Label.SubscribeToTopic', NULL, CAST(0x0E360B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'2d153309-2ffc-4ce8-adff-a0b300f68f02', N'Badges.PageTitle', NULL, CAST(0x0E360B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b8070e4a-7f90-4847-bc1e-a0b300f6ac67', N'Layout.Nav.Badges', NULL, CAST(0x0E360B00 AS Date))
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'0aac4e8c-66eb-4370-882b-a0f80091130c', N'Topic.Label.TopicTitle', NULL, CAST(0x53360B00 AS Date))
GO
print 'Processed 200 total records'
INSERT [dbo].[LocaleResourceKey] ([Id], [Name], [Notes], [DateAdded]) VALUES (N'b37a13db-f4e4-457c-9e45-a0fc006f294a', N'Members.LoginOrText', NULL, CAST(0x57360B00 AS Date))
/****** Object:  Table [dbo].[Language]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LanguageCulture] [nvarchar](20) NOT NULL,
	[FlagImageFileName] [nvarchar](50) NULL,
	[RightToLeft] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Language] ([Id], [Name], [LanguageCulture], [FlagImageFileName], [RightToLeft]) VALUES (N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'English', N'en-GB', NULL, 0)
/****** Object:  Table [dbo].[Permission]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'5f11cce9-4202-4c83-86a3-26cea1e466b7', N'Read Only')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'a9b7a3d9-8597-41d8-9ad9-346e0724ea46', N'Delete Posts')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'21a90e55-36da-4c08-a912-6df6ec15066b', N'Edit Posts')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'15fa2c6c-5ea8-4878-9a7e-7381060eddd0', N'Sticky Topics')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'3395888a-8280-47ee-9e7a-a067009a4a19', N'Lock Topics')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'08ad0bc2-4f14-4278-9d31-a1070106d401', N'Vote In Polls')
INSERT [dbo].[Permission] ([Id], [Name]) VALUES (N'86fa0e78-a054-436d-a74c-df72cc8057be', N'Deny Access')
/****** Object:  Table [dbo].[Badge]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badge](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'2ac1fc11-2f9e-4d5a-9df4-29715f10b6d1', N'PosterVoteUp', N'This badge is awarded to users after they receive their first vote up from another user.', N'VoteUp', N'PosterVoteUpBadge.png', N'First Vote Up Received')
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'52284d2b-7ed6-4154-9ccc-3a7d99b18cca', N'MemberForAYear', N'This badge is awarded to a user after their first year anniversary.', N'Time', N'MemberForAYearBadge.png', N'Member For A Year')
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'9a247d50-35b5-4cd2-adaa-a0cf013325ac', N'PostContainsUmbraco', N'This badge is awarded to a user who mentions Umbraco in their latest post.', N'Post', N'MentionsUmbracoBadge.png', N'Mentioned Umbraco In A Post Or Topic')
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'8250f9f0-84d2-4dff-b651-c3df9e12bf2a', N'PosterMarkAsSolution', N'This badge is awarded to the poster of a post marked as the topic answer, the first time they author an answer.', N'MarkAsSolution', N'PosterMarkAsSolutionBadge.png', N'Post Selected As Answer')
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'c9913ee2-b8e0-4543-8930-c723497ee65c', N'UserVoteUp', N'This badge is awarded to users after they make their first vote up.', N'VoteUp', N'UserVoteUpBadge.png', N'You''ve Given Your First Vote Up')
INSERT [dbo].[Badge] ([Id], [Name], [Description], [Type], [Image], [DisplayName]) VALUES (N'd68c289a-e3f7-4f55-ae4f-fc7ac2147781', N'AuthorMarkAsSolution', N'This badge is awarded to topic authors the first time they have a post marked as the answer.', N'MarkAsSolution', N'UserMarkAsSolutionBadge.png', N'Your Question Solved')
/****** Object:  Table [dbo].[Activity]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id] [uniqueidentifier] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll](
	[Id] [uniqueidentifier] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Poll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipUsersInRoles]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUsersInRoles](
	[RoleIdentifier] [uniqueidentifier] NOT NULL,
	[UserIdentifier] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MembershipUsersInRoles] ([RoleIdentifier], [UserIdentifier]) VALUES (N'ecf04365-021e-45fb-82f7-b0956c964019', N'afe9517a-2139-40ca-a7f4-a02800e572a4')
/****** Object:  Table [dbo].[MembershipUserPoints]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUserPoints](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Points] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_MembershipUser_Points] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipUser_Badge]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUser_Badge](
	[Badge_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryPermissionForRole]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryPermissionForRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Permission_Id] [uniqueidentifier] NOT NULL,
	[MembershipRole_Id] [uniqueidentifier] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[IsTicked] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryPermissionForRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CategoryPermissionForRole] ([Id], [Permission_Id], [MembershipRole_Id], [Category_Id], [IsTicked]) VALUES (N'5b2c65c8-2df5-43aa-b6c1-a0d4008a1191', N'86fa0e78-a054-436d-a74c-df72cc8057be', N'fbf4f43e-1e03-42da-9eec-a03b00900afa', N'f5eaaace-74d4-4cba-ab2d-a08400cfc7f5', 0)
/****** Object:  Table [dbo].[CategoryNotification]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryNotification](
	[Id] [uniqueidentifier] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CategoryNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BadgeTypeTimeLastChecked]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BadgeTypeTimeLastChecked](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[BadgeType] [nvarchar](50) NOT NULL,
	[TimeLastChecked] [datetime] NOT NULL,
 CONSTRAINT [PK_BadgeTypeTimeLastChecked] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocaleStringResource]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleStringResource](
	[Id] [uniqueidentifier] NOT NULL,
	[Language_Id] [uniqueidentifier] NOT NULL,
	[LocaleResourceKey_Id] [uniqueidentifier] NOT NULL,
	[ResourceValue] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_LocaleStringResource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2aacbebd-b5f6-4632-9a7a-3851c8b8b534', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'45924c56-f2de-43c3-b183-a05300f99ca8', N'Register')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a74c0412-88f6-4c62-be32-a05500a674b8', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1e3e1eaf-1303-4170-b946-a05500a674b8', N'Log On')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ee0af184-aaaa-467c-8fdb-a05500a6ad54', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b418e381-fdf8-4e49-ac14-a05500a6ad54', N'Activity')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f1d9c79d-db3a-4b3d-86a6-a0550103fcd8', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ba566274-7986-4750-9340-a0550103fcd1', N'Leaderboard')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'50630fce-7062-43f8-921b-a05a0097754f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'cc127418-c9c5-4bb9-b27f-a05a0097754a', N'Home')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2c50650f-5196-4391-a8d2-a07c00b87764', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b807e795-1164-49a3-8f76-a07c00b87764', N'Admin')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ad7bcf79-5523-4aa6-b4b7-a07c00b90de5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'98e02fe2-4161-4e79-bab7-a07c00b90de0', N'New Discussion')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f4c34a0f-e942-46c2-8d1c-a07c00b942b0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'13b8049d-660c-4016-81de-a07c00b942b0', N'Powered by ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3351b552-61c5-4bc9-9fc5-a07c00c8daf2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b514dd86-927f-44a5-8a8e-a07c00c8daed', N'Votes')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3cb24361-3721-42c0-9843-a07c00c91969', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd4dbc7ac-769c-4573-bed9-a07c00c91969', N'Comments')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'bb552d3e-1690-4054-8197-a07c00d06556', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bb87d608-5c5d-4222-b63f-a07c00d06556', N'Started {0} by {1}')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c7e2bd67-d615-4a75-ab0f-a07c00d12129', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'22b55b24-3f50-4019-9f74-a07c00d12129', N' in ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f2c2e9c2-e214-47c7-89c4-a07c00d1fe8b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b6cdd25d-328d-4121-84ee-a07c00d1fe8b', N'Latest By')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b9cfd874-3fa3-4693-8fcc-a07c00d38fdf', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c95ec48c-4196-45c2-884d-a07c00d38fdf', N'Views')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c10971ba-96c3-4f76-857a-a07c00d422cb', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'65ac91f4-d430-4851-a9eb-a07c00d422cb', N'Vote Up')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'44d9db52-7987-4285-b30e-a07c00d42ff0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'85e7f11f-d211-4573-92d7-a07c00d42ff0', N'Vote Down')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'295b8186-1f86-41db-a74d-a07c00d4395a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c3b82cff-64fb-4025-a55c-a07c00d4395a', N'Is Solution')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1e36f516-a4c2-44d6-87c1-a07c00d4b3a3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e962fb97-5b91-43c1-bc58-a07c00d4b3a3', N'posted this')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'319a1b3a-d310-407c-930d-a07c00d4d1b1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c1414123-0490-4f39-9900-a07c00d4d1b1', N'Posts')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'71a1ebc6-1599-4651-9eb1-a07c00d4dea7', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd2727cb8-82de-4fec-8fd3-a07c00d4dea7', N'Points')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4e32c36f-47e2-46ab-8dd4-a07c00d573a1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'872f4f64-74b4-4bf4-a339-a07c00d573a1', N'Last edited')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1c7a053f-9ffd-474d-b1f5-a07c00d5f4aa', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'8fd5d1ed-b7c9-4f1b-a8c9-a07c00d5f4aa', N'Report')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd8127405-ece8-474a-96af-a07c00d6601f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'07366f2f-d39f-4edf-8f11-a07c00d6601f', N'Edit')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1460f04f-cc7c-4c20-9ec5-a07c00d6689f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'46ea810f-6a0e-4f9f-a5a3-a07c00d6689f', N'Delete')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'53d81d48-f181-4f65-83c0-a07c00d703e3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ca0575eb-9b8e-40ac-b3ef-a07c00d703e3', N'Log On')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'9fbf2294-5698-4335-9893-a07c00d70b16', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f955b313-443d-46ae-8cb5-a07c00d70b16', N'Log Off')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ecdc0dcf-24b3-47d3-8e22-a07c00d775f1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd204de6a-1b3e-4f6f-a694-a07c00d775f1', N'Please Wait...')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'364e05a8-c567-4d58-aeb2-a07c00d7f48a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'68f707bf-b819-4f4d-9714-a07c00d7f48a', N'Discussions Tagged With: ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a29951f3-e06c-4101-8548-a07c00d85f31', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'af51390d-5cfc-4398-87a0-a07c00d85f31', N'Discussion Topic')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'331b3b71-98f4-48bd-a3df-a07c00d89c75', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'939bb6b7-fe9f-4826-b353-a07c00d89c75', N'Subscribe')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'93beee3b-0ece-4a10-a83a-a07c00d8a383', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'13e91d26-d157-4799-be64-a07c00d8a383', N'Unsubscribe')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'fb81ac04-a3ad-4fe9-8dbc-a07c00d90d74', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'46ac6414-eafc-418a-8f72-a07c00d90d74', N'Topic Is Locked')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'45a1518f-e78c-4ad8-b1e9-a07c00d95885', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'552861fc-066e-4e61-a47f-a07c00d95885', N'Create Discussion')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3d090395-55a1-4b7f-8025-a07c00d9c166', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2bd357bf-c6c1-4352-b8eb-a07c00d9c166', N'Tag this topic')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'dc351c08-bcbf-48f1-aae7-a07c00d9fabf', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'8f33341b-f228-4015-99b8-a07c00d9fabf', N'Popular Tags')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b1a39085-d3ed-42ed-8891-a07c00da4733', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'9e627423-35b2-45c6-a408-a07c00da4733', N'Our {0} members have posted {1} times in {2} discussions')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'46c984d7-35dc-4d8d-bf60-a07c00daf054', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c901e40a-8c2a-4f57-b8e9-a07c00daf054', N'Latest Members:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'56d643ee-6d11-4186-a835-a07c00dbcb1e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ebd7921d-a287-4c65-91df-a07c00dbcb19', N'Message: ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd2534f22-5efc-4b3c-91bd-a07c00dbf6b3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'a8970f38-02ed-4932-857c-a07c00dbf6b3', N'From: ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b6c0ac26-d5b8-4590-bcc1-a07c00dbfc5e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c8304567-2a7d-47ce-8090-a07c00dbfc5e', N'Sent:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'03d808ba-b7cc-4574-803a-a07c00dc45b1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'433d8780-b00b-4580-8efb-a07c00dc45b1', N'Back To Inbox')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b6805cbd-30ce-434c-b350-a07c00dc51d9', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2396d532-e54a-4338-8b10-a07c00dc51d9', N'Reply')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1f1daed2-ae68-499c-b3b4-a07c00dcadf0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f70ae9b1-03df-48f1-a676-a07c00dcadf0', N'Sent Private Messages')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2195832d-faf4-4e70-8361-a07c00dce344', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ff8ba140-c90e-4dbc-b05a-a07c00dce344', N'To')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'52e7b241-33ff-4f90-bba8-a07c00dcea6a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2fd3523b-07cb-429a-a6cc-a07c00dcea6a', N'Subject')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'da0d094b-917e-4ac8-b450-a07c00dcf190', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2dfd430c-2988-4e4c-8107-a07c00dcf190', N'Date')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f06f1a54-807f-440e-94c1-a07c00dcfc67', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd6fdb15b-948f-4076-a7ff-a07c00dcfc67', N'Read')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'de43e01e-65d6-457b-be4d-a07c00dd0803', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1a9286f4-5d99-47d3-a6f4-a07c00dd0803', N'Delete')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2cf3ff6c-d580-46dc-828b-a07c00ddacd1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3ecc30ac-3d4b-462b-86db-a07c00ddacd1', N'You currently don''t have any private messages')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'713f359d-cd49-4ccb-b0b9-a07c00de0d42', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bc6c207c-120f-4abb-a3fc-a07c00de0d42', N'Create')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'fd432d04-11aa-46d0-a59f-a07c00de80fa', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'13aa795e-700d-4141-854f-a07c00de80fa', N'Received Private Messages')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0b161d89-9c83-4826-9ef9-a07c00df7f6d', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b8bf9cee-9c14-43fa-aa52-a07c00df7f6d', N'Create Private Message')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'74a3615c-8be7-4b81-bc13-a07c00dfc0ba', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'003ccd99-dbb4-49ac-9a8f-a07c00dfc0ba', N'Send')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'8f57d108-a07f-4b02-8ee7-a07c00dff0e5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c43a76d0-8209-4fed-b8c2-a07c00dff0e5', N'Original Message')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'9b221105-3086-47cc-94d7-a07c00e0356f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3da0c8de-8df1-40e7-bb4b-a07c00e0356f', N'Send')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'00c72190-1227-4413-b962-a07c00e06247', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e618204c-94bc-4bb6-a1a0-a07c00e06247', N'Report Post By: ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'12f431c3-8e61-4911-a357-a07c00e0f936', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'0bd7407a-72f3-41db-ab61-a07c00e0f936', N'Edit')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'461a6377-64d6-43f6-990e-a07c00e135b2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'a764245e-f3f5-445b-9714-a07c00e135b2', N'This Weeks High Earners')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'8266226a-e280-4495-8336-a07c00e188a6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'fff71034-d6ed-4982-a5bd-a07c00e188a6', N'My Tools')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b1c701cb-360c-4c34-9aba-a07c00e1cb61', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'56430e42-9125-4b15-82ed-a07c00e1cb61', N'PrivateMessages')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'78c40cc3-200b-4dbd-b901-a07c00e20749', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'95301cbc-66fc-41f1-875c-a07c00e20749', N'Search Members')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a66d78c8-b390-4b35-bb32-a07c00e26d97', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b4159cbd-3a00-4286-8f2a-a07c00e26d97', N'Search')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd1a78ed4-07e0-4dd3-9edf-a07c00e2a1db', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f82cc71b-ed5c-4016-843c-a07c00e2a1db', N'Users')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b760c35e-3929-4dc9-8539-a07c00e2ab94', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'51559a81-6697-439a-aec3-a07c00e2ab94', N'Points')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'74de089f-afc6-4314-a61e-a07c00e2b780', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b993f928-220a-429a-bc40-a07c00e2b780', N'Date Joined')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'e1e95243-56cf-4a99-b808-a07c00e35a00', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'6895a5ac-43b3-460a-a233-a07c00e35a00', N'Report ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'6a708c7a-2b09-4b01-95f1-a07c00e3c500', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'a48de0a2-7b2f-4743-aa81-a07c00e3c500', N'Register')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd034f3ad-209d-40f8-be02-a07c00e403df', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3c99d1b0-46d2-4d32-816d-a07c00e403df', N'You are already registered? Why would you want to do it again?')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'512194ba-2e07-4ed1-a2f3-a07c00e4a568', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'07e34c85-0b51-4a87-b44f-a07c00e4a568', N'Please enter your user name and password. Or {0} if you don''t have an account')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c5fcf0c1-0634-4375-aacc-a07c00e53737', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'80ff35b9-583f-41a2-9fa8-a07c00e53737', N'Log On')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b10c435d-aaa2-4797-a0a3-a07c00e575c6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5695cb9e-5abf-48df-a2f1-a07c00e575c6', N' Profile')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'60cd3a7a-620c-4d8d-9127-a07c00e5c623', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'4f80ffd9-2930-438c-9c63-a07c00e5c623', N'Joined:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3221dc94-1cc5-4a0d-93bc-a07c00e5d028', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b2ec4b66-4059-48ee-97ff-a07c00e5d028', N'Posts:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'78c27588-0a16-4580-8fa5-a07c00e5d870', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'6a845524-a045-476d-82eb-a07c00e5d870', N'Points:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0ace71cf-b6e6-4c9d-8792-a07c00e66b9f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1179a6c0-03eb-41ed-8fd0-a07c00e66b9f', N'Report')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7b5dfd93-de2c-4827-807c-a07c00e6c81f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd2983e96-0fa1-431a-80b6-a07c00e6c81f', N'Age:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'9af3c537-0936-4901-82f0-a07c00e6e965', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'eb059a3d-4cae-4886-80ed-a07c00e6e965', N'Location:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c9345a7e-d01a-4ed3-bde9-a07c00e6f779', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'cd07789f-e534-4bc1-a060-a07c00e6f779', N'Website')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'391995de-cfe2-41cc-9c5c-a07c00e7041f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5e083b95-b6de-47fd-9f10-a07c00e7041f', N'Twitter')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'11b95010-dca7-4ceb-a9a2-a07c00e70cc0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'152a0563-f933-40a9-9336-a07c00e70cbc', N'Facebook:')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1fee0a87-2958-4227-bab2-a07c00e78e91', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'a28b8858-8856-445d-b63d-a07c00e78e91', N'Discussion Activity')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'bdefcb90-7eb4-493d-9340-a07c00e7bcc8', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f0f212db-29e9-4fbe-a05f-a07c00e7bcc8', N'Please Wait...')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'af26e455-b340-47b2-91a5-a07c00e7f67f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3b1982ff-1d16-470f-bef9-a07c00e7f67f', N'Badges')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0d023ce6-ee74-4e07-aa01-a07c00ea2aff', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'59771dcb-6bbd-44ef-b5a2-a07c00ea2aff', N'Edit Profile')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'da5db774-7991-4375-a069-a07c00ea665b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'52a64880-2a19-499e-b941-a07c00ea665b', N'Save')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ab74fe58-7da6-4087-bfe2-a07c00eaa035', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2d24595b-2f19-4822-9c6c-a07c00eaa035', N'Edit Member')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'206ab41a-4f49-4bf2-88ab-a07c00eb8a19', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'9b73fe32-d814-4796-b779-a07c00eb8a19', N'This Weeks Stars')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f7b039ae-de77-4008-93fc-a07c00eb9662', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'34fdaae8-5992-4c7d-b20e-a07c00eb9662', N'This Years Rock Stars')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4620c4ce-73a1-4359-a8a8-a07c00ec65ee', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'87390e57-4677-47c3-ac44-a07c00ec65ee', N'Global Leaderboard')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'6ac42bcb-673c-4577-a828-a07c00ec990b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'265a1ec1-0e1d-4331-87e3-a07c00ec990b', N'Latest Discussions')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7a665c3b-93b5-4d8f-8eab-a07c00ecc2ba', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2618f9c4-3844-4f1a-88e8-a07c00ecc2ba', N'Rss')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd150d541-160a-421a-956a-a07c00ed45cf', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'edc3fa6c-ef8b-4805-bc65-a07c00ed45cf', N'Activity')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ffbb8daa-0eb5-4d9b-805f-a07c00ee6003', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2ae30f9a-7e3e-434f-b5d2-a07c00ee6003', N'Subscribe Via Email')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1fef43e1-c39d-4641-9ab1-a07c00ee67e0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1445efdc-e157-45e4-b6eb-a07c00ee67e0', N'Unsubscribe From Emails')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c5df799a-6c3d-4b1a-bdb9-a07c00ee71ac', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3645297a-f123-42a8-a39e-a07c00ee71ac', N'Subscribe')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1092a737-5ba1-4b0a-ae36-a07c00ee8187', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'fb0cd3f6-b42a-41f9-a39c-a07c00ee8187', N'UnSubscribe')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'81adc7e2-9280-441e-9b5d-a07c00ef9890', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'4380f7b7-058f-4f93-a6ec-a07c00ef9890', N'Currently no discussions in this category')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7ce8361a-ab48-4d9c-9d3b-a07c00f041b1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'416897b6-a99b-4c02-a295-a07c00f041b1', N'Categories')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'e55e2d82-1414-4e78-881b-a07c00f621c2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'45bff644-ecab-4d1c-940c-a07c00f621c2', N'Recipient Username')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0683af2a-90f1-477d-a8e6-a07c00f63d0e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'65da8826-b66a-411e-a530-a07c00f63d0e', N'Subject')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'20fa1fde-ca8c-49e5-b4e6-a07d00850c4f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1c23aff7-de84-4bed-927f-a07d00850c4b', N'Topic Name')
GO
print 'Processed 100 total records'
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'498cdd2f-f120-4a7a-b818-a07d0085761b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'8529008e-3b1a-410c-a559-a07d0085761b', N'Is Sticky Topic')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'59d5914d-8c2a-43cf-9e11-a07d0085856c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'869a449c-089b-4e3d-b99f-a07d0085856c', N'Lock Topic')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a6548e03-cf72-4924-94fb-a07d008595c9', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'98cb8c72-1cde-474c-8ebb-a07d008595c9', N'Topic Category')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'5467d13b-a92f-46bb-8fad-a07d00869c42', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'01266b3d-6995-41c2-bc6a-a07d00869c42', N'Username')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'eb2cb1a6-e70f-40fc-babe-a07d0086a626', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1f3410f9-92a7-45cb-92be-a07d0086a626', N'Email address (Used by Gravatar to show your Avatar image)')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0a22fccf-976c-4273-bb22-a07d0086aeda', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2ae582ec-d39c-4182-aa6e-a07d0086aeda', N'Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'08569b07-104f-43b6-b56e-a07d0086bcf2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bd259562-2bcb-4f39-81b6-a07d0086bcf2', N'Confirm Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a7981716-8e91-4465-b370-a07d0086cdd6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ee93d63f-881e-43a6-8f06-a07d0086cdd6', N'User is Approved')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'53ca22e0-5500-4315-8ec5-a07d0086d6d0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'166fb49a-35c4-4d06-be7a-a07d0086d6d0', N'Comment')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7ca79a47-4b6f-4f9e-af73-a07d00876eea', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'd8089833-6012-4455-9270-a07d00876eea', N'Roles')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a53317c6-2f79-41f2-ae18-a07d00877b58', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'91c51189-9c04-4d69-9a12-a07d00877b58', N'Signature')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f8142cbd-0e0b-4251-ba23-a07d00878481', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'861541a0-2dc2-44a6-80cb-a07d00878481', N'Age')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2d7fdfcb-8a1b-4134-8b39-a07d008793e6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5c352ddd-f6a4-4785-b96b-a07d008793e6', N'Location')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd03517ca-c4d7-4f32-9718-a07d00879bd0', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3e956605-4473-4e47-86d5-a07d00879bd0', N'Website')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'38efbaa3-349e-4ec1-8dee-a07d0087a68b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3bc68372-216b-4547-a311-a07d0087a68b', N'Twitter Url')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2b776a04-910d-4c30-92b1-a07d0087b00d', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'27209626-b25f-4062-aaa7-a07d0087b00d', N'Facebook Page')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0fdc4873-350c-4618-b95f-a07d00882b3b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'579796e4-3189-4d43-a7ec-a07d00882b3b', N'Remember Me?')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b7cbcda3-c016-41b9-99ad-a07d0088456d', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f543b042-ad6c-4780-ba21-a07d0088456d', N'Users')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd5d8de94-5055-48a9-a9a9-a07d00885901', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'91b368df-569c-4285-a707-a07d00885901', N'Date Joined')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'c8130342-a56c-4e60-9c26-a07d008c59be', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'88aa0457-585d-4ed5-b62c-a07d008c59be', N'No Access')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'cfd36321-862c-47ae-b638-a07d00900b17', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'28e2e240-872d-41c8-850c-a07d00900b17', N'Sorry an error occured')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2fd35f0a-f78c-4b9f-a7f2-a07d009092fe', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'6f7fad84-1319-4036-98af-a07d009092fe', N'You do not have permission to perform this action')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a5f44eb9-d9e2-4aa8-902a-a07d009154fc', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'46daabdb-33a0-49ab-a15d-a07d009154fc', N'A new topic has been created in the {0} category')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3d8f4716-dc5b-48f1-b0f1-a07d00920b4c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'4beb59b1-96fe-4b66-9a69-a07d00920b4c', N'New Discussion On ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'e99384d7-063b-4c62-a3e2-a07d00944f83', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'715c0757-5f9b-422d-8379-a07d00944f83', N'You are trying to send messages to quickly')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ff9f6bf3-268f-4f90-98ff-a07d0094ade6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'7a243759-672d-4cd6-8b6c-a07d0094ade6', N'Your sent items is over capacity, delete messages to be able to send')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4e25336e-ef35-471f-acb6-a07d0094b7c1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e7fbcf43-b162-46ae-894c-a07d0094b7c1', N'{0} has exceeded their inbox size, unable to send message')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'020fc201-1f30-44f6-b5fd-a07d00956fdb', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'183004a9-f4b7-4e1f-aad2-a07d00956fdb', N'Message Sent')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4f52489d-0378-425e-aef5-a07d0095b87c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'22076756-bbbe-422d-ba17-a07d0095b87c', N'Unable to find that member')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'16a13c33-ae62-42e7-bf8e-a07d0095ecc5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e280c6fb-8df0-4315-a011-a07d0095ecc5', N'Talking to yourself is a bit weird, isn''t it?')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'36a8079d-f692-4dea-ae11-a07d0096d265', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c047e891-d74d-4b94-a252-a07d0096d265', N'Post Updated')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'99ede750-b642-48fe-ab2e-a07d0097611e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bd0d4c8f-4d55-403e-8c88-a07d0097611e', N'Topic Deleted')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'46d33f36-1011-49d5-be00-a07d0097688a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'6984665e-f1a4-405b-aee6-a07d0097688a', N'Post Deleted')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'cb5a913e-c567-4ec8-8f25-a07d009d352a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1a249cc4-c27d-4f96-bfb4-a07d009d352a', N'A new post has been created in the {0} topic')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7c844c93-969e-4a2a-855d-a07d009f6fe3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'114ae2e7-ff0a-40c2-86e5-a07d009f6fe3', N'New Post On ')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f7ec6e9f-4e82-48d2-85eb-a07d009fccde', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b9ec2acc-b5e7-4dc0-b64b-a07d009fccde', N'Report Sent')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'58a8cb2a-49b4-4098-81ea-a07d00a02cec', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'83999958-1e1c-4fd5-9e11-a07d00a02cec', N'You are now registered')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4eb4189a-2b13-447e-b755-a07d00a03753', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bc793500-c57e-4e79-abbd-a07d00a03753', N'You are now registered, but the forum admin must authorise your account')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b1c5b6b6-4df2-4f7c-8659-a07d00a0bdb1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1680e716-6f34-4f36-85cc-a07d00a0bdb1', N'You are now logged in')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2a111cc0-7b0e-4dfd-b023-a07d00a103d2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'50067d0c-ebac-4e4d-a67c-a07d00a103d2', N'The user or password provided is incorrect.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'eb31b3ad-3fda-448f-acdd-a07d00a10ea4', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f5073689-8b23-479b-919b-a07d00a10ea4', N'The maximum number of password attempts has been exceeded.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'bd4d24a6-025c-4bdb-afee-a07d00a130b3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'dee0939c-fea5-4eb4-9ba0-a07d00a130b3', N'User is locked out.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a2f7988b-9b49-46e9-a70a-a07d00a13fcd', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'37ae054e-392b-482b-8461-a07d00a13fcd', N'User has not been approved.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'59502239-ed08-478c-90e4-a07d00a15960', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'db98c173-d19c-4147-a4fd-a07d00a15960', N'Unable to login.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'02fabb2e-35e1-4e69-b2db-a07d00a2109c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'480c7d5c-ab53-4ca3-8e0e-a07d00a2109c', N'You are now logged out')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'3dd4f6c8-b317-4223-b297-a07d00a257b5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'55fa6036-139f-47f2-ae03-a07d00a257b5', N'Profile Updated')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'83ea9daa-37ee-4f5f-8571-a07d00a30646', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'917c9015-04b5-47fd-a945-a07d00a30646', N'Language Changed')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'7ec85335-0aaa-4eef-ac01-a07d00a34ee6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'18bcfc49-cbcc-4acd-8857-a07d00a34ee6', N'Latest Forum Discussions')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'bb9ac346-ca33-4507-9b02-a07d00a3565c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'81c1fe39-083c-4af7-97c2-a07d00a3565c', N'Recent discussions')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd4773ccd-c6f0-4ee4-bbcf-a07d00a432e5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'889b070b-8d51-427e-9879-a07d00a432e5', N'Nothing To Display')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'63a03bed-606b-49d6-8948-a07d00a477ac', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'339a9eab-d6e0-4a46-9f1b-a07d00a477ac', N'{0} Discussions')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'23d24722-4769-46f0-8e39-a07d00a483e2', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2adc3d84-85bb-4014-8066-a07d00a483e2', N'Latest discussions happening in the {0} category')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4ddd05d2-3a6a-4866-8c67-a07d00a5f8ee', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'34aeedba-e1c9-42a9-a385-a07d00a5f8ee', N'Reporter')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b44f8c75-b91b-4505-adcd-a07d00a604a1', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'59a5319d-e85b-48b3-8484-a07d00a604a1', N'Member Reported')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'dcfa4c16-be92-4541-9f89-a07d00a60d6c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'4449670b-95d2-4e1d-9f32-a07d00a60d6c', N'Reason')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'adfb8da1-e10b-40d1-b078-a07d00a61f1e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5e6d1884-abd2-4f8c-b914-a07d00a61f1e', N'Member Report')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'dc4f860c-5c86-40c9-82c4-a07d00a6295b', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'fc6881b7-a098-4e72-87d1-a07d00a6295b', N'Admin')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a29370ae-76e6-49ba-8e8e-a07d00a63ca5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b9a11a4c-33eb-4ee2-a8aa-a07d00a63ca5', N'Post Reported In')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'baacba02-106a-47aa-889a-a07d00a656ce', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c93fcf84-6f59-42ea-bcb9-a07d00a656ce', N'Post Report')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1c30673c-49f9-49a8-872e-a07d00e28252', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ffb647c6-c840-4bf8-9da9-a07d00e28252', N'Unable to award badges as badge collection is null for user {0}')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a03c895d-aa69-4648-8668-a07d00e3f866', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'607ebe0d-978b-4184-8c5a-a07d00e3f866', N'Unknown badge type {0}')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'35ea4207-3645-47fd-8f1a-a07d00e448ed', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'6f00aebd-9b51-4dd1-9f05-a07d00e448ed', N'The badge enum type {0} has no corresponding class specified.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'5dc265df-5864-42f3-95cc-a07d00e63323', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c4f6d7e6-f071-475c-86b4-a07d00e63323', N'User name already exists. Please enter a different user name.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'68c2c756-8518-43bc-ad45-a07d00e642dc', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'618dec61-e899-414b-be0b-a07d00e642dc', N'A user name for that e-mail address already exists. Please enter a different e-mail address.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ec2e79e8-e316-4564-a9c6-a07d00e64d3a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'db475ae9-f449-4e63-a0cd-a07d00e64d3a', N'The password provided is invalid. Please enter a valid password value.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a7193181-5484-4dfc-9ab1-a07d00e6587d', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5c5dc092-626c-439c-b975-a07d00e6587d', N'The e-mail address provided is invalid. Please check the value and try again.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'dda2ab29-83a9-481f-a52e-a07d00e66523', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e3994c69-4789-454c-b398-a07d00e66523', N'The password retrieval answer provided is invalid. Please check the value and try again.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'0f6b1649-457f-4974-b3d4-a07d00e67090', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'72027798-d491-439e-827b-a07d00e67090', N'The password retrieval question provided is invalid. Please check the value and try again.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'742a4b32-1b52-49cc-b0d4-a07d00e67eea', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5e6cd9f4-b657-4d03-8337-a07d00e67eea', N'The user name provided is invalid. Please check the value and try again.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'9858fc7d-37fa-49e0-9930-a07d00e68a6a', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e2eec44c-de6e-488f-8b40-a07d00e68a6a', N'The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'12e36cc8-09df-4d71-9afa-a07d00e696c5', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'bdcbc351-774c-4d97-9d13-a07d00e696c5', N'The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a9a7ec1c-3d10-40d5-b47e-a07d00e6a2e9', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'49efd041-def5-4243-b497-a07d00e6a2e9', N'An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'513a9367-7753-4576-b250-a07d00e85592', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ec18dfd0-4dcd-4b9b-9855-a07d00e85592', N'New member registered on {0} ({1})')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'9acead76-ba38-4f14-a3af-a07d00e860b8', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'73c5f8ed-a587-478a-a24f-a07d00e860b8', N'Admin')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4c4af14a-38c6-4211-9ac9-a07d00e87419', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e5969723-e1e6-4803-a7a8-a07d00e87419', N'New Member Registered')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'347f6279-96c8-4881-b1b3-a07d00e9251e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'0669381e-e0fa-4392-9e6f-a07d00e9251e', N'User does not exist - cannot unlock.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'b7d56268-85ce-4af1-aa90-a08300e547cd', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'7d4c4fbe-34a7-458c-8978-a08300e547cb', N'You have requested that your password is reset on {0}, your new password is below')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'28bf8f25-0cf9-4fac-ac81-a08300e5c2be', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'1a99434e-d657-4be2-8080-a08300e5c2be', N'Password Reset')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f34426bc-4c0a-484e-85a9-a08300e60092', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'56699a52-8723-471c-b88a-a08300e60092', N'A new password has been emailed to you')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'41f2bc1b-b38a-4b95-b176-a08300e60ff3', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'367dc448-1e3f-4644-a881-a08300e60ff3', N'Error resetting password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'a47e1306-4301-4999-81e7-a08300e66f5f', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'cdac17fe-917c-43a9-a57c-a08300e66f5f', N'Password Changed')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'bc8c912b-d81c-4103-9d96-a08300e675b4', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3dc9fea5-3247-4352-ba81-a08300e675b4', N'The current password is incorrect or the new password is invalid.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'2eb4d105-3127-4158-9000-a08300e6cede', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'0c1bbc23-5d17-4abc-9167-a08300e6cede', N'Change Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'6b2a2bc6-4849-471f-80b3-a08300e72add', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'65e2ab35-bc58-4191-9339-a08300e72add', N'Change Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'af814031-a62a-44c8-85db-a08300e759be', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'c7868d6a-800e-4f48-8517-a08300e759be', N'New passwords are required to be a minimum of {0} characters in length.')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'5b35f0aa-f2e5-4af7-b1ea-a08300e8e792', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'5421f5e9-027c-449c-acfb-a08300e8e792', N'Click here if you want to {0}')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd43ebc89-abb9-44c2-bbc2-a08300ea5970', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'39b9fed9-f78a-44f9-9308-a08300ea5970', N'Forgot Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'1fcc800b-db46-4b2a-b1e0-a08300ea9bde', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'f0dd2118-2b5d-4cb5-94d7-a08300ea9bde', N'Reset Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'8184099f-3ab3-43e2-b29c-a08300ead313', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'3a989ca5-58e9-4d18-9a1e-a08300ead313', N'Forgot your password?')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'273b979a-711b-4125-aeb6-a08300eb33fd', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ccf38e76-ce75-43ca-843e-a08300eb33fc', N'Current Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'8380cd82-44e0-4dce-913a-a08300eb54be', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'4b6b0155-aedb-4806-9939-a08300eb54be', N'New Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'6fbd3667-c2ee-4cf3-b283-a08300eb7894', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'23b7dc0f-cbeb-4bc5-b7c7-a08300eb7894', N'Confirm New Password')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'4df48fdf-349d-4da5-871b-a08300eba46c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'381c438b-84ad-40e5-bb67-a08300eba46c', N'Enter your email address')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'466049c7-a3bd-489f-8a29-a08400a38506', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'ff319137-60c5-4ea9-9e2d-a08400a38506', N'badge')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'e1d5f2c2-b914-48a5-b847-a08400a39f1e', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e61277c2-d79f-43fe-8152-a08400a39f1e', N'has been awarded the')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'e93a3e97-e96f-4be1-b0b0-a08400a3c032', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e035a120-9f2f-47fb-a875-a08400a3c032', N'is a new member in the forum')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'904a5935-b957-4f5c-a9ec-a08400a3cba6', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'784359cd-9323-470a-b2cd-a08400a3cba6', N'has an updated profile')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'f8fd3eae-c0a0-4ec3-805d-a0b3008a2a80', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'e2fe9d74-98c8-41cc-ba33-a0b3008a2a85', N'Get notified of replies?')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'd132d602-f875-4ddc-8b48-a0b300f68efd', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'2d153309-2ffc-4ce8-adff-a0b300f68f02', N'Badges')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'20ae4513-760c-49c3-bb50-a0b300f6ac64', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b8070e4a-7f90-4847-bc1e-a0b300f6ac67', N'Badges')
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'206cffd7-4808-4f09-88d7-a0f800911311', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'0aac4e8c-66eb-4370-882b-a0f80091130c', N'Topic Title')
GO
print 'Processed 200 total records'
INSERT [dbo].[LocaleStringResource] ([Id], [Language_Id], [LocaleResourceKey_Id], [ResourceValue]) VALUES (N'ab07ae9e-4d31-4fe5-96e4-a0fc006f294c', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', N'b37a13db-f4e4-457c-9e45-a0fc006f294a', N'Or')
/****** Object:  Table [dbo].[Topic]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Solved] [bit] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[Post_Id] [uniqueidentifier] NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Views] [int] NULL,
	[IsSticky] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[Poll_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [uniqueidentifier] NOT NULL,
	[ForumName] [nvarchar](500) NULL,
	[ForumUrl] [nvarchar](500) NULL,
	[IsClosed] [bit] NULL,
	[EnableRSSFeeds] [bit] NULL,
	[DisplayEditedBy] [bit] NULL,
	[EnablePostFileAttachments] [bit] NULL,
	[EnableMarkAsSolution] [bit] NULL,
	[EnableSpamReporting] [bit] NULL,
	[EnableMemberReporting] [bit] NULL,
	[EnableEmailSubscriptions] [bit] NULL,
	[ManuallyAuthoriseNewMembers] [bit] NULL,
	[EmailAdminOnNewMemberSignUp] [bit] NULL,
	[TopicsPerPage] [int] NULL,
	[PostsPerPage] [int] NULL,
	[EnablePrivateMessages] [bit] NULL,
	[MaxPrivateMessagesPerMember] [int] NULL,
	[PrivateMessageFloodControl] [int] NULL,
	[EnableSignatures] [bit] NULL,
	[EnablePoints] [bit] NULL,
	[PointsAllowedToVoteAmount] [int] NULL,
	[PointsAddedPerPost] [int] NULL,
	[PointsAddedPostiveVote] [int] NULL,
	[PointsAddedForSolution] [int] NULL,
	[PointsDeductedNagativeVote] [int] NULL,
	[AdminEmailAddress] [nvarchar](100) NULL,
	[NotificationReplyEmail] [nvarchar](100) NULL,
	[SMTP] [nvarchar](100) NULL,
	[SMTPUsername] [nvarchar](100) NULL,
	[SMTPPort] [nvarchar](10) NULL,
	[SMTPEnableSSL] [bit] NULL,
	[SMTPPassword] [nvarchar](100) NULL,
	[Theme] [nvarchar](100) NULL,
	[NewMemberStartingRole] [uniqueidentifier] NULL,
	[DefaultLanguage_Id] [uniqueidentifier] NOT NULL,
	[ActivitiesPerPage] [int] NULL,
	[EnableAkisment] [bit] NULL,
	[AkismentKey] [nvarchar](100) NULL,
	[CurrentDatabaseVersion] [nvarchar](10) NULL,
	[SpamQuestion] [nvarchar](500) NULL,
	[SpamAnswer] [nvarchar](500) NULL,
	[EnableSocialLogins] [bit] NULL,
	[EnablePolls] [bit] NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Settings] ([Id], [ForumName], [ForumUrl], [IsClosed], [EnableRSSFeeds], [DisplayEditedBy], [EnablePostFileAttachments], [EnableMarkAsSolution], [EnableSpamReporting], [EnableMemberReporting], [EnableEmailSubscriptions], [ManuallyAuthoriseNewMembers], [EmailAdminOnNewMemberSignUp], [TopicsPerPage], [PostsPerPage], [EnablePrivateMessages], [MaxPrivateMessagesPerMember], [PrivateMessageFloodControl], [EnableSignatures], [EnablePoints], [PointsAllowedToVoteAmount], [PointsAddedPerPost], [PointsAddedPostiveVote], [PointsAddedForSolution], [PointsDeductedNagativeVote], [AdminEmailAddress], [NotificationReplyEmail], [SMTP], [SMTPUsername], [SMTPPort], [SMTPEnableSSL], [SMTPPassword], [Theme], [NewMemberStartingRole], [DefaultLanguage_Id], [ActivitiesPerPage], [EnableAkisment], [AkismentKey], [CurrentDatabaseVersion], [SpamQuestion], [SpamAnswer], [EnableSocialLogins], [EnablePolls]) VALUES (N'367162b2-6b27-4834-9178-77abeabdb04d', N'MVC Forum v1.1', N'http://www.mydomain.com', 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 20, 20, 1, 50, 1, 0, 1, 1, 1, 2, 4, 2, N'my@email.com', N'noreply@myemail.com', NULL, NULL, NULL, 0, NULL, N'Metro', N'fbf4f43e-1e03-42da-9eec-a03b00900afa', N'629cde2e-11d5-41dd-80fd-ca20bdc9dc17', 20, 0, NULL, NULL, NULL, NULL, 0, 1)
/****** Object:  Table [dbo].[PrivateMessage]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivateMessage](
	[Id] [uniqueidentifier] NOT NULL,
	[UserTo_Id] [uniqueidentifier] NOT NULL,
	[UserFrom_Id] [uniqueidentifier] NOT NULL,
	[DateSent] [datetime] NOT NULL,
	[Subject] [nvarchar](80) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[IsRead] [bit] NOT NULL,
 CONSTRAINT [PK_PrivateMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[PostContent] [ntext] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[VoteCount] [int] NOT NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[DateEdited] [datetime] NULL,
	[IsSolution] [bit] NOT NULL,
	[IsTopicStarter] [bit] NULL,
	[FlaggedAsSpam] [bit] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicNotification]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicNotification](
	[Id] [uniqueidentifier] NOT NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic_Tag]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic_Tag](
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[TopicTag_Id] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollAnswer]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollAnswer](
	[Id] [uniqueidentifier] NOT NULL,
	[Answer] [nvarchar](600) NOT NULL,
	[Poll_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PollAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Post_Id] [uniqueidentifier] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollVote]    Script Date: 11/12/2012 17:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollVote](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[PollAnswer_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PollVote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Category_SortOrder]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
/****** Object:  Default [DF_Category_IsLocked]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_CategoryPermissionForRole_HasPermission]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole] ADD  CONSTRAINT [DF_CategoryPermissionForRole_HasPermission]  DEFAULT ((0)) FOR [IsTicked]
GO
/****** Object:  Default [DF_Poll_IsClosed]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Poll] ADD  CONSTRAINT [DF_Poll_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
/****** Object:  Default [DF_Post_VoteCount]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_VoteCount]  DEFAULT ((0)) FOR [VoteCount]
GO
/****** Object:  Default [DF_Post_IsApproved]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsApproved]  DEFAULT ((0)) FOR [IsSolution]
GO
/****** Object:  Default [DF_Post_IsTopicStarter]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsTopicStarter]  DEFAULT ((0)) FOR [IsTopicStarter]
GO
/****** Object:  Default [DF_PrivateMessage_IsRead]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PrivateMessage] ADD  CONSTRAINT [DF_PrivateMessage_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_Topic_Solved]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_Solved]  DEFAULT ((0)) FOR [Solved]
GO
/****** Object:  Default [DF_Topic_IsSticky]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_IsSticky]  DEFAULT ((0)) FOR [IsSticky]
GO
/****** Object:  Default [DF_Topic_IsLocked]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  ForeignKey [FK_BadgeTypeTimeLastChecked_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[BadgeTypeTimeLastChecked]  WITH NOCHECK ADD  CONSTRAINT [FK_BadgeTypeTimeLastChecked_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[BadgeTypeTimeLastChecked] NOCHECK CONSTRAINT [FK_BadgeTypeTimeLastChecked_MembershipUser]
GO
/****** Object:  ForeignKey [FK_CategoryNotification_Category]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryNotification]  WITH CHECK ADD  CONSTRAINT [FK_CategoryNotification_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryNotification] CHECK CONSTRAINT [FK_CategoryNotification_Category]
GO
/****** Object:  ForeignKey [FK_CategoryNotification_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryNotification]  WITH CHECK ADD  CONSTRAINT [FK_CategoryNotification_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[CategoryNotification] CHECK CONSTRAINT [FK_CategoryNotification_MembershipUser]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_Category]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_Category]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_MembershipRole]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_MembershipRole] FOREIGN KEY([MembershipRole_Id])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_MembershipRole]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_Permission]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_Permission] FOREIGN KEY([Permission_Id])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_Permission]
GO
/****** Object:  ForeignKey [FK_LocaleStringResource_Language]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[LocaleStringResource]  WITH NOCHECK ADD  CONSTRAINT [FK_LocaleStringResource_Language] FOREIGN KEY([Language_Id])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[LocaleStringResource] NOCHECK CONSTRAINT [FK_LocaleStringResource_Language]
GO
/****** Object:  ForeignKey [FK_LocaleStringResource_LocaleResourceKey]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[LocaleStringResource]  WITH NOCHECK ADD  CONSTRAINT [FK_LocaleStringResource_LocaleResourceKey] FOREIGN KEY([LocaleResourceKey_Id])
REFERENCES [dbo].[LocaleResourceKey] ([Id])
GO
ALTER TABLE [dbo].[LocaleStringResource] NOCHECK CONSTRAINT [FK_LocaleStringResource_LocaleResourceKey]
GO
/****** Object:  ForeignKey [FK_MembershipUser_Badge_Badge]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[MembershipUser_Badge]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUser_Badge_Badge] FOREIGN KEY([Badge_Id])
REFERENCES [dbo].[Badge] ([Id])
GO
ALTER TABLE [dbo].[MembershipUser_Badge] NOCHECK CONSTRAINT [FK_MembershipUser_Badge_Badge]
GO
/****** Object:  ForeignKey [FK_MembershipUser_Badge_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[MembershipUser_Badge]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUser_Badge_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUser_Badge] NOCHECK CONSTRAINT [FK_MembershipUser_Badge_MembershipUser]
GO
/****** Object:  ForeignKey [FK_MembershipUserPoints_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[MembershipUserPoints]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUserPoints_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUserPoints] NOCHECK CONSTRAINT [FK_MembershipUserPoints_MembershipUser]
GO
/****** Object:  ForeignKey [FK_MembershipUsersInRoles_MembershipRole1]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole1] FOREIGN KEY([RoleIdentifier])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] CHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole1]
GO
/****** Object:  ForeignKey [FK_MembershipUsersInRoles_MembershipUser1]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser1] FOREIGN KEY([UserIdentifier])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] NOCHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser1]
GO
/****** Object:  ForeignKey [FK_Poll_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_Poll_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_Poll_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PollAnswer_Poll]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PollAnswer]  WITH CHECK ADD  CONSTRAINT [FK_PollAnswer_Poll] FOREIGN KEY([Poll_Id])
REFERENCES [dbo].[Poll] ([Id])
GO
ALTER TABLE [dbo].[PollAnswer] CHECK CONSTRAINT [FK_PollAnswer_Poll]
GO
/****** Object:  ForeignKey [FK_PollVote_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PollVote_PollAnswer]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_PollAnswer] FOREIGN KEY([PollAnswer_Id])
REFERENCES [dbo].[PollAnswer] ([Id])
GO
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_PollAnswer]
GO
/****** Object:  ForeignKey [FK_Post_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Post_Topic]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Topic]
GO
/****** Object:  ForeignKey [FK_PrivateMessage_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PrivateMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_PrivateMessage_MembershipUser] FOREIGN KEY([UserTo_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PrivateMessage] NOCHECK CONSTRAINT [FK_PrivateMessage_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PrivateMessage_MembershipUser1]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[PrivateMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_PrivateMessage_MembershipUser1] FOREIGN KEY([UserFrom_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PrivateMessage] NOCHECK CONSTRAINT [FK_PrivateMessage_MembershipUser1]
GO
/****** Object:  ForeignKey [FK_Settings_MembershipRole]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_MembershipRole] FOREIGN KEY([NewMemberStartingRole])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_MembershipRole]
GO
/****** Object:  ForeignKey [FK_Topic_Category]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Category]
GO
/****** Object:  ForeignKey [FK_Topic_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Topic] NOCHECK CONSTRAINT [FK_Topic_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Topic_Tag_Topic]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic_Tag]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_Tag_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[Topic_Tag] NOCHECK CONSTRAINT [FK_Topic_Tag_Topic]
GO
/****** Object:  ForeignKey [FK_Topic_Tag_TopicTag]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Topic_Tag]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_Tag_TopicTag] FOREIGN KEY([TopicTag_Id])
REFERENCES [dbo].[TopicTag] ([Id])
GO
ALTER TABLE [dbo].[Topic_Tag] NOCHECK CONSTRAINT [FK_Topic_Tag_TopicTag]
GO
/****** Object:  ForeignKey [FK_TopicNotification_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[TopicNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_TopicNotification_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[TopicNotification] NOCHECK CONSTRAINT [FK_TopicNotification_MembershipUser]
GO
/****** Object:  ForeignKey [FK_TopicNotification_Topic]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[TopicNotification]  WITH CHECK ADD  CONSTRAINT [FK_TopicNotification_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[TopicNotification] CHECK CONSTRAINT [FK_TopicNotification_Topic]
GO
/****** Object:  ForeignKey [FK_Vote_MembershipUser]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Vote]  WITH NOCHECK ADD  CONSTRAINT [FK_Vote_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Vote] NOCHECK CONSTRAINT [FK_Vote_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Vote_Post]    Script Date: 11/12/2012 17:07:49 ******/
ALTER TABLE [dbo].[Vote]  WITH NOCHECK ADD  CONSTRAINT [FK_Vote_Post] FOREIGN KEY([Post_Id])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Vote] NOCHECK CONSTRAINT [FK_Vote_Post]
GO
