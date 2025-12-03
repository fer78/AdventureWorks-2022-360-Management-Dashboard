SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimAccount';


-- Top 10
SELECT TOP 10 * FROM DimAccount;

-- Foreign Keys
SELECT 
    f.name AS ForeignKey,
    COL_NAME(fc.parent_object_id, fc.parent_column_id) AS ColumnName,
    OBJECT_NAME (f.referenced_object_id) AS ReferencesTable,
    COL_NAME(f.referenced_object_id, fc.referenced_column_id) AS ReferencesColumn
FROM sys.foreign_keys AS f
INNER JOIN sys.foreign_key_columns AS fc 
    ON f.object_id = fc.constraint_object_id
WHERE OBJECT_NAME(f.parent_object_id) = 'DimAccount';







