-- liquibase formatted sql
-- changeset ORBRGS:1756617450239 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\actrnbal.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/actrnbal.sql:null:8d7180d86be6759b7eb89b2f676bf9477cf797db:create

create table orbrgs.actrnbal (
    compcode varchar2(3 byte),
    yearcode varchar2(4 byte),
    perdcode varchar2(2 byte),
    trnlcdeb number,
    trnlccrd number,
    trnfcdeb number,
    trnfccrd number,
    ballcdeb number,
    ballccrd number,
    balfcdeb number,
    balfccrd number,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

