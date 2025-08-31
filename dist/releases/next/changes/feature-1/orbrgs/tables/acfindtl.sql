-- liquibase formatted sql
-- changeset ORBRGS:1756617448893 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acfindtl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acfindtl.sql:null:25c98eb63bc33f4bdaff6e125a6cfef425d8ee67:create

create table orbrgs.acfindtl (
    compcode  varchar2(3 byte) not null enable,
    reptnumb  number not null enable,
    periodid  number,
    startdate date,
    endddate  date,
    acctcode  varchar2(50 byte),
    exchrate  number,
    mslcamnt  number,
    msfcamnt  number,
    oprstamp  varchar2(50 byte) not null enable,
    timstamp  date not null enable,
    reptnofk  number,
    modifydt  date,
    sbhdnumb  number
)
no inmemory;

