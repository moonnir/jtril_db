-- liquibase formatted sql
-- changeset ORBRGS:1756617448367 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accheque.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accheque.sql:null:e7705e4f5c9d46bad697c8fe2ebec22255622398:create

create table orbrgs.accheque (
    compcode varchar2(3 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date,
    docduedt date,
    acctcode varchar2(10 byte),
    subledcd varchar2(6 byte),
    chekfavr varchar2(40 byte),
    cheknumb varchar2(15 byte),
    chekdate date,
    currcode varchar2(3 byte),
    excgrate number,
    costcode varchar2(10 byte),
    bankcode varchar2(10 byte),
    naration varchar2(40 byte),
    docamtfc number,
    docamtlc number,
    checkamt number,
    docrefno varchar2(15 byte),
    docrefdt date,
    lponumbr varchar2(8 byte),
    chkprflg varchar2(1 byte),
    paycrflg varchar2(1 byte),
    deleflag varchar2(1 byte),
    rundtype varchar2(2 byte),
    runstype number,
    chkrundt date,
    chkrunno varchar2(8 byte),
    chktypcd varchar2(1 byte),
    dbcrcode varchar2(1 byte),
    serlnumb number,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

