-- liquibase formatted sql
-- changeset ORBRGS:1756617447904 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acallocn.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acallocn.sql:null:c48980baa9eb4641c9fb661e6d2e90bad7b9b5e2:create

create table orbrgs.acallocn (
    compcode varchar2(3 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date,
    acctcode varchar2(10 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(6 byte),
    sdoctype varchar2(2 byte),
    ssubtype number,
    sdocnumb varchar2(8 byte),
    sdocdate date,
    sserlnum number,
    tdoctype varchar2(2 byte),
    tsubtype number,
    tdocnumb varchar2(8 byte),
    tdocdate date,
    dbcrcode varchar2(1 byte),
    tserlnum number,
    currcode varchar2(3 byte),
    excgrate number,
    allfcamt number,
    alllcamt number,
    oprstamp varchar2(50 byte),
    timstamp date,
    sdbcrcde varchar2(1 byte),
    modifydt date
)
no inmemory;

