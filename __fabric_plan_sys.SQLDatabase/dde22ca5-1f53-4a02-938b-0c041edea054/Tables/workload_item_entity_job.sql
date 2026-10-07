CREATE TABLE [dde22ca5-1f53-4a02-938b-0c041edea054].[workload_item_entity_job] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [jobId]                VARCHAR (255) NOT NULL,
    [workloadItemEntityId] INT           NOT NULL,
    [startTime]            INT           NULL,
    [endTime]              INT           NULL,
    [errorCode]            VARCHAR (255) NULL,
    [errorMsg]             VARCHAR (MAX) NULL,
    [jobMeta]              VARCHAR (MAX) NULL,
    [type]                 INT           NOT NULL,
    [status]               INT           CONSTRAINT [DF_ba53f465f742ca38a96d480aca1] DEFAULT ((10)) NOT NULL,
    [createdBy]            VARCHAR (128) NOT NULL,
    [updatedBy]            VARCHAR (128) NOT NULL,
    [createdAt]            INT           NOT NULL,
    [updatedAt]            INT           NOT NULL,
    CONSTRAINT [PK_9afdb9ed0d61dae57ad9fffbfcc] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

