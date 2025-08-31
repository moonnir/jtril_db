-- liquibase formatted sql
-- changeset ORBRGS:1756617450258 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\actrnchd.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/actrnchd.sql:null:bcdda67e08379c23321c0bc1fecb89cad935e336:create

create table orbrgs.actrnchd (
    compcode varchar2(3 byte) not null enable,
    docttype varchar2(2 byte) not null enable,
    subttype number not null enable,
    docnumbr varchar2(30 byte) not null enable,
    doctdate date not null enable,
    remarkss varchar2(3000 byte),
    prtyname varchar2(60 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

