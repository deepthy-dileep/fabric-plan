CREATE TABLE [2315c4dd-77a8-46a3-98e6-10e53cac29f9].[visual_di_1_5ef3ab37d453cb8aa37c2dafb4b571e2] (
    [id]                 BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]              NVARCHAR (255)   NOT NULL,
    [colId]              NVARCHAR (255)   NOT NULL,
    [scenarioId]         INT              NULL,
    [filterContextHash]  NVARCHAR (255)   NULL,
    [updatedAt]          INT              NOT NULL,
    [updatedBy]          NVARCHAR (128)   NOT NULL,
    [dim_ProductProduct] NVARCHAR (255)   NULL,
    [dim_RegionsCountry] NVARCHAR (255)   NULL,
    [measure_1]          DECIMAL (30, 10) NULL,
    [measure_2]          DECIMAL (30, 10) NULL,
    [measure_1_meta]     NVARCHAR (255)   NULL,
    [measure_2_meta]     NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

