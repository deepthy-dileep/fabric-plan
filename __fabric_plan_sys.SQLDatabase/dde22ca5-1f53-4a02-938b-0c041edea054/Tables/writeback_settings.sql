CREATE TABLE [dde22ca5-1f53-4a02-938b-0c041edea054].[writeback_settings] (
    [id]         INT              IDENTITY (1, 1) NOT NULL,
    [visualId]   INT              NOT NULL,
    [meta]       NVARCHAR (MAX)   NOT NULL,
    [status]     INT              CONSTRAINT [DF_9f10efbc84449f82c18a246129c] DEFAULT ((10)) NOT NULL,
    [createdBy]  NVARCHAR (128)   NOT NULL,
    [updatedBy]  NVARCHAR (128)   NOT NULL,
    [createdAt]  INT              NOT NULL,
    [updatedAt]  INT              NOT NULL,
    [recordGuid] UNIQUEIDENTIFIER CONSTRAINT [DF_writeback_settings_recordGuid] DEFAULT (newsequentialid()) NOT NULL,
    CONSTRAINT [PK_f7667e00688b086e1292e6615a2] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_94e8f3168953c07cd61ff067f34] FOREIGN KEY ([visualId]) REFERENCES [dde22ca5-1f53-4a02-938b-0c041edea054].[visual] ([id])
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UQ_writeback_settings_recordGuid]
    ON [dde22ca5-1f53-4a02-938b-0c041edea054].[writeback_settings]([recordGuid] ASC);


GO

