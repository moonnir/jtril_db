-- liquibase formatted sql
-- changeset ORBRGS:1756617448144 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbnklim.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbnklim.sql:null:971e6b96a9d14710dc0090fff9f66fc223fbe62d:create

create table orbrgs.acbnklim (
    compcode  char(3 byte),
    bankcode  varchar2(10 byte),
    acctnumb  varchar2(20 byte),
    accttype  varchar2(3 byte),
    currcode  varchar2(3 byte),
    limamtfc  number,
    limamtlc  number,
    sancnref  varchar2(30 byte),
    sancndte  date,
    oprstamp  varchar2(50 byte),
    timestamp date,
    bankname  varchar2(30 byte),
    excgrate  number,
    timstamp  date,
    modifydt  date
)
no inmemory;

