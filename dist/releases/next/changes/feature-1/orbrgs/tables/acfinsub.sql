-- liquibase formatted sql
-- changeset ORBRGS:1756617448973 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acfinsub.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acfinsub.sql:null:41c61611430fca1347ae8f6fabe5ebb255229a0d:create

create table orbrgs.acfinsub (
    compcode varchar2(3 byte) not null enable,
    reptnumb number not null enable,
    headnumb number,
    sbhdnumb number,
    sbhdname varchar2(200 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

