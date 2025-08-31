-- liquibase formatted sql
-- changeset ORBRGS:1756617449689 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acpdcdef.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acpdcdef.sql:null:0629f10b61489a72a42d02ba65a76e73cd2ec06c:create

create table orbrgs.acpdcdef (
    compcode varchar2(3 byte) not null enable,
    bankacct varchar2(1 byte) not null enable,
    tranacct varchar2(10 byte) not null enable,
    convacct varchar2(10 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable
)
no inmemory;

