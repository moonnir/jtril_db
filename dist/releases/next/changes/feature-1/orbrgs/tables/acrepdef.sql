-- liquibase formatted sql
-- changeset ORBRGS:1756617449839 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acrepdef.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acrepdef.sql:null:968bc5164d0f57ef6a13fffd5817fc316e0fa4b4:create

create table orbrgs.acrepdef (
    compcode varchar2(3 byte) not null enable,
    reptnumb number not null enable,
    colmname varchar2(3 byte) not null enable,
    colmtype varchar2(1 byte),
    acctcode varchar2(25 byte),
    docttype varchar2(2 byte),
    typecode varchar2(1 byte),
    colmvalu number,
    doctdate date,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

