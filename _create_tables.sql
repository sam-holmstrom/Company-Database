CREATE TABLE performers (
    p_ID NUMERIC(4 , 0 ),
    p_name VARCHAR(30) NOT NULL,
    pay_method VARCHAR(10),
    pay_info VARCHAR(20),
    specialties VARCHAR(400),
    phone_num NUMERIC(10 , 0 ),
    st_address VARCHAR(30),
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30) NOT NULL,
    PRIMARY KEY (p_ID)
);
CREATE TABLE client_table (
    client_ID NUMERIC(5 , 0 ),
    contact_name VARCHAR(30),
    phone_num NUMERIC(10 , 0 ),
    st_address VARCHAR(30),
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30) NOT NULL,
    PRIMARY KEY (client_ID)
    );
CREATE TABLE event_table (
    e_ID NUMERIC(5 , 0 ),
    client_ID NUMERIC(5 , 0 ),
    st_address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    total_payment_due NUMERIC(5 , 0 ) NOT NULL,
    paid_to_date NUMERIC(5 , 0 ),
    specialties VARCHAR(400),
    notes VARCHAR(1000),
    call_time DATETIME NOT NULL,
    PRIMARY KEY (e_ID),
    FOREIGN KEY (client_ID)
        REFERENCES client_table (client_ID)
);
CREATE TABLE event_staffing (
    event_ID NUMERIC(5 , 0 ) NOT NULL,
    performer_ID NUMERIC(4 , 0 ) NOT NULL,
    pay_rate NUMERIC(4 , 0 ),
    paid BOOLEAN NOT NULL,
    FOREIGN KEY (event_ID)
        REFERENCES event_table (e_ID),
    FOREIGN KEY (performer_ID)
        REFERENCES performers (p_ID)
);
CREATE TABLE inventory (
    item_ID NUMERIC(3 , 0 ),
    perf_ID NUMERIC(4 , 0 ),
    specialties VARCHAR(30),
    description VARCHAR(30) NOT NULL,
    PRIMARY KEY (item_ID),
    FOREIGN KEY (perf_ID)
        REFERENCES performers (p_ID)
);

