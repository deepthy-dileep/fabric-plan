CREATE TABLE [e5094a1b-d9d0-423a-a7a2-61c0bff26e14].[visual_di_1_39255f164d56c9105292c4e2e12cfc67] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimAccountHAccountHierarchyDimAccountLevel1]            NVARCHAR (255)   NULL,
    [dim_DimAccountHAccountHierarchyDimAccountLevel2]            NVARCHAR (255)   NULL,
    [dim_DimAccountHAccountHierarchyDimAccountLevel3]            NVARCHAR (255)   NULL,
    [dim_DimAccountHAccountHierarchyDimAccountLevel4]            NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aMonth]   NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

