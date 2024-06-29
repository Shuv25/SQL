use datapreprocessing;

CREATE TABLE employeen (
    id INT PRIMARY KEY,
    info JSON
);

INSERT INTO employeen (id, info) VALUES
(1, '{"name": "Alice Smith", "department": "HR"}'),
(2, '{"name": "Bob Johnson", "department": "Engineering"}'),
(3, '{"name": "Carol Williams", "department": "Marketing"}'),
(4, '{"name": "David Brown", "department": "Sales"}'),
(5, '{"name": "Eva Davis", "department": "Finance"}'),
(6, '{"name": "Frank Miller", "department": "IT"}'),
(7, '{"name": "Grace Wilson", "department": "Customer Support"}');

SELECT * FROM employeen;

select id,
json_value(info,'$.name') as Name,
json_value(info,'$.department') as DepartmentName
from employeen;


