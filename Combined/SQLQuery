/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      FinalModel_DallaChicagoInspections.DM1
 *
 * Date Created : Wednesday, March 29, 2023 21:36:44
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: dim_Address 
 */

CREATE TABLE dim_Address(
    Address_SK               int             NOT NULL,
    DBA_SK                   int             NOT NULL,
    Address                  varchar(999)    NULL,
    City                     varchar(255)    NULL,
    State                    varchar(255)    NULL,
    ZipCode                  varchar(18)     NULL,
    Ward                     varchar(255)    NULL,
    Precinct                 varchar(255)    NULL,
    PoliceDistrict           varchar(255)    NULL,
    Longitude                float           NULL,
    Latitude                 float           NULL,
    Location                 varchar(255)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_1 PRIMARY KEY NONCLUSTERED (Address_SK, DBA_SK)
)

go


IF OBJECT_ID('dim_Address') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_Address >>>'
go

/* 
 * TABLE: dim_DBA 
 */

CREATE TABLE dim_DBA(
    DBA_SK                   int             NOT NULL,
    Resteraunt_Name          varchar(999)    NULL,
    AKA_Name                 varchar(255)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (DBA_SK)
)

go


IF OBJECT_ID('dim_DBA') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_DBA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_DBA >>>'
go

/* 
 * TABLE: dim_FacilityType 
 */

CREATE TABLE dim_FacilityType(
    FacilityType_SK          int             NOT NULL,
    FacilityType             varchar(999)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_1 PRIMARY KEY NONCLUSTERED (FacilityType_SK)
)

go


IF OBJECT_ID('dim_FacilityType') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_FacilityType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_FacilityType >>>'
go

/* 
 * TABLE: dim_InspectionType 
 */

CREATE TABLE dim_InspectionType(
    InspectionType_SK        int             NOT NULL,
    InspectionType           varchar(999)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_2_4 PRIMARY KEY NONCLUSTERED (InspectionType_SK)
)

go


IF OBJECT_ID('dim_InspectionType') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_InspectionType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_InspectionType >>>'
go

/* 
 * TABLE: dim_License 
 */

CREATE TABLE dim_License(
    License_SK                     int             NOT NULL,
    LicenseID                      int             NULL,
    LicenseNumber                  int             NULL,
    License_Code                   int             NULL,
    License_Status                 varchar(255)    NULL,
    License_Description            varchar(255)    NULL,
    Date_Issued                    date            NULL,
    License_Term_StartDate         date            NOT NULL,
    License_Status_ChangeDate      date            NULL,
    License_Term_ExpirationDate    date            NULL,
    Site_Number                    varchar(255)    NULL,
    DI_CreateDate                  datetime        NULL,
    DI_Wrokflow_FileName           varchar(255)    NULL,
    DI_WorkFlow_Directory          varchar(255)    NULL,
    CONSTRAINT PK1_2_2_2 PRIMARY KEY NONCLUSTERED (License_SK)
)

go


IF OBJECT_ID('dim_License') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_License >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_License >>>'
go

/* 
 * TABLE: dim_Results 
 */

CREATE TABLE dim_Results(
    Results_SK               int             NOT NULL,
    Results                  varchar(999)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_2 PRIMARY KEY NONCLUSTERED (Results_SK)
)

go


IF OBJECT_ID('dim_Results') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_Results >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_Results >>>'
go

/* 
 * TABLE: dim_Risk 
 */

CREATE TABLE dim_Risk(
    Risk_SK                  int             NOT NULL,
    Risk                     varchar(999)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2 PRIMARY KEY NONCLUSTERED (Risk_SK)
)

go


IF OBJECT_ID('dim_Risk') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_Risk >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_Risk >>>'
go

/* 
 * TABLE: Dim_Violations 
 */

CREATE TABLE Dim_Violations(
    Volations_SCD_SK         int             NOT NULL,
    ViolationDescription     varchar(999)    NULL,
    ViolationCode            int             NULL,
    ViolationDetails         varchar(255)    NULL,
    ViolationMemo            varchar(255)    NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_1_1_1 PRIMARY KEY NONCLUSTERED (Volations_SCD_SK)
)

go


IF OBJECT_ID('Dim_Violations') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Violations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Violations >>>'
go

/* 
 * TABLE: FCT_Inspections 
 */

CREATE TABLE FCT_Inspections(
    FCT_Inspections_SK       int             NOT NULL,
    DBA_SK                   int             NOT NULL,
    Risk_SK                  int             NOT NULL,
    FacilityType_SK          int             NOT NULL,
    InspectionType_SK        int             NOT NULL,
    Results_SK               int             NOT NULL,
    License_SK               int             NOT NULL,
    InspectionID             int             NULL,
    Inspection_Date          date            NULL,
    Inspection_Score         int             NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_2_3_2 PRIMARY KEY NONCLUSTERED (FCT_Inspections_SK, DBA_SK, Risk_SK, FacilityType_SK, InspectionType_SK, Results_SK, License_SK)
)

go


IF OBJECT_ID('FCT_Inspections') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Inspections >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Inspections >>>'
go

/* 
 * TABLE: FCT_Violations 
 */

CREATE TABLE FCT_Violations(
    Violations_SK            int             NOT NULL,
    FCT_Inspections_SK       int             NOT NULL,
    Volations_SCD_SK         int             NOT NULL,
    ViolationsPoints         int             NULL,
    DI_CreateDate            datetime        NULL,
    DI_Wrokflow_FileName     varchar(255)    NULL,
    DI_WorkFlow_Directory    varchar(255)    NULL,
    CONSTRAINT PK1_2_1_1 PRIMARY KEY NONCLUSTERED (Violations_SK, FCT_Inspections_SK, Volations_SCD_SK)
)

go


IF OBJECT_ID('FCT_Violations') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Violations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Violations >>>'
go

/* 
 * TABLE: dim_Address 
 */

ALTER TABLE dim_Address ADD CONSTRAINT Refdim_DBA6 
    FOREIGN KEY (DBA_SK)
    REFERENCES dim_DBA(DBA_SK)
go


/* 
 * TABLE: FCT_Inspections 
 */

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_DBA1 
    FOREIGN KEY (DBA_SK)
    REFERENCES dim_DBA(DBA_SK)
go

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_Risk2 
    FOREIGN KEY (Risk_SK)
    REFERENCES dim_Risk(Risk_SK)
go

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_FacilityType3 
    FOREIGN KEY (FacilityType_SK)
    REFERENCES dim_FacilityType(FacilityType_SK)
go

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_Results4 
    FOREIGN KEY (Results_SK)
    REFERENCES dim_Results(Results_SK)
go

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_InspectionType5 
    FOREIGN KEY (InspectionType_SK)
    REFERENCES dim_InspectionType(InspectionType_SK)
go

ALTER TABLE FCT_Inspections ADD CONSTRAINT Refdim_License14 
    FOREIGN KEY (License_SK)
    REFERENCES dim_License(License_SK)
go


/* 
 * TABLE: FCT_Violations 
 */

ALTER TABLE FCT_Violations ADD CONSTRAINT RefDim_Violations19 
    FOREIGN KEY (Volations_SCD_SK)
    REFERENCES Dim_Violations(Volations_SCD_SK)
go


