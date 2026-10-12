CREATE TABLE [9874a99b-401b-4fc1-8040-4417ad53c385].[visual_di_2_de422a9807087c8960a1818a9f421017] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dMonth]   NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographyContinent]               NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographySubRegion]               NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographyCountry]                 NVARCHAR (255)   NULL,
    [dim_DimGeographyHRegionDimGeographyCity]                    NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

