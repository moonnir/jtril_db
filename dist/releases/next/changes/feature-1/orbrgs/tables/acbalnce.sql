-- liquibase formatted sql
-- changeset ORBRGS:1756617447989 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbalnce.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbalnce.sql:null:d28bdb2980541c3ac17d674b8bed4807ca1796b5:create

create table orbrgs.acbalnce (
    compcode varchar2(3 byte) not null enable,
    yearcode varchar2(4 byte) not null enable,
    perdcode varchar2(2 byte) not null enable,
    tranyear varchar2(4 byte) not null enable,
    tranmnth varchar2(2 byte) not null enable,
    typecode varchar2(1 byte),
    doctdate date,
    acctcode varchar2(30 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(20 byte),
    currcode varchar2(3 byte),
    dbamntfc number,
    cramntfc number,
    dbamntlc number,
    cramntlc number,
    fcbalnce number,
    lcbalnce number,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

