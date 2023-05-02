/*query 1*/
CREATE VIEW event_SUMMARY AS 
SELECT *
FROM event_table 
WHERE event_table.e_ID=00001;

/*query 2*/
CREATE VIEW mn_talent AS
SELECT p_ID,  p_name,  specialties, phone_num, city, state
FROM performers
WHERE performers.state = 'MN';

/*query 3*/
CREATE VIEW paychecks AS
    SELECT 
        performers.p_ID,
        performers.p_name,
        performers.pay_method,
        performers.pay_info,
        event_staffing.pay_rate,
        event_staffing.event_ID,
        event_staffing.performer_ID
    FROM
        performers
            INNER JOIN event_staffing 
        ON event_staffing.performer_ID=
        performers.p_ID
    WHERE
        event_staffing.event_ID = 00002;

/*query 4*/
CREATE VIEW specialty_query AS
SELECT p_name, phone_num, city, state
FROM performers
WHERE specialties LIKE "stilt walker";

/*query 5*/
CREATE VIEW 2023_1099 AS
SELECT 
        event_staffing.performer_ID,
        event_staffing.pay_rate,
        performers.p_ID,
        performers.p_name,
        performers.st_address,
        performers.city,
        performers.state
    FROM   performers
           INNER JOIN (SELECT performer_ID, pay_rate 
FROM event_staffing 
GROUP BY performer_ID)event_staffing  ON performers.p_ID = event_staffing.performer_ID;

/*query 6*/
SELECT *
FROM inventory
WHERE inventory.specialties LIKE "princess";

/*query 7*/
CREATE VIEW need_deposit AS
    SELECT client_table.c_ID,
    client_table.contact_name,
    client_table.phone_num,
    client_table.st_address,
    client_table.city,
    client_table.state,
    event_table.client_ID,
    event_table.e_ID
    FROM client_table
           INNER JOIN
        (SELECT e_ID, event_table.client_ID
        FROM event_table
        WHERE paid_to_date = 0) event_table ON event_table.client_ID = client_table.c_ID;

/*query 8*/
CREATE VIEW need_staff AS
SELECT *
FROM event_table
WHERE NOT EXISTS (SELECT * FROM event_staffing WHERE
event_table.e_ID = event_staffing.event_ID );

/*query 9*/
DELIMITER $$
CREATE PROCEDURE delete_old_event_data ()
BEGIN
DELETE FROM event_table WHERE call_time < NOW() AND paid_to_date=0;
END$$

DELIMITER ;
CALL delete_old_event_data ();

/*query 10*/
UPDATE event_table
SET paid_to_date = total_payment_due
WHERE e_ID=0003;
UPDATE event_staffing
SET paid = TRUE
WHERE event_ID=00003;
