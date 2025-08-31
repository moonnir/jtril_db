-- liquibase formatted sql
-- changeset ORBRGS:1756617448936 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acfingen.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acfingen.sql:null:13363604fe2cee1316cd04947b25a2e131d09321:create

create table orbrgs.acfingen (
    compcode varchar2(3 byte) not null enable,
    finrepcd varchar2(3 byte) not null enable,
    reptdate date not null enable,
    linenumb number not null enable,
    linetext varchar2(100 byte),
    column01 number,
    column02 number,
    column03 number,
    column04 number,
    column05 number,
    column06 number,
    column07 number,
    column08 number,
    column09 number,
    column10 number,
    column11 number,
    column12 number,
    colmntot number,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

