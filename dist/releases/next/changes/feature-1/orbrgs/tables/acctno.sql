-- liquibase formatted sql
-- changeset ORBRGS:1756617448602 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acctno.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acctno.sql:null:d4f9eb8b7648d87866c7a6bc52c38dba8878d848:create

create table orbrgs.acctno (
    comcde varchar2(3 byte),
    empcde varchar2(100 byte),
    descde varchar2(100 byte),
    acctno varchar2(25 byte),
    amount varchar2(20 byte),
    bnknam varchar2(200 byte),
    bnkbrn varchar2(100 byte),
    bnkcod varchar2(6 byte),
    brncod varchar2(6 byte)
)
no inmemory;

