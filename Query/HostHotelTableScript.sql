USE [HostHotel]
GO

/****** Object:  Table [dbo].[HostHotel]    Script Date: 10/06/2021 22:14:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HostHotel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Summary] [varchar](max) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Facilities] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

