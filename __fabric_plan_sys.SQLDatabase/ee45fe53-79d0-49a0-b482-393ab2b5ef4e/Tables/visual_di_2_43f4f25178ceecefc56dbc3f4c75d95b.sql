CREATE TABLE [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].[visual_di_2_43f4f25178ceecefc56dbc3f4c75d95b] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimGeographyCity]                                       NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dMonth]   NVARCHAR (255)   NULL,
    [dim_LocalDateTable_2897fb9da92b40fca2f5bd5c21062c9dDay]     NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

