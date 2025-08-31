-- liquibase formatted sql
-- changeset ORBRGS:1756617449507 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acmisnum.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acmisnum.sql:null:706ff86e5cbaf732548be64f96cd9f5ccf1b0f78:create

create table orbrgs.acmisnum (
    serlnumb number,
    docnumbr varchar2(30 byte),
    timstamp date,
    modifydt date
)
no inmemory;

