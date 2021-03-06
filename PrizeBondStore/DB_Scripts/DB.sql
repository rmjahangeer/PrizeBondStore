/****** Object:  Table [dbo].[Denomination]    Script Date: 25-Sep-16 3:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denomination](
	[DenominationId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK__Denomina__22DF18E581D1CA71] PRIMARY KEY CLUSTERED 
(
	[DenominationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrizeBond]    Script Date: 25-Sep-16 3:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrizeBond](
	[PrizeBondCode] [nvarchar](50) NOT NULL,
	[DenominationId] [int] NOT NULL,
 CONSTRAINT [PK_PrizeBond] PRIMARY KEY CLUSTERED 
(
	[PrizeBondCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PrizeBond]  WITH CHECK ADD  CONSTRAINT [FK_PrizeBond_Denomination] FOREIGN KEY([DenominationId])
REFERENCES [dbo].[Denomination] ([DenominationId])
GO
ALTER TABLE [dbo].[PrizeBond] CHECK CONSTRAINT [FK_PrizeBond_Denomination]
GO
