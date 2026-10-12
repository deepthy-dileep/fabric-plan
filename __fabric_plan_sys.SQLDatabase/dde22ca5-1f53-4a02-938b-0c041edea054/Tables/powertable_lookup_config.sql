CREATE TABLE [dde22ca5-1f53-4a02-938b-0c041edea054].[powertable_lookup_config] (
    [id]                  INT              IDENTITY (1, 1) NOT NULL,
    [sourceEntityId]      INT              NOT NULL,
    [sourceEntityType]    INT              NOT NULL,
    [relationshipMapping] VARCHAR (MAX)    NOT NULL,
    [lookupsourceId]      INT              NOT NULL,
    [lookupKey]           VARCHAR (255)    NULL,
    [lookupValue]         VARCHAR (MAX)    NULL,
    [sourceId]            INT              NOT NULL,
    [status]              INT              CONSTRAINT [DF_9cdd5919af14d6c8ded1258b9ca] DEFAULT ((10)) NOT NULL,
    [createdBy]           NVARCHAR (128)   NOT NULL,
    [updatedBy]           NVARCHAR (128)   NOT NULL,
    [createdAt]           INT              NOT NULL,
    [updatedAt]           INT              NOT NULL,
    [recordGuid]          UNIQUEIDENTIFIER CONSTRAINT [DF_powertable_lookup_config_recordGuid] DEFAULT (newsequentialid()) NOT NULL,
    CONSTRAINT [PK_39a062b26e8fd0d3e2bf74d01c9] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_44ada73e90ba9eb593ec9ae3d0c] FOREIGN KEY ([sourceId]) REFERENCES [dde22ca5-1f53-4a02-938b-0c041edea054].[powertable_source] ([id])
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UQ_powertable_lookup_config_recordGuid]
    ON [dde22ca5-1f53-4a02-938b-0c041edea054].[powertable_lookup_config]([recordGuid] ASC);


GO

