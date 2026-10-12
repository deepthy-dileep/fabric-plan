CREATE TABLE [2a30a492-e638-4079-92c2-b25a9fb5fe48].[writeback_destination] (
    [id]                   INT            IDENTITY (1, 1) NOT NULL,
    [visualId]             INT            NOT NULL,
    [tableName]            VARCHAR (255)  NOT NULL,
    [connectionId]         VARCHAR (255)  NULL,
    [settings]             VARCHAR (MAX)  NOT NULL,
    [settingsHash]         VARCHAR (255)  NULL,
    [status]               INT            CONSTRAINT [DF_cb8e1159508caadee72fa129bda] DEFAULT ((10)) NOT NULL,
    [createdBy]            NVARCHAR (128) NOT NULL,
    [updatedBy]            NVARCHAR (128) NOT NULL,
    [createdAt]            INT            NOT NULL,
    [updatedAt]            INT            NOT NULL,
    [connectionIdVariable] VARCHAR (256)  NULL,
    CONSTRAINT [PK_d502ba6b580c8ed85f57e97e10d] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_0ddd09926ffe2915c880b726bb7] FOREIGN KEY ([visualId]) REFERENCES [2a30a492-e638-4079-92c2-b25a9fb5fe48].[visual] ([id])
);


GO

