-- liquibase formatted sql
-- changeset ORBRGS:1756617450088 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acrights.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acrights.sql:null:3b369bf2844f049f78a30b9a4f3ba0d7315addb3:create

create table orbrgs.acrights (
    compcode varchar2(100 byte) not null enable,
    parntact varchar2(30 byte),
    acctcode varchar2(30 byte) not null enable,
    usercode varchar2(50 byte) not null enable,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

