use datapreprocessing;

select*from app_data;

DELETE FROM app_data
WHERE id IN (
    SELECT id
    FROM (
        SELECT id, ROW_NUMBER() OVER (PARTITION BY name ORDER BY id) AS row_num
        FROM app_data
    ) AS duplicate_ids
    WHERE row_num > 1
);