CREATE TABLE [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].[planning_snapshot_job] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [jobId]      VARCHAR (255)  NOT NULL,
    [visualId]   INT            NOT NULL,
    [startTime]  INT            NULL,
    [endTime]    INT            NULL,
    [scenarioId] INT            NULL,
    [errorMeta]  NVARCHAR (MAX) NULL,
    [status]     INT            CONSTRAINT [DF_bc93d8a7c28ede2c88dfb1dd28f] DEFAULT ((10)) NOT NULL,
    [createdBy]  NVARCHAR (128) NOT NULL,
    [updatedBy]  NVARCHAR (128) NOT NULL,
    [createdAt]  INT            NOT NULL,
    [updatedAt]  INT            NOT NULL,
    CONSTRAINT [PK_3ffc809b137c80a8a69feed753a] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_690f78639a29e4ed8e91d028d15] FOREIGN KEY ([visualId]) REFERENCES [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].[visual] ([id]) ON DELETE CASCADE,
    CONSTRAINT [FK_9794ca9d06744d1bbc501c08a77] FOREIGN KEY ([scenarioId]) REFERENCES [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].[scenario] ([id]) ON DELETE CASCADE
);


GO

