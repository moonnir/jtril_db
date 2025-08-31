-- liquibase formatted sql
-- changeset ORBRGS:1756617447855 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acageing.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acageing.sql:null:ff90e28a3057fea41c8764090e9ce16e6def41fe:create

create table orbrgs.acageing (
    compcode varchar2(3 byte),
    ageforno varchar2(3 byte),
    formdesc varchar2(20 byte),
    ageperd1 number,
    ageperd2 number,
    ageperd3 number,
    ageperd4 number,
    ageperd5 number,
    oprstamp varchar2(50 byte),
    timstamp date,
    defforml varchar2(1 byte),
    modifydt date,
    ageperd6 number,
    ageperd7 number,
    ageperd8 number
)
no inmemory;

