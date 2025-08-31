-- liquibase formatted sql
-- changeset ORBRGS:1756617450107 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acsumdtl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acsumdtl.sql:null:e9334788e63f9414c39bb7b0f69414476d379017:create

create table orbrgs.acsumdtl (
    compcode varchar2(3 byte) not null enable,
    reptnumb number not null enable,
    costcode varchar2(10 byte),
    colmname varchar2(3 byte),
    colnamnt number,
    asondate date,
    doctdate date,
    yearmnth varchar2(6 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

