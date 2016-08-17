USE [AppsureTest]
GO

/****** Object:  Table [dbo].[Artists]    Script Date: 2016-08-16 03:13:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Artists](
	[Artist name] [nvarchar](30) NULL,
	[Unique identifier] [uniqueidentifier] NOT NULL,
	[Country] [nchar](2) NULL,
	[Aliases] [nvarchar](500) NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[Unique identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


