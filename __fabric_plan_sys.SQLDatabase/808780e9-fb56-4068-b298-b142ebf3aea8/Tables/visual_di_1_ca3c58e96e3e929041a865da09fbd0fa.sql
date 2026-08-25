CREATE TABLE [808780e9-fb56-4068-b298-b142ebf3aea8].[visual_di_1_ca3c58e96e3e929041a865da09fbd0fa] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimGeographyContinent]                                  NVARCHAR (255)   NULL,
    [dim_DimGeographySubRegion]                                  NVARCHAR (255)   NULL,
    [dim_DimGeographyCountry]                                    NVARCHAR (255)   NULL,
    [dim_DimGeographyCity]                                       NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dMonth]   NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_2]                                                  DECIMAL (30, 10) NULL,
    [measure_3]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    [measure_2_meta]                                             NVARCHAR (255)   NULL,
    [measure_3_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

