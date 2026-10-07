CREATE TABLE [dde22ca5-1f53-4a02-938b-0c041edea054].[visual_di_1_487fd73cd608eae0f0edf89332251cd7] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimGeographyHRegionDimGeographyContinent]               NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographySubRegion]               NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographyCountry]                 NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographyCity]                    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dMonth]   NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

