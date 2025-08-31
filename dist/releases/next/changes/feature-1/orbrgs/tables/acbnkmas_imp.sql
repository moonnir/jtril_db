-- liquibase formatted sql
-- changeset ORBRGS:1756617448178 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbnkmas_imp.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbnkmas_imp.sql:null:cacc20c10a39d299bb412d7e9ab4a7bcc98b2ca3:create

create table orbrgs.acbnkmas_imp (
    routing_code varchar2(100 byte),
    bankcode     varchar2(10 byte),
    bankname     varchar2(100 byte),
    bankadd1     varchar2(30 byte),
    bankadd2     varchar2(30 byte),
    bnkcurcd     varchar2(3 byte),
    district     varchar2(100 byte),
    modifydt     date
)
no inmemory;

