-- liquibase formatted sql
-- changeset ORBRGS:1756617449468 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acmacrod.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acmacrod.sql:null:f01558d788685ca1fb6169718b1f1c52436718b5:create

create table orbrgs.acmacrod (
    compcode varchar2(3 byte) not null enable,
    typecode varchar2(1 byte) not null enable,
    tempnumb varchar2(2 byte),
    tmpsrlno number,
    macrtype varchar2(4 byte),
    acctcode varchar2(10 byte),
    acctname varchar2(30 byte),
    costcode varchar2(10 byte),
    costdesc varchar2(30 byte),
    currcode varchar2(3 byte),
    naration varchar2(40 byte),
    dbcrcode varchar2(1 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

