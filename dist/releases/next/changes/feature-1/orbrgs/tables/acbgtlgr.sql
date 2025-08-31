-- liquibase formatted sql
-- changeset ORBRGS:1756617448031 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbgtlgr.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbgtlgr.sql:null:f6418b1ca85ce96cb51001174e186e774455f26b:create

create table orbrgs.acbgtlgr (
    compcode varchar2(3 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date,
    serlnumb number,
    acctcode varchar2(50 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(20 byte),
    naration varchar2(4000 byte),
    jvfcamnt number default 0,
    jvlcamnt number default 0,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date,
    flowtype char(1 char)
)
no inmemory;

