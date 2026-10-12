CREATE TABLE [5428be62-1315-43f8-8803-6be69954b861].[visual_di_1_05cf058b91eb285954298f4bd7ef9468] (
    [id]                        BIGINT         IDENTITY (1, 1) NOT NULL,
    [rowId]                     NVARCHAR (255) NOT NULL,
    [colId]                     NVARCHAR (255) NOT NULL,
    [scenarioId]                INT            NULL,
    [filterContextHash]         NVARCHAR (255) NULL,
    [updatedAt]                 INT            NOT NULL,
    [updatedBy]                 NVARCHAR (128) NOT NULL,
    [dim_salescustomer_country] NVARCHAR (255) NULL,
    [dim_salescustomer_city]    NVARCHAR (255) NULL,
    [dim_dates2026quarter_name] NVARCHAR (255) NULL,
    [measure_1]                 NVARCHAR (MAX) NULL,
    [measure_1_meta]            NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

