CREATE DOMAIN "Id" AS bigint;
CREATE DOMAIN "DateTime" AS timestamp without time zone;
CREATE DOMAIN "Decimal" AS numeric(16,2);
CREATE DOMAIN "TransactionTitle" AS varchar(300);
CREATE DOMAIN "SubjectName" AS varchar(500);

CREATE TABLE transaction (
    id "Id" NOT NULL,
	id_type "Id" NOT NULL,
	date "DateTime" NOT NULL,
	title "TransactionTitle",
	subject_name "SubjectName" NOT NULL,
	quota "Decimal" NOT NULL,	
	version "Version" NOT NULL	
) WITHOUT OIDS;

ALTER TABLE ONLY transaction
    ADD CONSTRAINT "transaction_pkey" PRIMARY KEY (id);
	
CREATE SEQUENCE s_transaction
   START WITH 1000
   INCREMENT BY 10
   NO MAXVALUE
   NO MINVALUE
   CACHE 1;