CREATE TABLE [5428be62-1315-43f8-8803-6be69954b861].[powertable_form_urls] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [formId]     INT            NOT NULL,
    [expiry]     INT            NULL,
    [accessType] INT            NOT NULL,
    [status]     INT            CONSTRAINT [DF_f060795b8cc3542d45145cc67c0] DEFAULT ((10)) NOT NULL,
    [createdBy]  NVARCHAR (128) NOT NULL,
    [updatedBy]  NVARCHAR (128) NOT NULL,
    [createdAt]  INT            NOT NULL,
    [updatedAt]  INT            NOT NULL,
    CONSTRAINT [PK_a8de3261bd7d889973cd93077cc] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_1fcd58305a0e09524eb0560f186] FOREIGN KEY ([formId]) REFERENCES [5428be62-1315-43f8-8803-6be69954b861].[powertable_forms] ([id])
);


GO

