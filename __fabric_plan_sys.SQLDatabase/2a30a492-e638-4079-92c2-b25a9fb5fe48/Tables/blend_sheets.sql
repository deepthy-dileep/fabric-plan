CREATE TABLE [2a30a492-e638-4079-92c2-b25a9fb5fe48].[blend_sheets] (
    [id]        NVARCHAR (128) NOT NULL,
    [name]      VARCHAR (255)  NOT NULL,
    [type]      INT            NOT NULL,
    [meta]      NVARCHAR (MAX) NOT NULL,
    [createdAt] INT            NOT NULL,
    [updatedAt] INT            NOT NULL,
    [createdBy] NVARCHAR (128) NOT NULL,
    [updatedBy] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_blend_sheets] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

