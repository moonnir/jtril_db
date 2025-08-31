-- liquibase formatted sql
-- changeset ORBRGS:1756617449270 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acintcom.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acintcom.sql:null:ab68ca87775ec0425d56a62184ec7743dab7a5aa:create

create table orbrgs.acintcom (
    compcode varchar2(3 byte) not null enable,
    bankcode varchar2(10 byte),
    currcode varchar2(3 byte),
    craccode varchar2(10 byte),
    crcccode varchar2(10 byte),
    crcmpcde varchar2(3 byte),
    draccode varchar2(10 byte),
    drcccode varchar2(10 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

