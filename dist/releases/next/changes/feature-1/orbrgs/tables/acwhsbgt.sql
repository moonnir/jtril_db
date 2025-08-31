-- liquibase formatted sql
-- changeset ORBRGS:1756617450639 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acwhsbgt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acwhsbgt.sql:null:676e5230cdda8dd71903921c9925025674d14056:create

create table orbrgs.acwhsbgt (
    compcode varchar2(3 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    serlnumb number,
    warecode varchar2(6 byte),
    acctcode varchar2(50 byte),
    doctdate date,
    budgtamt number,
    remnamnt number,
    budgtyr  varchar2(4 byte),
    statuscd varchar2(3 byte),
    modifydt date,
    timstamp date,
    costamnt number
)
no inmemory;

