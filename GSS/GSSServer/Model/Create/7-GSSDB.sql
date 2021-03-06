USE [GSSDB]
GO
/****** Object:  Table [dbo].[WorkOrderLogicData]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderLogicData](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskId] [int] NOT NULL,
	[LogicData] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[SyncConfig] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Version]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Version](
	[F_id] [smallint] NOT NULL,
	[F_DB_Version] [nchar](20) NULL,
	[F_Uptime] [smalldatetime] NOT NULL,
	[F_UpNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_T_Version] PRIMARY KEY NONCLUSTERED 
(
	[F_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Users]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[T_Users](
	[F_UserID] [int] IDENTITY(1,1) NOT NULL,
	[F_UserName] [nvarchar](30) NOT NULL,
	[F_PassWord] [char](32) NOT NULL,
	[F_DepartID] [int] NULL,
	[F_RoleID] [int] NULL,
	[F_RealName] [nvarchar](10) NULL,
	[F_Sex] [bit] NULL,
	[F_Birthday] [smalldatetime] NULL,
	[F_Email] [nvarchar](50) NULL,
	[F_MobilePhone] [nvarchar](20) NULL,
	[F_Telphone] [nvarchar](20) NULL,
	[F_Note] [nvarchar](500) NULL,
	[F_RegTime] [smalldatetime] NULL,
	[F_LastInTime] [smalldatetime] NULL,
	[F_IsUsed] [bit] NOT NULL,
 CONSTRAINT [PK_T_Users] PRIMARY KEY CLUSTERED 
(
	[F_UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_T_Users_F_UserName] UNIQUE NONCLUSTERED 
(
	[F_UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_DepartID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_RegTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users', @level2type=N'COLUMN',@level2name=N'F_LastInTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Users'
GO
/****** Object:  Table [dbo].[T_TaskTemplate]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TaskTemplate](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_Type] [int] NULL,
	[F_Template] [nvarchar](500) NULL,
 CONSTRAINT [PK_T_TaskTemplate] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TaskTemplate', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TaskTemplate', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TaskTemplate', @level2type=N'COLUMN',@level2name=N'F_Template'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单类型模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TaskTemplate'
GO
/****** Object:  Table [dbo].[T_TasksLog]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TasksLog](
	[F_LogID] [int] IDENTITY(1,1) NOT NULL,
	[F_ID] [int] NOT NULL,
	[F_Title] [nvarchar](30) NULL,
	[F_Note] [nvarchar](500) NULL,
	[F_From] [int] NULL,
	[F_VipLevel] [int] NULL,
	[F_LimitType] [int] NULL,
	[F_LimitTime] [datetime] NULL,
	[F_Type] [int] NULL,
	[F_State] [int] NULL,
	[F_GameName] [int] NULL,
	[F_GameBigZone] [nvarchar](16) NULL,
	[F_GameZone] [nvarchar](16) NULL,
	[F_GUserID] [nvarchar](16) NULL,
	[F_GUserName] [nvarchar](16) NULL,
	[F_GRoleID] [nvarchar](16) NULL,
	[F_GRoleName] [nvarchar](16) NULL,
	[F_Telphone] [nvarchar](50) NULL,
	[F_GPeopleName] [nvarchar](16) NULL,
	[F_DutyMan] [int] NULL,
	[F_PreDutyMan] [int] NULL,
	[F_CreatMan] [int] NULL,
	[F_CreatTime] [datetime] NULL,
	[F_EditMan] [int] NULL,
	[F_EditTime] [datetime] NULL,
	[F_URInfo] [nvarchar](max) NULL,
	[F_Rowtype] [tinyint] NULL,
	[F_CUserName] [bit] NULL,
	[F_CPSWProtect] [bit] NULL,
	[F_CPersonID] [bit] NULL,
	[F_COther] [nvarchar](200) NULL,
	[F_OLastLoginTime] [nvarchar](50) NULL,
	[F_OCanRestor] [bit] NULL,
	[F_OAlwaysPlace] [nvarchar](50) NULL,
	[F_TToolUsed] [bit] NULL,
	[F_TUseData] [nvarchar](2000) NULL,
 CONSTRAINT [PK_T_TasksLog] PRIMARY KEY CLUSTERED 
(
	[F_LogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_From'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_LimitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_Telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前职责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_DutyMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者(如来源为外部则为转成工单的人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_CreatMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_CreatTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_EditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家和角色信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_URInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行状态（0:正常;1:删除;2:历史）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_Rowtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'F＿C检验项表里的字段,少量的话暂时放这个表里.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_CUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'F_O指其它玩家提供的信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_OLastLoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工具使用的数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog', @level2type=N'COLUMN',@level2name=N'F_TUseData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_TasksLog'
GO
/****** Object:  Table [dbo].[T_Tasks]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Tasks](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_Title] [nvarchar](30) NULL,
	[F_Note] [nvarchar](500) NULL,
	[F_From] [int] NULL,
	[F_VipLevel] [int] NULL,
	[F_LimitType] [int] NULL,
	[F_LimitTime] [datetime] NULL,
	[F_Type] [int] NULL,
	[F_State] [int] NULL,
	[F_GameName] [int] NULL,
	[F_GameBigZone] [nvarchar](16) NULL,
	[F_GameZone] [nvarchar](16) NULL,
	[F_GUserID] [nvarchar](16) NULL,
	[F_GUserName] [nvarchar](16) NULL,
	[F_GRoleID] [nvarchar](16) NULL,
	[F_GRoleName] [nvarchar](16) NULL,
	[F_Telphone] [nvarchar](16) NULL,
	[F_GPeopleName] [nvarchar](16) NULL,
	[F_DutyMan] [int] NULL,
	[F_PreDutyMan] [int] NULL,
	[F_CreatMan] [int] NULL,
	[F_CreatTime] [datetime] NOT NULL,
	[F_EditMan] [int] NULL,
	[F_EditTime] [datetime] NULL,
	[F_URInfo] [nvarchar](max) NULL,
	[F_Rowtype] [tinyint] NULL,
	[F_CUserName] [bit] NULL,
	[F_CPSWProtect] [bit] NULL,
	[F_CPersonID] [bit] NULL,
	[F_COther] [nvarchar](200) NULL,
	[F_OLastLoginTime] [nvarchar](50) NULL,
	[F_OCanRestor] [bit] NULL,
	[F_OAlwaysPlace] [nvarchar](50) NULL,
	[F_TToolUsed] [bit] NULL,
	[F_TUseData] [nvarchar](2000) NULL,
 CONSTRAINT [PK_T_Tasks] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_From'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_LimitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_Telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家称呼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_GPeopleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前职责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_DutyMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者(如来源为外部则为转成工单的人)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_CreatMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_CreatTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_EditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立工单时玩家和角色信息快照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_URInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行状态（0:正常;1:删除;2:历史）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_Rowtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'F＿C检验项表里的字段,少量的话暂时放这个表里.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_CUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'F_O指其它玩家提供的信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_OLastLoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工具使用的数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks', @level2type=N'COLUMN',@level2name=N'F_TUseData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Tasks'
GO
/****** Object:  Table [dbo].[T_SysLog]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysLog](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_UserID] [int] NULL,
	[F_UserName] [nvarchar](30) NULL,
	[F_Note] [nvarchar](300) NULL,
	[F_Data] [nvarchar](150) NULL,
	[F_DateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_T_SysLog] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog', @level2type=N'COLUMN',@level2name=N'F_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SysLog'
GO
/****** Object:  Table [dbo].[T_Roles]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Roles](
	[F_RoleID] [int] IDENTITY(1,1) NOT NULL,
	[F_RoleName] [nvarchar](16) NULL,
	[F_IsUsed] [bit] NOT NULL,
	[F_Power] [nvarchar](max) NULL,
 CONSTRAINT [PK_T_Roles] PRIMARY KEY CLUSTERED 
(
	[F_RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Roles', @level2type=N'COLUMN',@level2name=N'F_RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Roles', @level2type=N'COLUMN',@level2name=N'F_IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Roles', @level2type=N'COLUMN',@level2name=N'F_Power'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Roles'
GO
/****** Object:  Table [dbo].[T_QuestList]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QuestList](
	[F_ListID] [int] IDENTITY(1,1) NOT NULL,
	[F_ListTitle] [nvarchar](50) NOT NULL,
	[F_ListNote] [nvarchar](350) NULL,
 CONSTRAINT [PK_T_QuestList] PRIMARY KEY CLUSTERED 
(
	[F_ListID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_QuestKey]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QuestKey](
	[F_KeyID] [int] IDENTITY(1,1) NOT NULL,
	[F_ListID] [int] NULL,
	[F_ItemID] [int] NULL,
	[F_ItemTitle] [nvarchar](100) NULL,
	[F_ItemType] [tinyint] NULL,
	[F_KeyTitle] [nvarchar](50) NULL,
	[F_AnswerNum] [int] NOT NULL,
 CONSTRAINT [PK_T_QuestKey] PRIMARY KEY CLUSTERED 
(
	[F_KeyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_QuestItem]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QuestItem](
	[F_ItemID] [int] IDENTITY(1,1) NOT NULL,
	[F_ListID] [int] NULL,
	[F_ItemTitle] [nvarchar](100) NULL,
	[F_ItemType] [tinyint] NOT NULL,
 CONSTRAINT [PK_T_QuestItem] PRIMARY KEY CLUSTERED 
(
	[F_ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_QuestAnswer]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QuestAnswer](
	[F_AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[F_ListID] [int] NULL,
	[F_ItemID] [int] NULL,
	[F_KeyID] [int] NULL,
	[F_UserName] [nvarchar](30) NULL,
	[F_RoleName] [nvarchar](30) NULL,
	[F_BigZoneName] [nvarchar](20) NULL,
	[F_ZoneName] [nvarchar](20) NULL,
	[F_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_T_QuestAnswer] PRIMARY KEY CLUSTERED 
(
	[F_AnswerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PubNotice]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PubNotice](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_Title] [nvarchar](50) NULL,
	[F_Note] [nvarchar](500) NULL,
	[F_DateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_T_Notice] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_PubNotice', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_PubNotice', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_PubNotice', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_PubNotice', @level2type=N'COLUMN',@level2name=N'F_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_PubNotice'
GO
/****** Object:  Table [dbo].[T_Notfiy]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Notfiy](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_Title] [nvarchar](50) NULL,
	[F_Note] [nvarchar](100) NULL,
	[F_URL] [nvarchar](150) NULL,
	[F_DateTime] [smalldatetime] NULL,
	[F_SeeTime] [smalldatetime] NULL,
	[F_IsSeed] [bit] NULL,
	[F_UserID] [int] NULL,
	[F_Type] [int] NULL,
 CONSTRAINT [PK_T_Notfiy] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指向的网页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查看时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_SeeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已查看' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_IsSeed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时窗口类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时窗口提醒信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Notfiy'
GO
/****** Object:  Table [dbo].[T_Menus]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Menus](
	[F_MenuID] [int] NOT NULL,
	[F_Name] [nvarchar](50) NOT NULL,
	[F_FormName] [nvarchar](150) NULL,
	[F_ParentID] [int] NOT NULL,
	[F_IsUsed] [bit] NOT NULL,
	[F_Sort] [int] NOT NULL,
 CONSTRAINT [PK_T_Menus] PRIMARY KEY CLUSTERED 
(
	[F_MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_MenuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'窗体名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_FormName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus', @level2type=N'COLUMN',@level2name=N'F_Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Menus'
GO
/****** Object:  Table [dbo].[T_GameNotice]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GameNotice](
	[F_ID] [int] NOT NULL,
	[F_ReciveBigZone] [int] NOT NULL,
	[F_ReciveZone] [int] NOT NULL,
	[F_ReciveLine] [int] NOT NULL,
	[F_ReciveObject] [varchar](100) NOT NULL,
	[F_MSGLocation] [int] NOT NULL,
	[F_Message] [varchar](500) NOT NULL,
	[F_RunTimeBegin] [datetime] NOT NULL,
	[F_RunTimeEnd] [datetime] NOT NULL,
	[F_RunInterval] [bigint] NOT NULL,
	[F_TaskState] [int] NOT NULL,
	[F_TaskID] [int] NOT NULL,
 CONSTRAINT [PK_T_GameNotice] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收范围[战区]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_ReciveZone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收范围[战线]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_ReciveLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_ReciveObject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_MSGLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_RunTimeBegin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_RunTimeEnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行间隔(秒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_RunInterval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单状态 0 新建 1 同步到游戏中 2  删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_TaskState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice', @level2type=N'COLUMN',@level2name=N'F_TaskID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏公告表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameNotice'
GO
/****** Object:  Table [dbo].[T_GameGiftAward]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GameGiftAward](
	[F_ID] [int] NOT NULL,
	[F_UserID] [int] NULL,
	[F_RoleID] [int] NULL,
	[F_ZoneID] [smallint] NULL,
	[F_GiftAwardData] [varbinary](max) NULL,
 CONSTRAINT [PK_T_GameGiftAward] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_GameConfig]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_GameConfig](
	[F_ID] [int] NOT NULL,
	[F_ParentID] [int] NULL,
	[F_Name] [nvarchar](30) NULL,
	[F_Value] [nvarchar](200) NULL,
	[F_Value1] [nvarchar](200) NULL,
	[F_ValueGame] [nvarchar](100) NULL,
	[F_IsUsed] [bit] NOT NULL,
	[F_Sort] [int] NOT NULL,
 CONSTRAINT [PK_T_GameConfig] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值(第二个值,如离线查询URL)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_Value1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig', @level2type=N'COLUMN',@level2name=N'F_Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_GameConfig'
GO
/****** Object:  Table [dbo].[T_FDBISql]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FDBISql](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_Title] [nvarchar](50) NULL,
	[F_Note] [nvarchar](500) NULL,
	[F_Sql] [nvarchar](500) NULL,
	[F_UserID] [int] NULL,
	[F_DaTeTime] [datetime] NOT NULL,
 CONSTRAINT [PK_T_FDBISql] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_FDBISql', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_FDBISql', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SQL语句' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_FDBISql', @level2type=N'COLUMN',@level2name=N'F_Sql'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号(公用为-1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_FDBISql', @level2type=N'COLUMN',@level2name=N'F_UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_FDBISql', @level2type=N'COLUMN',@level2name=N'F_DaTeTime'
GO
/****** Object:  Table [dbo].[T_Dictionary]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Dictionary](
	[F_DicID] [int] NOT NULL,
	[F_ParentID] [int] NULL,
	[F_Value] [nvarchar](50) NULL,
	[F_IsUsed] [bit] NOT NULL,
	[F_Sort] [int] NOT NULL,
 CONSTRAINT [PK_T_Dictionary] PRIMARY KEY CLUSTERED 
(
	[F_DicID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'F_DicID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'F_ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'F_Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'F_IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary', @level2type=N'COLUMN',@level2name=N'F_Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Dictionary'
GO
/****** Object:  Table [dbo].[T_Department]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Department](
	[F_DepartID] [int] IDENTITY(1,1) NOT NULL,
	[F_ParentID] [int] NOT NULL,
	[F_DepartName] [nvarchar](30) NOT NULL,
	[F_Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_T_Department] PRIMARY KEY CLUSTERED 
(
	[F_DepartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Department', @level2type=N'COLUMN',@level2name=N'F_DepartID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Department', @level2type=N'COLUMN',@level2name=N'F_ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Department', @level2type=N'COLUMN',@level2name=N'F_DepartName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Department', @level2type=N'COLUMN',@level2name=N'F_Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Department'
GO
/****** Object:  Table [dbo].[T_CountDetail]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CountDetail](
	[F_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[F_Year] [int] NULL,
	[F_Month] [int] NULL,
	[F_Day] [int] NULL,
	[F_Hour] [int] NULL,
	[F_Game] [int] NULL,
	[F_Type] [int] NULL,
	[F_Page] [nvarchar](150) NULL,
	[F_IP] [nvarchar](50) NULL,
	[F_Area] [nvarchar](50) NULL,
	[F_IESoft] [nvarchar](30) NULL,
	[F_OS] [nvarchar](30) NULL,
	[F_CLR] [nvarchar](30) NULL,
	[F_Language] [nvarchar](30) NULL,
	[F_WinBit] [nvarchar](30) NULL,
	[F_ScreenWidth] [int] NULL,
	[F_ScreenHeight] [int] NULL,
	[F_Time] [datetime] NULL,
 CONSTRAINT [PK_T_CountDetail] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_BaseParamDB]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_BaseParamDB](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_DBType] [tinyint] NOT NULL,
	[F_BigZoneID] [tinyint] NOT NULL,
	[F_BattleZoneID] [int] NOT NULL,
	[F_DBIP] [nvarchar](30) NOT NULL,
	[F_DBName] [nvarchar](30) NOT NULL,
	[F_DBUser] [nvarchar](30) NOT NULL,
	[F_DBPSW] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_T_BaseParamDB] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_BaseIPAddress]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BaseIPAddress](
	[F_ID] [int] NOT NULL,
	[F_IPBegin] [varchar](50) NULL,
	[F_IPEnd] [varchar](50) NULL,
	[F_Note] [varchar](200) NULL,
	[F_IPBeginN] [bigint] NULL,
	[F_IPEndN] [bigint] NULL,
	[F_Address] [varchar](50) NULL,
	[F_AreaName] [varchar](30) NULL,
	[F_AreaPN] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[f_IP2Int]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--说明:IP地址转换成格式化数字IP
--时间:2011-12-25 15:30 HCH
-- =============================================

Create FUNCTION [dbo].[f_IP2Int]
(
    @ip CHAR(15)
)
RETURNS BIGINT
AS
BEGIN
    DECLARE @re BIGINT   
    SET @re = 0   
    SELECT @re = @re+LEFT(@ip, CHARINDEX('.', @ip+'.')-1)*ID, @ip = STUFF(@ip, 1, CHARINDEX('.', @ip+'.'), '') 
    FROM (
             SELECT ID = CAST(16777216 AS BIGINT) 
             UNION ALL   SELECT 65536 
             UNION ALL   SELECT 256 
             UNION ALL   SELECT 1
         )A 
    RETURN(@re)
END
GO
/****** Object:  UserDefinedFunction [dbo].[f_Int2IP]    Script Date: 08/23/2017 15:50:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--说明:数字IP转换成格式化  IP地址
--时间:2011-12-25 15:30 HCH
-- =============================================
Create FUNCTION [dbo].[f_Int2IP]
(
    @IP BIGINT
)
RETURNS VARCHAR(15)
AS
BEGIN
    DECLARE @re VARCHAR(16)   
    SET @re = ''   
    SELECT @re = @re+'.'+CAST(@IP/ID AS VARCHAR), @IP = @IP%ID 
    FROM (
             SELECT ID = CAST(16777216 AS BIGINT) 
             UNION ALL   SELECT 65536 
             UNION ALL   SELECT 256 
             UNION ALL   SELECT 1
         )a 
    RETURN(STUFF(@re, 1, 1, ''))
END
GO
/****** Object:  StoredProcedure [dbo].[GSS_GetRecordByPage]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--===================================================================
--名称：_GSS_GetRecordByPage
--功能：通用分页查询
--输入参数：
--     @tblName              VARCHAR(1000),     -- 表名
--     @SelectFieldName     VARCHAR(4000),     -- 要显示的字段名(不要加SELECT)字段名用,隔开
--     @strWhere            VARCHAR(4000),     -- 查询条件(注意: 不要加 WHERE)
--     @OrderFieldName      VARCHAR(255),     -- 排序索引字段名
--     @PageSize            INT ,             -- 页大小
--     @PageIndex           INT = 1,         -- 页码
--     @iRowCount              INT OUTPUT,         -- 返回记录总数
--     @OrderType              BIT = 0             -- 设置排序类型, 非 0 值则降序
--返回：此条件的记录总数
--===================================================================

create PROCEDURE [dbo].[GSS_GetRecordByPage]
(
     @tblName          VARCHAR(1000),    -- 表名,或联表
     @SelectFieldName     VARCHAR(4000),    -- 要显示的字段名(不要加SELECT)字段名用,隔开
     @strWhere            VARCHAR(4000),    -- 查询条件(注意: 不要加 WHERE)
     @OrderFieldName       VARCHAR(255),    -- 排序索引字段名
     @PageSize           INT ,            -- 页大小
     @PageIndex          INT = 1,        -- 页码
     @OrderType           BIT = 0,            -- 设置排序类型, 非 0 值则降序
     @iRowCount             INT OUTPUT       -- 返回记录总数

)
AS

DECLARE @strSQL     VARCHAR(4000)            -- 主语句
DECLARE @strTmp     VARCHAR(4000)            -- 临时变量
DECLARE @strOrder     VARCHAR(400)        -- 排序类型
DECLARE @strRowCount     NVARCHAR(500)  -- 用于查询记录总数的语句

SET @OrderFieldName = ltrim(rtrim(@OrderFieldName))

IF @OrderType != 0--如果排序类型不为0,则降序
     BEGIN
         IF CHARINDEX('.',@OrderFieldName)>0
         BEGIN
             PRINT CHARINDEX('.',@OrderFieldName)
            SET @strTmp = ' ORDER BY ' +substring(@OrderFieldName,CHARINDEX('.',@OrderFieldName)+1,LEN(@OrderFieldName)-CHARINDEX('.',@OrderFieldName)) +' DESC'
         END
         ELSE
         BEGIN
         SET @strTmp = ' ORDER BY ' +@OrderFieldName +' DESC'
         END
         SET @strOrder = ' ORDER BY ' + @OrderFieldName +' DESC'
     END
ELSE
     BEGIN
         IF CHARINDEX('.',@OrderFieldName)>0
         BEGIN
         PRINT CHARINDEX('.',@OrderFieldName)
         SET @strTmp = ' ORDER BY ' +substring(@OrderFieldName,CHARINDEX('.',@OrderFieldName)+1,LEN(@OrderFieldName)-CHARINDEX('.',@OrderFieldName)) +' ASC'
         END
         ELSE
         BEGIN
         SET @strTmp = ' ORDER BY ' +@OrderFieldName +' ASC'
         END
        
         SET @strOrder = ' ORDER BY ' + @OrderFieldName +' ASC'
     END

IF CHARINDEX(',',@tblName) >0
     BEGIN
        PRINT '多表查询'
   IF @strWhere != ''
         BEGIN
            --若条件查询语句不为空
             SET @strSQL = 'SELECT * FROM '
                + '(SELECT ROW_NUMBER() OVER('+@strOrder+') AS rownum,'+ @SelectFieldName +' FROM '+ @tblName + ' WHERE '  + @strWhere 
                + ' ) AS D WHERE rownum BETWEEN ' + Convert(VARCHAR(10),(@PageIndex-1)*@PageSize+1) + ' AND ' + Convert(VARCHAR(10),@PageIndex*@PageSize) + @strTmp
         END
     ELSE
         BEGIN
             SET @strSQL = 'SELECT ' + @SelectFieldName + ' FROM '
                + '(SELECT ROW_NUMBER() OVER('+@strOrder+') AS rownum,* FROM '+ @tblName + ' '  
                + ' ) AS D WHERE rownum BETWEEN ' + Convert(VARCHAR(10),(@PageIndex-1)*@PageSize+1) + ' AND ' + Convert(VARCHAR(10),@PageIndex*@PageSize) + @strTmp
         END
     END
ELSE
BEGIN
     IF @strWhere != ''
         BEGIN
            --若条件查询语句不为空
             SET @strSQL = 'SELECT ' +@SelectFieldName + ' FROM '
                + '(SELECT ROW_NUMBER() OVER('+@strOrder+') AS rownum,* FROM '+ @tblName + ' WHERE '  + @strWhere 
                + ' ) AS D WHERE rownum BETWEEN ' + Convert(VARCHAR(10),(@PageIndex-1)*@PageSize+1) + ' AND ' + Convert(VARCHAR(10),@PageIndex*@PageSize) + @strTmp
         END
     ELSE
         BEGIN
             SET @strSQL = 'SELECT ' + @SelectFieldName + ' FROM '
                + '(SELECT ROW_NUMBER() OVER('+@strOrder+') AS rownum,* FROM '+ @tblName + ' '  
                + ' ) AS D WHERE rownum BETWEEN ' + Convert(VARCHAR(10),(@PageIndex-1)*@PageSize+1) + ' AND ' + Convert(VARCHAR(10),@PageIndex*@PageSize) + @strTmp
         END
END
Print (@strSQL)
EXEC(@strSQL)

IF @strWhere != ''
         SET @strRowCount = 'SELECT @iRowCount = count(1) FROM ' + @tblName+' WHERE ' + @strWhere
ELSE
         SET @strRowCount = 'SELECT @iRowCount = count(1) FROM ' + @tblName

EXEC sp_executesql @strRowCount , N'@iRowCount INT out' , @iRowCount out
GO
/****** Object:  StoredProcedure [dbo].[GSS_CountDetail_ADD]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：增加一条记录 
--项目名称：
--说明：
--时间：2012-12-28 14:26:58
------------------------------------
CREATE PROCEDURE [dbo].[GSS_CountDetail_ADD]
@F_Year INT,
@F_Month INT,
@F_Day INT,
@F_Hour INT,
@F_Game INT,
@F_Type INT,
@F_Page NVARCHAR(150),
@F_IP NVARCHAR(50),
@F_IESoft NVARCHAR(30),
@F_OS NVARCHAR(30),
@F_CLR NVARCHAR(30),
@F_Language NVARCHAR(30),
@F_WinBit NVARCHAR(30),
@F_Time DATETIME,
@F_ScreenWidth INT,
@F_ScreenHeight INT,
@F_ID BIGINT OUTPUT
 AS 
BEGIN
    DECLARE @ip BIGINT,@area nvarchar(50)
	SELECT @ip=dbo.f_IP2Int(@F_IP)
	SELECT TOP 1 @area=F_AreaName FROM T_BaseIPAddress where F_IPBeginN<=@ip and F_IPEndN>=@ip

	INSERT INTO [T_CountDetail](
	[F_Year],[F_Month],[F_Day],[F_Hour],[F_Game],[F_Type],[F_Page],[F_IP],[F_Area],[F_IESoft],[F_OS],[F_CLR],[F_Language],[F_WinBit],[F_ScreenWidth],[F_ScreenHeight],[F_Time]
	)VALUES(
	@F_Year,@F_Month,@F_Day,@F_Hour,@F_Game,@F_Type,@F_Page,@F_IP,@area,@F_IESoft,@F_OS,@F_CLR,@F_Language,@F_WinBit,@F_ScreenWidth,@F_ScreenHeight,@F_Time
	)
	SET @F_ID = @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AddAwardToMysql]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[SP_AddAwardToMysql]
(
	@bigZone smallint,
	@zoneID smallint,
	@logicJson nvarchar(max),--该工单的逻辑数据
	@taskId int
)
as
	declare @logicId uniqueidentifier 
	set @logicId=NEWID()
	insert into dbo.WorkOrderLogicData([Id],[TaskId],[LogicData],[CreateTime],[IsDelete],[SyncConfig])
	values(@logicId,@taskId,@logicJson,GETDATE(),0,0)
	if(@zoneID=-1) 
	select  name,provider_string from sys.servers where name in
	(
		select 'LKSV_GSS_7_'+F_DBName+'_'+CONVERT(varchar(3),F_BigZoneID)+'_'+CONVERT(varchar(3),F_BattleZoneID)
		 from dbo.T_BaseParamDB where F_DBType=7 and F_BigZoneID=@bigZone   
	)
	else 
	select  name,provider_string from sys.servers where name in
	(
		select 'LKSV_GSS_7_'+F_DBName+'_'+CONVERT(varchar(3),F_BigZoneID)+'_'+CONVERT(varchar(3),F_BattleZoneID)
		 from dbo.T_BaseParamDB where F_DBType=7 and F_BigZoneID=@bigZone and F_BattleZoneID=@zoneID
	)
GO
/****** Object:  StoredProcedure [dbo].[GSS_TasksLog_Update]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：修改工单
--项目名称：GSS
--说明：
--时间：2011-11-10 19:11:46
------------------------------------
CREATE PROCEDURE [dbo].[GSS_TasksLog_Update]
@F_ID INT,
@F_Title NVARCHAR(30),
@F_Note NVARCHAR(500),
@F_FROM INT,
@F_VipLevel INT,
@F_LimitType INT,
@F_LimitTime DATETIME,
@F_Type INT,
@F_State INT,
@F_GameName INT,
@F_GameBigZone NVARCHAR(16),
@F_GameZone NVARCHAR(16),
@F_GUserID NVARCHAR(16),
@F_GUserName NVARCHAR(16),
@F_GRoleID NVARCHAR(16),
@F_GRoleName NVARCHAR(16),
@F_Telphone NVARCHAR(16),
@F_GPeopleName NVARCHAR(16),
@F_DutyMan INT,
@F_PreDutyMan INT,
@F_CreatMan INT,
@F_CreatTime DATETIME,
@F_EditMan INT,
@F_EditTime DATETIME,
@F_URInfo NVARCHAR(MAX),
@F_Rowtype TINYINT,
@F_CUserName BIT,
@F_CPSWProtect BIT,
@F_CPersonID BIT,
@F_COther NVARCHAR(200),
@F_OLastLoginTime NVARCHAR(50),
@F_OCanRestor BIT,
@F_OAlwaysPlace NVARCHAR(50),
@F_TToolUsed BIT,
@F_TUseData NVARCHAR(2000)
 AS 
	DECLARE @sqlStr NVARCHAR(MAX)
	DECLARE @Param NVARCHAR(MAX)
--更新工单历史
	SET @sqlStr=N'UPDATE [T_TasksLog] SET '
	IF(@F_Note is NOT NULL AND LEN(@F_Note)>0)  SET @sqlStr=@sqlStr+N'[F_Note] = @F_Note,'
	IF(@F_State is NOT NULL AND LEN(@F_State)>0)  SET @sqlStr=@sqlStr+N'[F_State] = @F_State,'
	IF(@F_Telphone is NOT NULL AND LEN(@F_Telphone)>0)  SET @sqlStr=@sqlStr+N'[F_Telphone] = @F_Telphone,'
	IF(@F_URInfo is NOT NULL AND LEN(@F_URInfo)>0)  SET @sqlStr=@sqlStr+N'[F_URInfo] = @F_URInfo,'
	IF(@F_TUseData is NOT NULL AND LEN(@F_TUseData)>0)  SET @sqlStr=@sqlStr+N'[F_TUseData] = @F_TUseData,'
	IF(@F_TToolUsed is NOT NULL AND LEN(@F_TToolUsed)>0)  SET @sqlStr=@sqlStr+N'[F_TToolUsed] = @F_TToolUsed,'
	IF(@F_COther is NOT NULL AND LEN(@F_COther)>0)  SET @sqlStr=@sqlStr+N'[F_COther] = @F_COther,'
	IF(@F_OCanRestor is NOT NULL AND LEN(@F_OCanRestor)>0)  SET @sqlStr=@sqlStr+N'[F_OCanRestor] = @F_OCanRestor,'
	IF(@F_DutyMan is NOT NULL AND LEN(@F_DutyMan)>0)  SET @sqlStr=@sqlStr+N'[F_DutyMan] = @F_DutyMan,'
	IF(@F_PreDutyMan is NOT NULL AND LEN(@F_PreDutyMan)>0)  SET @sqlStr=@sqlStr+N'[F_PreDutyMan] = @F_PreDutyMan,'
	IF(@F_EditMan is NOT NULL AND LEN(@F_EditMan)>0)  SET @sqlStr=@sqlStr+N'[F_EditMan] = @F_EditMan,'
	IF(@F_EditTime is NOT NULL AND LEN(@F_EditTime)>0)  SET @sqlStr=@sqlStr+N'[F_EditTime] = @F_EditTime' ELSE SET @sqlStr=@sqlStr+N'[F_EditTime] = GETDATE()'
	SET @sqlStr=@sqlStr+N' WHERE F_ID=@F_ID'

	SET @Param= N'@F_ID INT,@F_Note NVARCHAR(500),@F_State INT,@F_Telphone NCHAR(16),@F_URInfo NVARCHAR(MAX),@F_DutyMan INT,@F_PreDutyMan INT,@F_EditMan INT,@F_EditTime DATETIME,@F_TToolUsed BIT,@F_TUseData NVARCHAR(2000),@F_COther NVARCHAR(200),@F_OCanRestor BIT' ;
	EXECUTE sp_executesql @sqlStr,@Param,@F_ID,@F_Note,@F_State,@F_Telphone,@F_URInfo,@F_DutyMan,@F_PreDutyMan,@F_EditMan,@F_EditTime,@F_TToolUsed,@F_TUseData,@F_COther,@F_OCanRestor

--用来提醒在线咨询
	IF EXISTS(SELECT 1 FROM [T_TasksLog] WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_TToolUsed is NULL and F_EditMan is null)
	UPDATE [T_Tasks] SET F_TToolUsed=NULL WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_TToolUsed=1
	ELSE
	UPDATE [T_Tasks] SET F_TToolUsed=1 WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_TToolUsed IS NULL

	IF EXISTS(SELECT 1 FROM [T_TasksLog] WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_OCanRestor is NULL and F_EditMan is not null )
	UPDATE [T_Tasks] SET F_OCanRestor=NULL WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_OCanRestor=1
	ELSE
	UPDATE [T_Tasks] SET F_OCanRestor=1 WHERE F_ID=@F_ID AND F_Rowtype=6 AND F_OCanRestor IS NULL
GO
/****** Object:  StoredProcedure [dbo].[GSS_Tasks_Update]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedure
------------------------------------
--用途：修改工单
--项目名称：GSS
--说明：
--时间：2011-11-10 19:11:46
------------------------------------
CREATE PROCEDURE [dbo].[GSS_Tasks_Update]
@F_ID INT,
@F_Title NVARCHAR(30),
@F_Note NVARCHAR(500),
@F_FROM INT,
@F_VipLevel INT,
@F_LimitType INT,
@F_LimitTime datetime,
@F_Type INT,
@F_State INT,
@F_GameName INT,
@F_GameBigZone NVARCHAR(16),
@F_GameZone NVARCHAR(16),
@F_GUserID NVARCHAR(16),
@F_GUserName NVARCHAR(16),
@F_GRoleID NVARCHAR(16),
@F_GRoleName NVARCHAR(16),
@F_Telphone NVARCHAR(16),
@F_GPeopleName NVARCHAR(16),
@F_DutyMan INT,
@F_PreDutyMan INT,
@F_CreatMan INT,
@F_CreatTime datetime,
@F_EditMan INT,
@F_EditTime datetime,
@F_URInfo nvarchar(MAX),
@F_Rowtype TINYINT,
@F_CUserName BIT,
@F_CPSWProtect BIT,
@F_CPersonID BIT,
@F_COther NVARCHAR(200),
@F_OLastLoginTime NVARCHAR(50),
@F_OCanRestor BIT,
@F_OAlwaysPlace NVARCHAR(50),
@F_TToolUsed BIT,
@F_TUseData NVARCHAR(2000)
 AS 
	DECLARE @sqlStr NVARCHAR(MAX)
	DECLARE @Param NVARCHAR(MAX)
--更新工单

	if exists(select * from T_Tasks where F_ID=@F_ID and F_State=@F_State and F_DutyMan=@F_DutyMan)
	return

	SET @sqlStr=N'UPDATE [T_Tasks] SET '
	IF(@F_Note is NOT NULL AND LEN(@F_Note)>0)  SET @sqlStr=@sqlStr+N'[F_Note] = @F_Note,'
	IF(@F_State is NOT NULL AND LEN(@F_State)>0)  SET @sqlStr=@sqlStr+N'[F_State] = @F_State,'
	IF(@F_Telphone is NOT NULL AND LEN(@F_Telphone)>0)  SET @sqlStr=@sqlStr+N'[F_Telphone] = @F_Telphone,'
	IF(@F_URInfo is NOT NULL AND LEN(@F_URInfo)>0)  SET @sqlStr=@sqlStr+N'[F_URInfo] = @F_URInfo,'
	IF(@F_TUseData is NOT NULL AND LEN(@F_TUseData)>0)  SET @sqlStr=@sqlStr+N'[F_TUseData] = @F_TUseData,'
	IF(@F_TToolUsed is NOT NULL AND LEN(@F_TToolUsed)>0 or 1=1)  SET @sqlStr=@sqlStr+N'[F_TToolUsed] = @F_TToolUsed,'
	IF(@F_COther is NOT NULL AND LEN(@F_COther)>0)  SET @sqlStr=@sqlStr+N'[F_COther] = @F_COther,'
	IF(@F_OCanRestor is NOT NULL AND LEN(@F_OCanRestor)>0 or 1=1)  SET @sqlStr=@sqlStr+N'[F_OCanRestor] = @F_OCanRestor,'
	IF(@F_Rowtype is NOT NULL AND LEN(@F_Rowtype)>0)  SET @sqlStr=@sqlStr+N'[F_Rowtype] = @F_Rowtype,'
	IF(@F_DutyMan is NOT NULL AND LEN(@F_DutyMan)>0)  SET @sqlStr=@sqlStr+N'[F_DutyMan] = @F_DutyMan,'
	IF(@F_PreDutyMan is NOT NULL AND LEN(@F_PreDutyMan)>0)  SET @sqlStr=@sqlStr+N'[F_PreDutyMan] = @F_PreDutyMan,'
	IF(@F_EditMan is NOT NULL AND LEN(@F_EditMan)>0)  SET @sqlStr=@sqlStr+N'[F_EditMan] = @F_EditMan,'
	IF(@F_EditTime is NOT NULL AND LEN(@F_EditTime)>0)  SET @sqlStr=@sqlStr+N'[F_EditTime] = @F_EditTime' ELSE SET @sqlStr=@sqlStr+N'[F_EditTime] = GETDATE()'
	SET @sqlStr=@sqlStr+N' WHERE F_ID=@F_ID'

	SET @Param= N'@F_ID INT,@F_Note NVARCHAR(500),@F_State INT,@F_Telphone NCHAR(16),@F_URInfo nvarchar(MAX),@F_DutyMan INT,@F_PreDutyMan INT,@F_EditMan INT,@F_EditTime datetime,@F_TToolUsed BIT,@F_TUseData NVARCHAR(2000),@F_COther NVARCHAR(200),@F_OCanRestor BIT,@F_Rowtype TINYINT' ;
	EXECUTE sp_executesql @sqlStr,@Param,@F_ID,@F_Note,@F_State,@F_Telphone,@F_URInfo,@F_DutyMan,@F_PreDutyMan,@F_EditMan,@F_EditTime,@F_TToolUsed,@F_TUseData,@F_COther,@F_OCanRestor,@F_Rowtype


--记入工单历史
	INSERT INTO [T_TasksLog](
	[F_ID],[F_Title],[F_Note],[F_FROM],[F_VipLevel],[F_LimitType],[F_LimitTime],[F_Type],[F_State],[F_GameName],[F_GameBigZone],[F_GameZone],[F_GUserID],[F_GUserName],[F_GRoleID],[F_GRoleName],[F_Telphone],[F_GPeopleName],[F_DutyMan],[F_PreDutyMan],[F_CreatMan],[F_CreatTime],[F_EditMan],[F_EditTime],[F_URInfo],[F_Rowtype],[F_CUserName],[F_CPSWProtect],[F_CPersonID],[F_COther],[F_OLastLoginTime],[F_OCanRestor],[F_OAlwaysPlace],[F_TToolUsed],[F_TUseData]
	)VALUES(
	@F_ID,@F_Title,@F_Note,@F_FROM,@F_VipLevel,@F_LimitType,@F_LimitTime,@F_Type,@F_State,@F_GameName,@F_GameBigZone,@F_GameZone,@F_GUserID,@F_GUserName,@F_GRoleID,@F_GRoleName,@F_Telphone,@F_GPeopleName,@F_DutyMan,@F_PreDutyMan,@F_CreatMan,@F_CreatTime,@F_EditMan,@F_EditTime,@F_URInfo,@F_Rowtype,@F_CUserName,@F_CPSWProtect,@F_CPersonID,@F_COther,@F_OLastLoginTime,@F_OCanRestor,@F_OAlwaysPlace,@F_TToolUsed,@F_TUseData
	)
GO
/****** Object:  StoredProcedure [dbo].[GSS_Tasks_ADD]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：工单增加
--项目名称：GSS
--说明：添加工单,并计入工单历史
--时间：2011-11-9 16:30:52
------------------------------------
CREATE PROCEDURE [dbo].[GSS_Tasks_ADD]
@F_Title nvarchar(30),
@F_Note nvarchar(500),
@F_From int,
@F_VipLevel int,
@F_LimitType int,
@F_LimitTime datetime,
@F_Type int,
@F_State int,
@F_GameName int,
@F_GameBigZone nvarchar(16),
@F_GameZone nvarchar(16),
@F_GUserID nvarchar(16),
@F_GUserName nvarchar(16),
@F_GRoleID nvarchar(16),
@F_GRoleName nvarchar(16),
@F_Telphone nvarchar(16),
@F_GPeopleName nvarchar(16),
@F_DutyMan int,
@F_PreDutyMan int,
@F_CreatMan int,
@F_CreatTime datetime,
@F_EditMan int,
@F_EditTime datetime,
@F_URInfo nvarchar(MAX),
@F_Rowtype tinyint,
@F_CUserName bit,
@F_CPSWProtect bit,
@F_CPersonID bit,
@F_COther nvarchar(200),
@F_OLastLoginTime nvarchar(50),
@F_OCanRestor bit,
@F_OAlwaysPlace nvarchar(50),
@F_TToolUsed bit,
@F_TUseData nvarchar(2000),
@F_ID int output
 AS 
--添加工单
	INSERT INTO [T_Tasks](
	[F_Title],[F_Note],[F_From],[F_VipLevel],[F_LimitType],[F_LimitTime],[F_Type],[F_State],[F_GameName],[F_GameBigZone],[F_GameZone],[F_GUserID],[F_GUserName],[F_GRoleID],[F_GRoleName],[F_Telphone],[F_GPeopleName],[F_DutyMan],[F_PreDutyMan],[F_CreatMan],[F_CreatTime],[F_EditMan],[F_EditTime],[F_URInfo],[F_Rowtype],[F_CUserName],[F_CPSWProtect],[F_CPersonID],[F_COther],[F_OLastLoginTime],[F_OCanRestor],[F_OAlwaysPlace],[F_TToolUsed],[F_TUseData]
	)VALUES(
	@F_Title,@F_Note,@F_From,@F_VipLevel,@F_LimitType,@F_LimitTime,@F_Type,@F_State,@F_GameName,@F_GameBigZone,@F_GameZone,@F_GUserID,@F_GUserName,@F_GRoleID,@F_GRoleName,@F_Telphone,@F_GPeopleName,@F_DutyMan,@F_PreDutyMan,@F_CreatMan,@F_CreatTime,@F_EditMan,@F_EditTime,@F_URInfo,@F_Rowtype,@F_CUserName,@F_CPSWProtect,@F_CPersonID,@F_COther,@F_OLastLoginTime,@F_OCanRestor,@F_OAlwaysPlace,@F_TToolUsed,@F_TUseData
	)
	SET @F_ID = @@IDENTITY

--记入工单历史
	INSERT INTO [T_TasksLog](
	[F_ID],[F_Title],[F_Note],[F_From],[F_VipLevel],[F_LimitType],[F_LimitTime],[F_Type],[F_State],[F_GameName],[F_GameBigZone],[F_GameZone],[F_GUserID],[F_GUserName],[F_GRoleID],[F_GRoleName],[F_Telphone],[F_GPeopleName],[F_DutyMan],[F_PreDutyMan],[F_CreatMan],[F_CreatTime],[F_EditMan],[F_EditTime],[F_URInfo],[F_Rowtype],[F_CUserName],[F_CPSWProtect],[F_CPersonID],[F_COther],[F_OLastLoginTime],[F_OCanRestor],[F_OAlwaysPlace],[F_TToolUsed],[F_TUseData]
	)VALUES(
	@F_ID,@F_Title,@F_Note,@F_From,@F_VipLevel,@F_LimitType,@F_LimitTime,@F_Type,@F_State,@F_GameName,@F_GameBigZone,@F_GameZone,@F_GUserID,@F_GUserName,@F_GRoleID,@F_GRoleName,@F_Telphone,@F_GPeopleName,@F_DutyMan,@F_PreDutyMan,@F_CreatMan,@F_CreatTime,@F_EditMan,@F_EditTime,@F_URInfo,@F_Rowtype,@F_CUserName,@F_CPSWProtect,@F_CPersonID,@F_COther,@F_OLastLoginTime,@F_OCanRestor,@F_OAlwaysPlace,@F_TToolUsed,@F_TUseData
	)
GO
/****** Object:  StoredProcedure [dbo].[_Query_SQLCustom]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--项目名称：查询数据库日志
--说明：SQLSERVER,MYSQL通用
--时间：2012-01-10 11:11:59 HCH
------------------------------------
create PROCEDURE [dbo].[_Query_SQLCustom]
@BigZoneID INT,
@ZoneID INT,
@DBType SMALLINT,
@Query NVARCHAR(MAX),
@PageIndex INT,
@PageSize INT,
@PCount INT OUTPUT
AS
BEGIN
DECLARE @LSName NVARCHAR(50),@GUID VARCHAR(36),@SqlStr NVARCHAR(MAX)
SELECT @GUID =newid(),@PCount=0
INSERT INTO T_BaseJobMsg (F_RunID,F_Msg) VALUES (@GUID,N'查询[LKSV_'+CAST(@DBType AS VARCHAR(5))+'_DBName_'+CAST(@BigZoneID AS VARCHAR(5))+'_'+CAST(@ZoneID AS VARCHAR(5))+']-条件 '+@Query+'')

if(Patindex('%update%',@Query)>0 or Patindex('%delete%',@Query)>0 or Patindex('%insert%',@Query)>0 or Patindex('%update%',@Query)>0 or Patindex('%exec%',@Query)>0 or Patindex('%sp_%',@Query)>0)
RAISERROR('SQL语句受限,仅允许查询语句', 16,-1)


BEGIN TRY
--查询开始
	SELECT top 1 @LSName='[LKSV_'+CAST(F_DBType AS VARCHAR(5))+'_'+F_DBName+'_'+CAST(F_BigZoneID AS VARCHAR(5))+'_'+CAST(F_BattleZoneID AS VARCHAR(5))+']' FROM T_BaseParamDB  WITH(NOLOCK) WHERE F_DBType=@DBType AND F_BigZoneID=@BigZoneID AND F_BattleZoneID=@ZoneID

	IF(@LSName is NULL)
	BEGIN
	RAISERROR('找不到此数据库配置项', 16,-1)
	END
------查询数量
--	SELECT @SqlStr= 'SELECT @PCount=count(1) FROM OPENQUERY ('+@LSName+' ,'''+@Query+''' ) '
----SELECT @SqlStr
--	DECLARE @SqlParam NVARCHAR(300);
--	SELECT @SqlParam=N'@PCount INT OUTPUT'
--	EXEC sp_executesql  @SqlStr,@SqlParam,@PCount OUTPUT;
--
------查询结果
--	DECLARE @pa INT,@pb INT
--	SELECT @pa=(@PageIndex-1)*@PageSize+1,@pb=(@PageIndex)*@PageSize
--	SELECT @SqlStr= '(SELECT * FROM OPENQUERY ('+@LSName+' ,'''+@Query+''' ) ) aa'
--	SELECT @SqlStr='SELECT ROW_NUMBER() OVER( order by F_ID ) AS ROWNUM,* FROM '+@SqlStr+' '
--	SELECT @SqlStr='SELECT * FROM ('+@SqlStr+') A WHERE  ROWNUM BETWEEN '+cast(@pa as nvarchar(10))+' AND '+cast(@pb as nvarchar(10))+' '
----SELECT @SqlStr
--	EXEC (@SqlStr)
--分页方式,改为限制返回行数

	SELECT @SqlStr= 'SELECT top 100 * FROM OPENQUERY ('+@LSName+' ,'''+@Query+''' )'
--SELECT @SqlStr
	EXEC (@SqlStr)
	SELECT @PCount=@@ROWCOUNT
	

--查询结束
END TRY
BEGIN CATCH
SELECT @PCount=0
INSERT INTO T_BaseJobMsg (F_RunID,F_Msg) VALUES (@GUID,N'查询ERROR信息:'+ERROR_MESSAGE())
SELECT ERROR_MESSAGE()
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[_Init_LinkServerAndJob]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--项目名称：初始化链接服务器设置
--说明：
--时间：2012-7-25 10:02:32 HCH
------------------------------------
create PROCEDURE [dbo].[_Init_LinkServerAndJob]
@Result VARCHAR(200) OUTPUT--运行结果
 AS 
BEGIN
SELECT @Result='链接服务器及作业计划JOB初始化成功'
BEGIN TRY
--游标开始
DECLARE @LSName NVARCHAR(50),@F_ID INT,@F_DBType TINYINT,@F_BigZoneID TINYINT,@F_BattleZoneID INT,@F_DBIP NVARCHAR(100),@F_DBName NVARCHAR(30),@F_DBUser NVARCHAR(30),@F_DBPSW NVARCHAR(30)
DECLARE SynTable_CURSOR CURSOR LOCAL FOR SELECT F_ID,F_DBType,F_BigZoneID,F_BattleZoneID,F_DBIP,F_DBName,F_DBUser,F_DBPSW FROM T_BaseParamDB WHERE LEN(F_DBPSW)>0
OPEN SynTable_CURSOR
FETCH NEXT FROM SynTable_CURSOR INTO @F_ID,@F_DBType,@F_BigZoneID,@F_BattleZoneID,@F_DBIP,@F_DBName,@F_DBUser,@F_DBPSW
WHILE @@FETCH_STATUS = 0
BEGIN
	declare @sign varchar(5)
	if(@F_BattleZoneID=-1)
		begin
			SELECT @LSName='LKSV_GSS_'+CAST(@F_DBType AS VARCHAR(5))+'_'+@F_DBName+'_'+CAST(@F_BigZoneID AS VARCHAR(5))--bigzone链接服务器名称
			set @sign=''
		end
	else
		begin
			set @sign=CAST(@F_BattleZoneID AS VARCHAR(5))
			SELECT @LSName='LKSV_GSS_'+CAST(@F_DBType AS VARCHAR(5))+'_'+@F_DBName+'_'+CAST(@F_BigZoneID AS VARCHAR(5))+'_'+@sign--链接服务器名称
			
		end
		--建立链接服务器
	IF EXISTS(SELECT TOP 1 1 FROM sys.servers WITH(NOLOCK)  WHERE is_linked=1 AND name=@LSName)
	BEGIN
	EXEC sp_dropserver  @LSName, 'droplogins' 
	END
declare @ds varchar(20)
	set @ds='GSLOG_DB'+@sign
	IF(@F_DBType=0  )--GSLOG_DB,GSDATADB,GSPARA_DB
		BEGIN
			DECLARE @Prov NVARCHAR(300)--35 ms
			SELECT @Prov= 'DRIVER={MySQL ODBC 5.1 Driver};SERVER='+@F_DBIP+';DATABASE='+@F_DBName+';UID='+@F_DBUser+';PORT=3306;pwd='+@F_DBPSW+';STMT=set names latin1;OPTION=2049'
			print @prov
			EXEC sp_addlinkedserver @server=@LSName, @srvproduct = @F_DBName, @provider = 'MSDASQL', @datasrc =@ds, @location = NULL, @provstr =@Prov, @catalog = NULL
			EXEC sp_addlinkedsrvlogin @rmtsrvname=@LSName, @useself='false', @rmtuser=@F_DBUser, @rmtpassword=null;
		END
	else IF( @F_DBType=3 )--GSLOG_DB,GSDATADB,GSPARA_DB
		BEGIN
			set @ds='gsdata_db'+@sign
 
			SELECT @Prov= 'DRIVER={MySQL ODBC 5.1 Driver};SERVER='+@F_DBIP+';DATABASE='+@F_DBName+';UID='+@F_DBUser+';PORT=3306;pwd='+@F_DBPSW+';STMT=set names latin1;OPTION=2049'
			print @prov
			EXEC sp_addlinkedserver @server=@LSName, @srvproduct = @F_DBName, @provider = 'MSDASQL', @datasrc = @ds, @location = NULL, @provstr =@Prov, @catalog = NULL
			EXEC sp_addlinkedsrvlogin @rmtsrvname=@LSName, @useself='false', @rmtuser=@F_DBUser, @rmtpassword=null;
		END
	else IF( @F_DBType=7)--GSLOG_DB,GSDATADB,GSPARA_DB
		BEGIN
			set @ds='gspara_db'+@sign
 
			SELECT @Prov= 'DRIVER={MySQL ODBC 5.1 Driver};SERVER='+@F_DBIP+';DATABASE='+@F_DBName+';UID='+@F_DBUser+';PORT=3306;pwd='+@F_DBPSW+';STMT=set names latin1;OPTION=2049'
			print @prov
			EXEC sp_addlinkedserver @server=@LSName, @srvproduct = @F_DBName, @provider = 'MSDASQL', @datasrc = @ds, @location = NULL, @provstr =@Prov, @catalog = NULL
			EXEC sp_addlinkedsrvlogin @rmtsrvname=@LSName, @useself='false', @rmtuser=@F_DBUser, @rmtpassword=null;
		END
	else IF( @F_DBType=6)--ZoneRoleDataDB
		BEGIN
			set @ds='ZoneRoleDataDB'+@sign
 
			SELECT @Prov= 'DRIVER={MySQL ODBC 5.1 Driver};SERVER='+@F_DBIP+';DATABASE='+@F_DBName+';UID='+@F_DBUser+';PORT=3306;pwd='+@F_DBPSW+';STMT=set names latin1;OPTION=2049'
			print @prov
			EXEC sp_addlinkedserver @server=@LSName, @srvproduct = @F_DBName, @provider = 'MSDASQL', @datasrc = @ds, @location = NULL, @provstr =@Prov, @catalog = NULL
			EXEC sp_addlinkedsrvlogin @rmtsrvname=@LSName, @useself='false', @rmtuser=@F_DBUser, @rmtpassword=null;
		END
	ELSE IF(@F_DBType=1 OR @F_DBType=2 OR @F_DBType=4 OR @F_DBType=5 or @F_DBType=8)--GAMELOGDB,GAMECOREDB,GSSDB,UserCoreDB,maindb
	BEGIN
		declare @conn varchar(max)
		set @conn='server='+@F_DBIP+';database='+@F_DBName+';uid='+@F_DBUser+';pwd='+@F_DBPSW+';'
		declare @src varchar(30)
		set @src=@F_DBName+@sign
		EXEC master.dbo.sp_addlinkedserver @server = @LSName, @srvproduct=@src, @provider=N'SQLOLEDB', @datasrc=null,@catalog=@F_DBName,@provstr=@conn
		EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = @LSName, @locallogin = NULL , @useself = N'False', @rmtuser = @F_DBUser, @rmtpassword = @F_DBPSW
		EXEC master.dbo.sp_serveroption @server=@LSName, @optname=N'rpc', @optvalue=N'true'
		EXEC master.dbo.sp_serveroption @server=@LSName, @optname=N'rpc out', @optvalue=N'true'
	END
	ELSE
	BEGIN
	SELECT 1
	END
--测试连接
	DECLARE @retval INT
	BEGIN TRY
		EXEC @retval = sys.sp_testlinkedserver @LSName;
	END TRY
	BEGIN CATCH
		SET @retval = sign(@@error);
		SELECT @Result='IP:'+@F_DBIP+'数据库:'+@F_DBName+' 信息:'+ERROR_MESSAGE()+' 请检查后重试' RETURN
	END CATCH;
	IF @retval<>0 --链接服务器无法连接远程服务器
	BEGIN 
	SELECT @Result='IP:'+@F_DBIP+'数据库:'+@F_DBName+' 测试连通失败,请检查后重试' RETURN
	END 

	UPDATE T_BaseParamDB SET F_DBPSW='' WHERE F_ID=@F_ID

FETCH NEXT  FROM SynTable_CURSOR  INTO @F_ID,@F_DBType,@F_BigZoneID,@F_BattleZoneID,@F_DBIP,@F_DBName,@F_DBUser,@F_DBPSW
END
CLOSE SynTable_CURSOR
DEALLOCATE SynTable_CURSOR
--游标结束





END TRY
BEGIN CATCH
SELECT @Result=ERROR_MESSAGE()
IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
END CATCH
RETURN
END

QuitWithRollback:
IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
RETURN
GO
/****** Object:  StoredProcedure [dbo].[_GSSTool_RoleRecover]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--项目名称：GSS工具 角色恢复
--说明：角色恢复
--时间：2012-01-10 11:11:59 HCH
------------------------------------
CREATE PROCEDURE [dbo].[_GSSTool_RoleRecover]
@BigZoneID INT,
@ZoneID INT,
@UserID BIGINT,
@RoleID BIGINT,
@Result INT OUTPUT
AS
BEGIN
DECLARE @LSNameG NVARCHAR(50),@LSNameZ NVARCHAR(50),@GUID VARCHAR(36),@SqlStr NVARCHAR(MAX)
SELECT @Result=0

BEGIN TRY
--查询开始
	SELECT top 1 @LSNameG='[LKSV_GSS_'+CAST(F_DBType AS VARCHAR(5))+'_'+F_DBName+'_'+CAST(F_BigZoneID AS VARCHAR(5))+'_'+CAST(F_BattleZoneID AS VARCHAR(5))+'].'+F_DBName+'.' FROM T_BaseParamDB  WITH(NOLOCK) WHERE F_DBType=2 AND F_BigZoneID=@BigZoneID AND F_BattleZoneID=-1
	IF(@LSNameG is NULL)
	BEGIN
	RAISERROR('找不到此数据库配置项 GameCoreDB', 16,-1)
	END

	SELECT top 1 @LSNameZ='[LKSV_GSS_'+CAST(F_DBType AS VARCHAR(5))+'_'+F_DBName+'_'+CAST(F_BigZoneID AS VARCHAR(5))+'_'+CAST(F_BattleZoneID AS VARCHAR(5))+'].'+F_DBName+'.' FROM T_BaseParamDB  WITH(NOLOCK) WHERE F_DBType=6 AND F_BigZoneID=@BigZoneID AND F_BattleZoneID=@ZoneID
	IF(@LSNameZ is NULL)
	BEGIN
	RAISERROR('找不到此数据库配置项 ZoneRoleDataDB', 16,-1)
	END

---执行GameCoreDB角色恢复
	DECLARE @SqlParam NVARCHAR(300);
	SELECT @SqlStr= 'EXEC '+@LSNameG+'[dbo].[_WSS_Role_Recover] @ZoneID=@ZoneIDi,@UserID = @UserIDi,@RoleID = @RoleIDi,@Result = @Resulti OUTPUT'
	SELECT @SqlParam=N'@ZoneIDi TINYINT,@UserIDi BIGINT,@RoleIDi BIGINT,@Resulti INT OUTPUT'
	EXEC sp_executesql  @SqlStr,@SqlParam,@ZoneID,@UserID,@RoleID,@Result OUTPUT;
	IF @Result=0
	BEGIN
--执行ZoneRoleDataDB角色恢复
		SELECT @SqlStr= 'EXEC '+@LSNameZ+'[dbo].[_WSS_Role_Recover] @UserID = @UserIDi,@RoleID = @RoleIDi,@Result = @Resulti OUTPUT'
		SELECT @SqlParam=N'@UserIDi BIGINT,@RoleIDi BIGINT,@Resulti INT OUTPUT'
		EXEC sp_executesql  @SqlStr,@SqlParam,@UserID,@RoleID,@Result OUTPUT;
		IF(@Result=5800)
		RAISERROR('GameCore已恢复,ZoneRoleDataDB删除表无此角色', 16,-1)
		ELSE IF(@Result<>0)
		RAISERROR('GameCore已恢复,但ZoneRoleDataDB出现错误', 16,-1)
	END

--查询结束
END TRY
BEGIN CATCH
SELECT @Result=1
SELECT @SqlStr=ERROR_MESSAGE()
RAISERROR(@SqlStr, 16,-1)
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[_EXEC_SQLCustom]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--项目名称：执行远程SQL
--说明：SQLSERVER,MYSQL通用
--时间：2012-01-10 11:11:59 HCH
------------------------------------
CREATE PROCEDURE [dbo].[_EXEC_SQLCustom]
@BigZoneID INT,
@ZoneID INT,
@DBType SMALLINT,
@Query NVARCHAR(MAX),
@RCount INT OUTPUT
AS
BEGIN
	DECLARE @LSName NVARCHAR(50),@SqlStr NVARCHAR(MAX)
	SELECT @RCount=0

	BEGIN TRY
	--查询开始
		SELECT top 1 @LSName='[LKSV_GSS_'+CAST(F_DBType AS VARCHAR(5))+'_'+F_DBName+'_'+CAST(F_BigZoneID AS VARCHAR(5))+'_'+CAST(F_BattleZoneID AS VARCHAR(5))+']' FROM T_BaseParamDB  WITH(NOLOCK) WHERE F_DBType=@DBType AND F_BigZoneID=@BigZoneID AND F_BattleZoneID=@ZoneID

		IF(@LSName is NULL)
		BEGIN
		RAISERROR('找不到此数据库配置项', 16,-1)
		END

		SELECT @SqlStr=REPLACE(@Query,'[LKSV]',@LSName)
	--SELECT @SqlStr
		EXEC (@SqlStr)
		SELECT @RCount=@@ROWCOUNT

	--查询结束
	END TRY
	BEGIN CATCH
		SELECT @RCount=0
		DECLARE @ERRORSTR NVARCHAR(200)
		SELECT @ERRORSTR=ERROR_MESSAGE()
		RAISERROR(@ERRORSTR, 16,-1)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_VerifyRoleRecovery]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_VerifyRoleRecovery]
(
	@bigZone int,
	@zoneID int,
	@uid int,
	@delRid int ,
	@code int output
)
as
declare @linkGameCore varchar(50)
select @linkGameCore='LKSV_GSS_'+CONVERT(varchar(2),F_DBType)+'_'+CONVERT(varchar(30),F_DBName)+'_'+CONVERT(varchar(2),F_BigZoneID) from GSSDB.dbo.T_BaseParamDB 
where F_DBType=2 and F_BigZoneID=@bigZone and F_BattleZoneID=-1
print  @linkGameCore
if(nullif(@linkGameCore,'') is null)
	begin
		set @code=4041
		return
	end
declare @tab varchar(20)
set @tab='T_RoleBaseData_'+CONVERT(varchar(1),@uid%5)
declare @ver nvarchar(1000)
declare @replace int
declare @rec int
set @ver='
select @rec=COUNT( F_RoleID)  from {link}GameCoreDB.dbo.T_RoleBaseDataDeleted where   F_RoleID=@delRid
select @replace =COUNT(r.F_RoleID) from  {link}GameCoreDB.dbo.{t} r,{link}GameCoreDB.dbo.T_RoleBaseDataDeleted d
 where  r.F_yRolePos=d.F_yRolePos and r.F_UserID=d.F_RoleID and d.F_ZoneID=r.F_ZoneID
 and   d.F_RoleID=@delRid '
 set @ver=REPLACE(@ver,'{link}',@linkGameCore+'.')
 set @ver=REPLACE(@ver,'{t}',@tab)
 exec sp_executesql @ver,N'@replace int output,@rec int out,@delRid int',@replace out,@rec out,@delRid
 print @ver
 --can not recovery the role :the role of position is used
 if(@rec=0) -- no refresh data
	begin
		set @code=2
		return 
	end
 if(@replace>0)
	begin
		set @code=1
		return
	end
	declare @cmd nvarchar (2000)
	--{link}GameCoreDB.dbo.T_RoleBaseData_0 
	set @cmd='insert into {link}GameCoreDB.dbo.{t} 
	(F_RoleID,F_UserID,F_RoleName,F_RolePwd,F_ZoneID,F_CampID,F_Pro,F_Sex,F_Level,F_LastScene,F_Exp,F_StoreMoney,F_GameMoney,F_RealMoney,F_CreateTime,F_UpdateTime,F_yRolePos,F_HaveRoleData,F_SkinColor,F_FaceType,F_HairType,F_HairColor,F_EyeBrowType,F_MouthType,F_NoseType,F_EyeType,F_Flag,F_dwCheckNGSCode,F_OnlineNum,F_OnlineTime,F_WeaponID,F_BreastplateID,F_HelmetID,F_WingID,F_WeaponLv,F_BreastplateLv,F_PetID,F_HairStyle,F_FaceStyle)
	select 
	F_RoleID,F_UserID,F_RoleName,F_RolePwd,F_ZoneID,F_CampID,F_Pro,F_Sex,F_Level,F_LastScene,F_Exp,F_StoreMoney,F_GameMoney,F_RealMoney,F_CreateTime,F_UpdateTime,F_yRolePos,F_HaveRoleData,F_SkinColor,F_FaceType,F_HairType,F_HairColor,F_EyeBrowType,F_MouthType,F_NoseType,F_EyeType,F_Flag,F_dwCheckNGSCode,F_OnlineNum,F_OnlineTime,F_WeaponID,F_BreastplateID,F_HelmetID,F_WingID,F_WeaponLv,F_BreastplateLv,F_PetID,F_HairStyle,F_FaceStyle 
	from {link}GameCoreDB.dbo.T_RoleBaseDataDeleted where F_RoleID=@delRid
	delete from {link}GameCoreDB.dbo.T_RoleBaseDataDeleted where F_RoleID=@delRid
	'
	set @cmd=REPLACE(@cmd,'{link}',@linkGameCore+'.')
	set @cmd=REPLACE(@cmd,'{t}',@tab)
	print @cmd
	exec sp_executesql @cmd,N'@delRid int',@delRid
	
	set @code=200
	print @code
GO
/****** Object:  StoredProcedure [dbo].[SP_TaskLogicSyncComplate]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_TaskLogicSyncComplate]
(
	@taskId int
)
as 
begin
	update dbo.WorkOrderLogicData set SyncConfig=1 where TaskId=@taskId
end
GO
/****** Object:  StoredProcedure [dbo].[SP_QueryGameDBConnString]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_QueryGameDBConnString]
 (
	@dbName varchar(30) 
 )
 as
 select name,product,provider_string from sys.servers 
where name in(
select 'LKSV_GSS_'+convert(varchar(3),F_DBType)+'_'+F_DBName+'_'+convert(varchar(3),F_BigZoneID)
 from dbo.T_BaseParamDB 
 where F_DBName=@dbName
 )
GO
/****** Object:  StoredProcedure [dbo].[SP_AddTaskLogicDataWithTask]    Script Date: 08/23/2017 15:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AddTaskLogicDataWithTask]
(
	@logicData nvarchar(max),
	@createBy int,
	@F_GameBigZone nvarchar(16),
	@F_GameZone nvarchar(16),
	@title nvarchar(30),
	@F_Note nvarchar(500),
	@TaskTypeID int,
	@AppId int,
	@taskId int output
)
as 
begin
	declare @time datetime
	set @time=GETDATE() 
	exec   dbo.GSS_Tasks_ADD @F_Title=@title,@F_Note=@F_Note,@F_From=100103100,@F_Type=@TaskTypeID,@F_VipLevel=null,@F_LimitType=null,@F_LimitTime=null,
	@F_State=100100103, --work order into use[turn out of work order]
	@F_GameName=@AppId,@F_GameBigZone=@F_GameBigZone,@F_GameZone=@F_GameZone,
	@F_GUserID=null ,
	@F_GUserName =null  ,@F_GRoleID=null  ,
	@F_GRoleName =null ,@F_Telphone=null  ,
	@F_GPeopleName=null  ,@F_DutyMan =null  ,
	@F_PreDutyMan =null  ,@F_CreatMan=@createBy  ,
	@F_CreatTime =@time,@F_EditMan=null  ,
	@F_EditTime =null  ,@F_URInfo =null  ,
	@F_Rowtype =null  ,@F_CUserName  =null ,
	@F_CPSWProtect =null  ,@F_CPersonID =null  ,
	@F_COther =null  ,@F_OLastLoginTime =null  ,
	@F_OCanRestor =null  ,@F_OAlwaysPlace  =null ,
	@F_TToolUsed =null  ,@F_TUseData =null,@F_ID=@taskid output 
	insert into WorkOrderLogicData([Id],[TaskId],[LogicData],[CreateTime],[IsDelete],[SyncConfig])
	values(NEWID(),@taskid,@logicData,@time,0,0)
end
if(OBJECT_ID('SP_TaskLogicSyncComplate','p') is not null)
	drop procedure SP_TaskLogicSyncComplate
GO
/****** Object:  Default [DF_T_ParamSynDB_F_DBType]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_BaseParamDB] ADD  CONSTRAINT [DF_T_ParamSynDB_F_DBType]  DEFAULT ((0)) FOR [F_DBType]
GO
/****** Object:  Default [DF_T_ParamSynDB_F_BattleZoneID]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_BaseParamDB] ADD  CONSTRAINT [DF_T_ParamSynDB_F_BattleZoneID]  DEFAULT ((-1)) FOR [F_BattleZoneID]
GO
/****** Object:  Default [DF_T_CountDetail_F_Time]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_CountDetail] ADD  CONSTRAINT [DF_T_CountDetail_F_Time]  DEFAULT (getdate()) FOR [F_Time]
GO
/****** Object:  Default [DF__T_Departm__F_Par__267ABA7A]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Department] ADD  DEFAULT ((0)) FOR [F_ParentID]
GO
/****** Object:  Default [DF__T_Diction__F_IsU__29572725]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Dictionary] ADD  DEFAULT ((1)) FOR [F_IsUsed]
GO
/****** Object:  Default [DF__T_Diction__F_Sor__2A4B4B5E]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Dictionary] ADD  DEFAULT ((0)) FOR [F_Sort]
GO
/****** Object:  Default [DF_T_FDBISql_F_UserID]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_FDBISql] ADD  CONSTRAINT [DF_T_FDBISql_F_UserID]  DEFAULT ((-1)) FOR [F_UserID]
GO
/****** Object:  Default [DF_T_FDBISql_F_DaTeTime]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_FDBISql] ADD  CONSTRAINT [DF_T_FDBISql_F_DaTeTime]  DEFAULT (getdate()) FOR [F_DaTeTime]
GO
/****** Object:  Default [DF__T_GameCon__F_IsU__2D27B809]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameConfig] ADD  DEFAULT ((1)) FOR [F_IsUsed]
GO
/****** Object:  Default [DF__T_GameCon__F_Sor__2E1BDC42]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameConfig] ADD  DEFAULT ((0)) FOR [F_Sort]
GO
/****** Object:  Default [DF_T_GameNotice_F_ReciveBigZone]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_ReciveBigZone]  DEFAULT ((-1)) FOR [F_ReciveBigZone]
GO
/****** Object:  Default [DF_T_GameNotice_F_ReciveZone]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_ReciveZone]  DEFAULT ((-1)) FOR [F_ReciveZone]
GO
/****** Object:  Default [DF_T_GameNotice_F_ReciveLine]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_ReciveLine]  DEFAULT ((-1)) FOR [F_ReciveLine]
GO
/****** Object:  Default [DF_T_GameNotice_F_MSGLocation]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_MSGLocation]  DEFAULT ((-1)) FOR [F_MSGLocation]
GO
/****** Object:  Default [DF_T_GameNotice_F_RunTimeBegin]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_RunTimeBegin]  DEFAULT (getdate()) FOR [F_RunTimeBegin]
GO
/****** Object:  Default [DF_T_GameNotice_F_RunTimeEnd]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_RunTimeEnd]  DEFAULT (getdate()) FOR [F_RunTimeEnd]
GO
/****** Object:  Default [DF_T_GameNotice_F_RunInterval]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_RunInterval]  DEFAULT ((0)) FOR [F_RunInterval]
GO
/****** Object:  Default [DF_T_GameNotice_F_State]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_State]  DEFAULT ((0)) FOR [F_TaskState]
GO
/****** Object:  Default [DF_T_GameNotice_F_TaskID]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_GameNotice] ADD  CONSTRAINT [DF_T_GameNotice_F_TaskID]  DEFAULT ((-1)) FOR [F_TaskID]
GO
/****** Object:  Default [DF_T_Menus_F_ParentID]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Menus] ADD  CONSTRAINT [DF_T_Menus_F_ParentID]  DEFAULT ((0)) FOR [F_ParentID]
GO
/****** Object:  Default [DF_T_Menus_F_IsUsed]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Menus] ADD  CONSTRAINT [DF_T_Menus_F_IsUsed]  DEFAULT ((1)) FOR [F_IsUsed]
GO
/****** Object:  Default [DF_T_Menus_F_Sort]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Menus] ADD  CONSTRAINT [DF_T_Menus_F_Sort]  DEFAULT ((0)) FOR [F_Sort]
GO
/****** Object:  Default [DF_T_Notfiy_F_DateTime]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Notfiy] ADD  CONSTRAINT [DF_T_Notfiy_F_DateTime]  DEFAULT (getdate()) FOR [F_DateTime]
GO
/****** Object:  Default [DF_T_Notfiy_F_IsSeed]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Notfiy] ADD  CONSTRAINT [DF_T_Notfiy_F_IsSeed]  DEFAULT ((0)) FOR [F_IsSeed]
GO
/****** Object:  Default [DF_T_PubNotice_F_DateTime]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_PubNotice] ADD  CONSTRAINT [DF_T_PubNotice_F_DateTime]  DEFAULT (getdate()) FOR [F_DateTime]
GO
/****** Object:  Default [DF_T_QuestAnswer_F_Time]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_QuestAnswer] ADD  CONSTRAINT [DF_T_QuestAnswer_F_Time]  DEFAULT (getdate()) FOR [F_Time]
GO
/****** Object:  Default [DF_T_QuestItem_F_ItemType]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_QuestItem] ADD  CONSTRAINT [DF_T_QuestItem_F_ItemType]  DEFAULT ((0)) FOR [F_ItemType]
GO
/****** Object:  Default [DF_T_QuestKey_F_AnswerNum_1]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_QuestKey] ADD  CONSTRAINT [DF_T_QuestKey_F_AnswerNum_1]  DEFAULT ((0)) FOR [F_AnswerNum]
GO
/****** Object:  Default [DF__T_Roles__F_IsUse__30F848ED]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Roles] ADD  DEFAULT ((1)) FOR [F_IsUsed]
GO
/****** Object:  Default [DF_T_Tasks_F_CreatTime]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Tasks] ADD  CONSTRAINT [DF_T_Tasks_F_CreatTime]  DEFAULT (getdate()) FOR [F_CreatTime]
GO
/****** Object:  Default [DF_T_Tasks_F_Rowtype]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Tasks] ADD  CONSTRAINT [DF_T_Tasks_F_Rowtype]  DEFAULT ((0)) FOR [F_Rowtype]
GO
/****** Object:  Default [DF_T_Tasks_F_TToolUsed]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Tasks] ADD  CONSTRAINT [DF_T_Tasks_F_TToolUsed]  DEFAULT ((0)) FOR [F_TToolUsed]
GO
/****** Object:  Default [DF_T_TasksLog_F_Rowtype]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_TasksLog] ADD  CONSTRAINT [DF_T_TasksLog_F_Rowtype]  DEFAULT ((0)) FOR [F_Rowtype]
GO
/****** Object:  Default [DF__T_Users__F_Sex__34C8D9D1]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  DEFAULT ((0)) FOR [F_Sex]
GO
/****** Object:  Default [DF__T_Users__F_RegTi__35BCFE0A]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  DEFAULT (getdate()) FOR [F_RegTime]
GO
/****** Object:  Default [DF__T_Users__F_LastI__36B12243]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  DEFAULT (getdate()) FOR [F_LastInTime]
GO
/****** Object:  Default [DF__T_Users__F_IsUse__37A5467C]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  DEFAULT ((1)) FOR [F_IsUsed]
GO
/****** Object:  Default [DF__T_Version__F_Upt__0DAF0CB0]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[T_Version] ADD  DEFAULT (getdate()) FOR [F_Uptime]
GO
/****** Object:  Default [DF__WorkOrder__Creat__5CD6CB2B]    Script Date: 08/23/2017 15:50:41 ******/
ALTER TABLE [dbo].[WorkOrderLogicData] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
if(OBJECT_ID('SP_AddLogicDataAfterTask','p') is not null)
	drop procedure SP_AddLogicDataAfterTask
go
create procedure SP_AddLogicDataAfterTask
(
	@taskId int,
	@logicData nvarchar(max), --logic  of json string
	@code int output
)
as
declare @time datetime 
set @time=GETDATE()
insert into WorkOrderLogicData([Id],[TaskId],[LogicData],[CreateTime],[IsDelete],[SyncConfig])
	values(NEWID(),@taskid,@logicData,@time,0,0)
set @code=200