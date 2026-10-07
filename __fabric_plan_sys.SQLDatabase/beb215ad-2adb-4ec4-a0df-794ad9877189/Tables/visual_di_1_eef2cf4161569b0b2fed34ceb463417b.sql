CREATE TABLE [beb215ad-2adb-4ec4-a0df-794ad9877189].[visual_di_1_eef2cf4161569b0b2fed34ceb463417b] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimCustomerSegmentSegmentName]                          NVARCHAR (255)   NULL,
    [dim_DimProductCategory]                                     NVARCHAR (255)   NULL,
    [dim_DimProductSubCategory]                                  NVARCHAR (255)   NULL,
    [dim_DimProductProductName]                                  NVARCHAR (255)   NULL,
    [dim_LocalDateTable_621eeb364be244ec8984617bd0defefaYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_621eeb364be244ec8984617bd0defefaQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_621eeb364be244ec8984617bd0defefaMonth]   NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

