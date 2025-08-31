-- liquibase formatted sql
-- changeset ORBRGS:1756617448561 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accshmap.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accshmap.sql:null:5424249dbcab7adf98c630fd336b37c92bea05d0:create

create table orbrgs.accshmap (
    compcode varchar2(3 byte),
    reptnumb number,
    cshinout char(1 byte),
    acctcode varchar2(50 byte),
    modifydt date
)
no inmemory;

