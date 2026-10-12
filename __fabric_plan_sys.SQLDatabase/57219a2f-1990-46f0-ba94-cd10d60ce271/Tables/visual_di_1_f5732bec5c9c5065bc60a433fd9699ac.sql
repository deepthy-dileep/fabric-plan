CREATE TABLE [57219a2f-1990-46f0-ba94-cd10d60ce271].[visual_di_1_f5732bec5c9c5065bc60a433fd9699ac] (
    [id]                                                         BIGINT           IDENTITY (1, 1) NOT NULL,
    [rowId]                                                      NVARCHAR (255)   NOT NULL,
    [colId]                                                      NVARCHAR (255)   NOT NULL,
    [scenarioId]                                                 INT              NULL,
    [filterContextHash]                                          NVARCHAR (255)   NULL,
    [updatedAt]                                                  INT              NOT NULL,
    [updatedBy]                                                  NVARCHAR (128)   NOT NULL,
    [dim_DimProductHProductHierarchyDimProductDeliveryType]      NVARCHAR (255)   NULL,
    [dim_DimProductHProductHierarchyDimProductProductModule]     NVARCHAR (255)   NULL,
    [dim_DimProductHProductHierarchyDimProductProductLine]       NVARCHAR (255)   NULL,
    [dim_DimProductHProductHierarchyDimProductProductName]       NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aYear]    NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aQuarter] NVARCHAR (255)   NULL,
    [dim_LocalDateTable_c89ef83ed7f343639c78e14ec0c0b34aMonth]   NVARCHAR (255)   NULL,
    [measure_1]                                                  DECIMAL (30, 10) NULL,
    [measure_1_meta]                                             NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([rowId] ASC, [colId] ASC, [scenarioId] ASC, [filterContextHash] ASC)
);


GO

