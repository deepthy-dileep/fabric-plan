
        CREATE   FUNCTION [beb215ad-2adb-4ec4-a0df-794ad9877189].[MergeDIMeasureMeta]
        (
          @existingMeta NVARCHAR(MAX),
          @incomingMeta  NVARCHAR(MAX),
          @updatedAt BIGINT,
          @updatedBy NVARCHAR(128),
          @updatedByUPN NVARCHAR(320)
        )
        RETURNS NVARCHAR(MAX)
        AS
        BEGIN
          SET @existingMeta = ISNULL(@existingMeta, '{}');
          SET @incomingMeta = ISNULL(@incomingMeta, '{}');

          DECLARE @merged NVARCHAR(MAX) = @incomingMeta;

          -- Carry over createdAt and createdBy from existingMeta
          DECLARE @createdAt BIGINT = TRY_CAST(JSON_VALUE(@existingMeta, '$.createdAt') AS BIGINT);
          DECLARE @createdBy NVARCHAR(128) = TRY_CAST(JSON_VALUE(@existingMeta, '$.createdBy') AS NVARCHAR(128));

          IF @createdAt IS NOT NULL
            SET @merged = JSON_MODIFY(@merged, '$.createdAt', @createdAt);
          IF @createdBy IS NOT NULL
            SET @merged = JSON_MODIFY(@merged, '$.createdBy', @createdBy);

          -- Inject fixed fields
          SET @merged = JSON_MODIFY(@merged, '$.updatedAt', @updatedAt);
          SET @merged = JSON_MODIFY(@merged, '$.updatedBy', @updatedBy);
          SET @merged = JSON_MODIFY(@merged, '$.updatedByUPN', @updatedByUPN);

          RETURN @merged;
        END;

GO

