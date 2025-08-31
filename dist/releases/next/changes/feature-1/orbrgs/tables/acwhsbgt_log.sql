-- liquibase formatted sql
-- changeset ORBRGS:1756617450658 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acwhsbgt_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acwhsbgt_log.sql:null:539abd43e969d897edb611a2695df4355e02bf74:create

create table orbrgs.acwhsbgt_log (
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

