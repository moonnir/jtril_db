-- liquibase formatted sql
-- changeset ORBRGS:1756617448196 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbnkmas_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbnkmas_log.sql:null:acfd359bfb7234cc335e1b334b68e50d6e6942f9:create

create table orbrgs.acbnkmas_log (
    compcode varchar2(3 byte),
    bankcode varchar2(10 byte),
    bankname varchar2(100 byte),
    bankadd1 varchar2(30 byte),
    bankadd2 varchar2(30 byte),
    bnkcurcd varchar2(3 byte),
    district varchar2(100 byte),
    modifydt date
)
no inmemory;

