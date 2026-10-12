
            CREATE PROCEDURE [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].[sp_planning_di_row_batch_update] 
            @InputData as nvarchar(max),
            @updatedBy as nvarchar(128),
            @updatedAt as int
            AS
            BEGIN
            SET NOCOUNT ON;
            DECLARE @sql NVARCHAR(MAX) = '';
            DECLARE @currentTimeString NVARCHAR(50) = CONVERT(NVARCHAR(50), SYSDATETIME(), 121);
            DECLARE @TempTableName NVARCHAR(128) = '#CR_UPDATE_TEMP' + REPLACE(REPLACE(REPLACE(REPLACE(@currentTimeString, '-', ''), ':', ''),' ',''),'.','');
            
                -- Create a temporary table to hold the JSON data
                SET @sql = N'
                    CREATE TABLE [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].' + QUOTENAME(@TempTableName) + N' (
                        id varchar(255),
                        name varchar(255),
                        rowMeta nvarchar(max),
                        visualRowConfigId int,
                        updatedBy nvarchar(128),
                        updatedAt int
                    );
                ';
                
            
              -- Insert data into the temporary table using dynamic SQL
                SET @sql =  @sql + N'
                    INSERT INTO [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].' + QUOTENAME(@TempTableName) + N'
                    (id, name, rowMeta, visualRowConfigId, updatedBy, updatedAt)
                    SELECT "id", 
                    "name", 
                    "rowMeta", 
                    "visualRowConfigId", 
                    @updatedBy,
                    @updatedAt
                    FROM OPENJSON(@InputData)
                    WITH (
                    "id" varchar(255) ''$.i'',
                    "name" varchar(255) ''$.n'',
                    "rowMeta" nvarchar(max) ''$.rm'',
                    "visualRowConfigId" int ''$.vrci''
                    );
                ';

                SET @sql = @sql + 'UPDATE [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].data_input_row 
                SET 
                    name = COALESCE(temp.name, data_input_row.name),
                    rowMeta = COALESCE(temp.rowMeta, data_input_row.rowMeta),
                    visualRowConfigId = COALESCE(temp.visualRowConfigId, data_input_row.visualRowConfigId),
                    updatedBy = @updatedBy,
                    updatedAt = @updatedAt
                FROM [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].data_input_row
                INNER JOIN [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].' +  @TempTableName + ' as temp on temp.id = data_input_row.id;';

                SET @sql = @sql + N'DROP TABLE [f5b5c993-c43f-436a-aa9d-00e31fc2e3ae].' + @TempTableName + ';';
            
                EXEC sp_executesql @sql, N'
                @InputData NVARCHAR(MAX),
                @updatedBy NVARCHAR(128),
                @updatedAt INT',
                @InputData,
                @updatedBy,
                @updatedAt;

                SET NOCOUNT OFF;
            
            END

GO

