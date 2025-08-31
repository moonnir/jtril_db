-- liquibase formatted sql
-- changeset ORBRGS:1756617447960 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acaudtrl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acaudtrl.sql:null:05f10aced44724fffbfbef9d2f6fe9d96986c6f8:create

create table orbrgs.acaudtrl (
    compcode varchar2(3 byte) not null enable,
    progname varchar2(15 byte),
    trandate date,
    fieldnam varchar2(60 byte),
    oldvalue varchar2(60 byte),
    newvalue varchar2(60 byte),
    remarkss varchar2(60 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

