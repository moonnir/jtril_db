-- liquibase formatted sql
-- changeset ORBRGS:1756617448524 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accshbgt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accshbgt.sql:null:8f03c6349fb186b1f62167cc8444e05f0f976fc5:create

create table orbrgs.accshbgt (
    compcode varchar2(3 byte),
    cshbgtno number,
    strtdate date,
    endddate date,
    periodno number,
    headname varchar2(200 byte),
    acctcode varchar2(50 byte),
    cshinout varchar2(1 byte),
    colmonha number,
    colmonhb number,
    colmonhc number,
    colmonhd number,
    colmonhe number,
    colmonhf number,
    colmonhg number,
    colmonhh number,
    colmonhi number,
    colmonhj number,
    colmonhk number,
    colmonhl number,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

