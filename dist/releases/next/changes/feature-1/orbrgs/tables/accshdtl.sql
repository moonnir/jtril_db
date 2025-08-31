-- liquibase formatted sql
-- changeset ORBRGS:1756617448547 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accshdtl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accshdtl.sql:null:5a7e16a97e8937ad28b613a65e4706fee0355775:create

create table orbrgs.accshdtl (
    compcode varchar2(3 byte),
    repdtlno number,
    reptnumb number,
    reptason date,
    strtdate date,
    endddate date,
    periodno number,
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

