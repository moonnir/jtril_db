-- liquibase formatted sql
-- changeset ORBRGS:1756617449253 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ached_imp.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ached_imp.sql:null:4b4d0105869925e42064638a02fc9d6c13390ae8:create

create table orbrgs.ached_imp (
    compcode  varchar2(3 byte),
    parntact  varchar2(30 byte),
    acctcode  varchar2(50 byte),
    acctname  varchar2(500 byte),
    headflag  varchar2(1 byte),
    nparntact varchar2(100 byte),
    nacctcode varchar2(100 byte)
)
no inmemory;

