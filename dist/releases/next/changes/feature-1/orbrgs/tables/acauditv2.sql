-- liquibase formatted sql
-- changeset ORBRGS:1756617447921 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acauditv2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acauditv2.sql:null:3a92a361159e5f2b65a52d9c7115eab1e5678c33:create

create table orbrgs.acauditv2 (
    compcode varchar2(10 byte),
    serlnumb number,
    acctcode varchar2(50 byte),
    docnumbr varchar2(30 byte),
    doctdate date,
    docttype varchar2(2 byte),
    subttype number,
    costcode varchar2(10 byte),
    refdcnum varchar2(30 byte),
    dbcrcode varchar2(1 byte),
    jvfcamnt number,
    statcode varchar2(1 byte),
    modifydt date
);

