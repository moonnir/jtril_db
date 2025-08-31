-- liquibase formatted sql
-- changeset ORBRGS:1756617448098 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbildef.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbildef.sql:null:39d36a7be55b4d3ba9c202a79ce53ef274e41993:create

create table orbrgs.acbildef (
    compcode varchar2(3 byte) not null enable,
    choiceno number not null enable,
    bankcode varchar2(10 byte) not null enable,
    doctypfr varchar2(2 byte) not null enable,
    doctypto varchar2(2 byte) not null enable,
    subtypfr number not null enable,
    subtypto number not null enable,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

