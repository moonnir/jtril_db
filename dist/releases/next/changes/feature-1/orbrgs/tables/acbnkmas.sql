-- liquibase formatted sql
-- changeset ORBRGS:1756617448161 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbnkmas.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbnkmas.sql:null:d42da86c65782f709c45be2b95813b63d5204df5:create

create table orbrgs.acbnkmas (
    compcode varchar2(3 byte) not null enable,
    bankcode varchar2(10 byte) not null enable,
    bankname varchar2(30 byte),
    bankadd1 varchar2(30 byte),
    bankadd2 varchar2(30 byte),
    bnkcurcd varchar2(3 byte),
    district varchar2(100 byte),
    modifydt date
)
no inmemory;

