-- liquibase formatted sql
-- changeset ORBRGS:1756617448910 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acfindtlback.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acfindtlback.sql:null:86cf4baa1d4fe361df626939c2e76c5ab4b3ff17:create

create table orbrgs.acfindtlback (
    compcode  varchar2(3 byte),
    reptnumb  number,
    periodid  number,
    startdate date,
    endddate  date,
    acctcode  varchar2(30 byte),
    exchrate  number,
    mslcamnt  number,
    msfcamnt  number,
    oprstamp  varchar2(50 byte),
    timstamp  date,
    reptnofk  number,
    modifydt  date,
    sbhdnumb  number
);

