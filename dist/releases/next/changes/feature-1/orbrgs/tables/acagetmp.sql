-- liquibase formatted sql
-- changeset ORBRGS:1756617447877 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acagetmp.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acagetmp.sql:null:eec186b2a1f688b54a7b2a93962cfddeca5f183b:create

create table orbrgs.acagetmp (
    compcode varchar2(3 byte),
    ageforno varchar2(3 byte),
    partycde varchar2(8 byte),
    costcode varchar2(10 byte),
    ageperd1 varchar2(10 byte),
    ageperd2 varchar2(10 byte),
    ageperd3 varchar2(10 byte),
    ageperd4 varchar2(10 byte),
    ageperd5 varchar2(10 byte),
    ageperd6 varchar2(10 byte),
    ageperd7 varchar2(10 byte),
    ageamnt1 number,
    ageamnt2 number,
    ageamnt3 number,
    ageamnt4 number,
    ageamnt5 number,
    ageamnt6 number,
    ageamnt7 number,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

