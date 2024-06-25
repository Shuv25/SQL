create database exception;

use exception;

-- Create table tutorials
CREATE TABLE tutorials
(
    id INT PRIMARY KEY,
    author VARCHAR(99),
    city VARCHAR(99)
);

truncate table tutorials;

-- Insert values into tutorials table
INSERT INTO tutorials VALUES(3, 'shuv', 'sapatgram');
INSERT INTO tutorials VALUES(4, 'ritik', 'hisar');
INSERT INTO tutorials VALUES(5, 'pranav', 'mujaffarnagar');
INSERT INTO tutorials VALUES(6, 'gagan', 'sasaram');
INSERT INTO tutorials VALUES(7, 'arpit', 'rohtak');


-- Select all rows from tutorials table
SELECT * FROM tutorials;

-- Set the delimiter to //
DELIMITER //

-- Create stored procedure ExampleProc
CREATE PROCEDURE Proc()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE cur_id INT;
    DECLARE cur_author, cur_city VARCHAR(99);

    -- Declare cursor for selecting all columns from tutorials
    DECLARE cur CURSOR FOR SELECT id, author, city FROM tutorials;

    -- Declare handler for end of cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN cur;

    -- Loop to fetch rows from the cursor
    label1: LOOP
        -- Fetch the next row
        FETCH cur INTO cur_id, cur_author, cur_city;
        
        -- Check if the cursor has reached the end
        IF done = 1 THEN
            LEAVE label1;
        END IF;

        -- Insert the fetched row back into the table (this might cause primary key conflicts)
        INSERT INTO tutorials (id, author, city) VALUES (cur_id, cur_author, cur_city);
    END LOOP label1;

    -- Close the cursor
    CLOSE cur;
END //

-- Reset the delimiter to ;
DELIMITER ;

-- Call the stored procedure
CALL Proc();