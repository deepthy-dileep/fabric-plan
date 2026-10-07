
                                  CREATE PROCEDURE [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].[sp_planning_di_row_batch_insert] 
                                  @InputData as nvarchar(max),
                                  @createdBy as nvarchar(128),
                                  @updatedBy as nvarchar(128),
                                  @createdAt as int,
                                  @updatedAt as int
                                  AS
                                  BEGIN
                                  SET NOCOUNT ON;
                                  DECLARE @sql NVARCHAR(MAX) = '';
                                  DECLARE @currentTimeString NVARCHAR(50) = CONVERT(NVARCHAR(50), SYSDATETIME(), 121);
                                  DECLARE @TempTableName NVARCHAR(128) = '#CR_INSERT_TEMP' + REPLACE(REPLACE(REPLACE(REPLACE(@currentTimeString, '-', ''), ':', ''),' ',''),'.','');
                                  
                                      -- Create a temporary table to hold the JSON data
                                      SET @sql = N'
                                          CREATE TABLE [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].' + QUOTENAME(@TempTableName) + N' (
                                              id varchar(255),
                                              visualId int,
                                              name varchar(255),
                                              rowMeta nvarchar(max),
                                              visualRowConfigId int,
                                              rowPath nvarchar(max),
                                              dimensionId varchar(255),
                                              createdBy nvarchar(128),
                                              updatedBy nvarchar(128),
                                              createdAt int,
                                              updatedAt int
                                          );
                                      ';

                                      
                                  
                                    -- Insert data into the temporary table using dynamic SQL
                                      SET @sql =  @sql + N'
                                          INSERT INTO [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].' + QUOTENAME(@TempTableName) + N'
                                          (id, name, rowMeta, visualRowConfigId, rowPath,  visualId, dimensionId, createdBy, updatedBy, createdAt, updatedAt)
                                          SELECT *,@createdBy, @updatedBy, @createdAt, @updatedAt
                                          FROM OPENJSON(@InputData)
                                          WITH (
                                          "id" varchar(255) ''$.i'',
                                          "name" varchar(255) ''$.n'',
                                          "rowMeta" nvarchar(max) ''$.rm'',
                                          "visualRowConfigId" int ''$.vrci'',
                                          "rowPath" nvarchar(max) ''$.rp'',
                                          "visualId" int ''$.vi'',
                                          "dimensionId" varchar(255) ''$.di''
                                          );
                                      ';
                                  
                                      SET @sql = @sql + 'INSERT INTO [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].data_input_row (id, name, rowMeta, visualRowConfigId, dimensionId, rowPath,  visualId, createdBy, updatedBy, createdAt, updatedAt)
                                      SELECT temp.id, temp.name, temp.rowMeta, temp.visualRowConfigId,temp.dimensionId, temp.rowPath, temp.visualId, createdBy, updatedBy, createdAt, updatedAt FROM [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].' + @TempTableName + ' as temp;';
                                      
                                      SET @sql = @sql + N'DROP TABLE [ee45fe53-79d0-49a0-b482-393ab2b5ef4e].' + @TempTableName + ';';
                                  
                                      EXEC sp_executesql @sql, N'
                                      @InputData NVARCHAR(MAX),
                                      @createdBy nvarchar(128),
                                      @updatedBy nvarchar(128),
                                      @createdAt INT,
                                      @updatedAt INT',
                                      @InputData,
                                      @createdBy,
                                      @updatedBy,
                                      @createdAt,
                                      @updatedAt;
                                      SET NOCOUNT OFF;
                                  
                                  END

GO

