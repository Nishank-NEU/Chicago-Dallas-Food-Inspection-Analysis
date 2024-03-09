--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      FinalModel_DallaChicagoInspections_1.DM1
--
-- Date Created : Monday, April 17, 2023 23:55:56
-- Target DBMS : MySQL 8.x
--

-- 
-- TABLE: dim_Address 
--

CREATE TABLE dim_Address(
    Address_SK               INT             NOT NULL,
    DBA_SK                   INT             NOT NULL,
    Address                  VARCHAR(999),
    City                     VARCHAR(255),
    State                    VARCHAR(255),
    ZipCode                  VARCHAR(18),
    Ward                     VARCHAR(255),
    Precinct                 VARCHAR(255),
    PoliceDistrict           VARCHAR(255),
    Longitude                FLOAT(8, 0),
    Latitude                 FLOAT(8, 0),
    Location                 VARCHAR(255),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (Address_SK, DBA_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_DBA 
--

CREATE TABLE dim_DBA(
    DBA_SK                   INT             NOT NULL,
    Resteraunt_Name          VARCHAR(999),
    AKA_Name                 VARCHAR(255),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (DBA_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_FacilityType 
--

CREATE TABLE dim_FacilityType(
    FacilityType_SK          INT             NOT NULL,
    FacilityType             VARCHAR(999),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (FacilityType_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_InspectionType 
--

CREATE TABLE dim_InspectionType(
    InspectionType_SK        INT             NOT NULL,
    InspectionType           VARCHAR(999),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (InspectionType_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_License 
--

CREATE TABLE dim_License(
    License_SK                     INT             NOT NULL,
    LicenseID                      INT,
    LicenseNumber                  INT,
    License_Code                   INT,
    License_Status                 VARCHAR(255),
    License_Description            VARCHAR(255),
    Date_Issued                    DATE,
    License_Term_StartDate         DATE            NOT NULL,
    License_Status_ChangeDate      DATE,
    License_Term_ExpirationDate    DATE,
    Site_Number                    VARCHAR(255),
    DI_CreateDate                  DATETIME,
    DI_Wrokflow_FileName           VARCHAR(255),
    DI_WorkFlow_Directory          VARCHAR(255),
    PRIMARY KEY (License_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_Results 
--

CREATE TABLE dim_Results(
    Results_SK               INT             NOT NULL,
    Results                  VARCHAR(999),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (Results_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_Risk 
--

CREATE TABLE dim_Risk(
    Risk_SK                  INT             NOT NULL,
    Risk                     VARCHAR(999),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (Risk_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: Dim_Violations 
--

CREATE TABLE Dim_Violations(
    Volations_SCD_SK         INT             NOT NULL,
    ViolationDescription     VARCHAR(999),
    ViolationCode            INT,
    ViolationDetails         VARCHAR(255),
    ViolationMemo            VARCHAR(255),
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (Volations_SCD_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: FCT_Inspections 
--

CREATE TABLE FCT_Inspections(
    FCT_Inspections_SK       INT             NOT NULL,
    DBA_SK                   INT             NOT NULL,
    Risk_SK                  INT             NOT NULL,
    FacilityType_SK          INT             NOT NULL,
    InspectionType_SK        INT             NOT NULL,
    Results_SK               INT             NOT NULL,
    License_SK               INT             NOT NULL,
    InspectionID             INT,
    Inspection_Date          DATE,
    Inspection_Score         INT,
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (FCT_Inspections_SK, DBA_SK, Risk_SK, FacilityType_SK, InspectionType_SK, Results_SK, License_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: FCT_Violations 
--

CREATE TABLE FCT_Violations(
    Violations_SK            INT             NOT NULL,
    FCT_Inspections_SK       INT             NOT NULL,
    Volations_SCD_SK         INT             NOT NULL,
    ViolationsPoints         INT,
    DI_CreateDate            DATETIME,
    DI_Wrokflow_FileName     VARCHAR(255),
    DI_WorkFlow_Directory    VARCHAR(255),
    PRIMARY KEY (Violations_SK, FCT_Inspections_SK, Volations_SCD_SK)
)ENGINE=MYISAM
;



-- 
-- TABLE: dim_Address 
--

ALTER TABLE dim_Address ADD CONSTRAINT Refdim_DBA61 
    FOREIGN KEY (DBA_SK)
    REFERENCES dim_DBA(DBA_SK)
;


-- 
-- TABLE: FCT_Inspections 
--

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_DBA11 
    FOREIGN KEY (DBA_SK)
    REFERENCES dim_DBA(DBA_SK)
;

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_Risk21 
    FOREIGN KEY (Risk_SK)
    REFERENCES dim_Risk(Risk_SK)
;

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_FacilityType31 
    FOREIGN KEY (FacilityType_SK)
    REFERENCES dim_FacilityType(FacilityType_SK)
;

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_Results41 
    FOREIGN KEY (Results_SK)
    REFERENCES dim_Results(Results_SK)
;

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_InspectionType51 
    FOREIGN KEY (InspectionType_SK)
    REFERENCES dim_InspectionType(InspectionType_SK)
;

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_License141 
    FOREIGN KEY (License_SK)
    REFERENCES dim_License(License_SK)
;


-- 
-- TABLE: FCT_Violations 
--

ALTER TABLE FCT_Violations ADD CONSTRAINT RefDim_Violations191 
    FOREIGN KEY (Volations_SCD_SK)
    REFERENCES Dim_Violations(Volations_SCD_SK)
;


