﻿CREATE TABLE [dbo].[Exercises] (
    [Id]              UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [Name]            NVARCHAR (MAX)   NULL,
    [Description]     NVARCHAR (MAX)   NULL,
    [VideoUrl]        NVARCHAR (MAX)   NULL,
    [MusclesInvolved] NVARCHAR (MAX)   NULL,
    [Equipment]       NVARCHAR (MAX)   NULL,
    [Exercise_Id]     UNIQUEIDENTIFIER NULL,
    [Sample] NCHAR(10) NULL, 
    CONSTRAINT [PK_dbo.Exercises] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Exercises_dbo.Exercises_Exercise_Id] FOREIGN KEY ([Exercise_Id]) REFERENCES [dbo].[Exercises] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IX_Exercise_Id]
    ON [dbo].[Exercises]([Exercise_Id] ASC);

