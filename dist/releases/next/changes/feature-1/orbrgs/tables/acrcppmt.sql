-- liquibase formatted sql
-- changeset ORBRGS:1756617449818 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acrcppmt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acrcppmt.sql:null:6ec8c3b90e50d2465eff695eb101167e094c0f31:create

create table orbrgs.acrcppmt (
    compcode varchar2(3 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date,
    acctcode varchar2(50 byte),
    dbcrcode varchar2(1 byte),
    currcode varchar2(3 byte),
    excgrate number,
    jvfcamnt number default 0,
    jvlcamnt number default 0,
    pmtrcpfl varchar2(1 byte),
    statuscd varchar2(3 byte),
    prsdtfrm date,
    prsdatto date,
    oprstamp varchar2(50 byte),
    timstamp date
)
no inmemory;

