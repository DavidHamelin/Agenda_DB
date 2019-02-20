/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/
USE [agenda]
GO

/*------------------------------------------------------------
-- Table: brokers
------------------------------------------------------------*/
CREATE TABLE brokers(
	idBroker      INT IDENTITY (1,1) NOT NULL ,
	lastname      NVARCHAR (50) NOT NULL ,
	firstname     NVARCHAR (50) NOT NULL ,
	mail          VARCHAR (100) NOT NULL ,
	phoneNumber   VARCHAR (10)  NOT NULL ,
	CONSTRAINT brokers_PK PRIMARY KEY (idBroker)
);


/*------------------------------------------------------------
-- Table: customers
------------------------------------------------------------*/
CREATE TABLE customers(
	idCustomer    INT IDENTITY (1,1) NOT NULL ,
	lastname      NVARCHAR (50) NOT NULL ,
	firstname     NVARCHAR (50) NOT NULL ,
	mail          VARCHAR (100)  ,
	phoneNumber   VARCHAR (10)  ,
	budget        INT  NOT NULL ,
	subject       TEXT    ,
	CONSTRAINT customers_PK PRIMARY KEY (idCustomer)
);


/*------------------------------------------------------------
-- Table: appointements
------------------------------------------------------------*/
CREATE TABLE appointements(
	idAppointement   INT IDENTITY (1,1) NOT NULL ,
	dateHour         DATETIME  NOT NULL ,
	idCustomer       INT  NOT NULL ,
	idBroker         INT  NOT NULL  ,
	CONSTRAINT appointements_PK PRIMARY KEY (idAppointement)

	,CONSTRAINT appointements_customers_FK FOREIGN KEY (idCustomer) REFERENCES customers(idCustomer)
	,CONSTRAINT appointements_brokers0_FK FOREIGN KEY (idBroker) REFERENCES brokers(idBroker)
);



