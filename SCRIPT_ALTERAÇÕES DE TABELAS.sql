// ALTERAÇÕES NAS TABELAS
BEG
ALTER TABLE REGION
ALTER COLUMN ID int NOT NULL;

ALTER TABLE REGION
ADD PRIMARY KEY (ID);

ALTER TABLE ORDERS
ALTER COLUMN ID int NOT NULL;

ALTER TABLE ORDERS
ADD PRIMARY KEY (ID);

ALTER TABLE ACCOUNTS
ALTER COLUMN ID int NOT NULL;

ALTER TABLE ACCOUNTS
ADD PRIMARY KEY (ID);

ALTER TABLE SALES_REPS
ALTER COLUMN ID int NOT NULL;

ALTER TABLE SALES_REPS
ADD PRIMARY KEY (ID);

ALTER TABLE WEB_EVENTS
ALTER COLUMN ID int NOT NULL;

ALTER TABLE WEB_EVENTS
ADD PRIMARY KEY (ID);

// ADICIONA AS FOREIGN KEYS NAS TABELAS

ALTER TABLE WEB_EVENTS
ADD FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNTS(ID);

ALTER TABLE WEB_EVENTS
ALTER COLUMN ACCOUNT_ID int NOT NULL;

ALTER TABLE SALES_REPS
ADD FOREIGN KEY(REGION_ID) REFERENCES REGION(ID);

ALTER TABLE SALES_REPS
ALTER COLUMN REGION_ID int NOT NULL;

ALTER TABLE ACCOUNTS
ADD FOREIGN KEY(SALES_REPS_ID) REFERENCES SALES_REPS(ID);

ALTER TABLE ACCOUNTS
ALTER COLUMN SALES_REP_ID int NOT NULL;

ALTER TABLE ORDERS
ADD FOREIGN KEY(ACCOUNT_ID) REFERENCES ORDERS(ID);

ALTER TABLE ORDERS
ALTER COLUMN ACCOUNT_ID int NOT NULL;

