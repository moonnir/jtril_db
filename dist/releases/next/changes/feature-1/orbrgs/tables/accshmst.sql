-- liquibase formatted sql
-- changeset ORBRGS:1756617448584 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accshmst.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accshmst.sql:null:f850c5f7d4e5399e6a77abfd706df16f5b9b0c42:create

create table orbrgs.accshmst (
    compcode varchar2(3 byte),
    reptnumb number,
    reptname varchar2(200 byte),
    colmonha varchar2(40 byte),
    colmonhb varchar2(40 byte),
    colmonhc varchar2(40 byte),
    colmonhd varchar2(40 byte),
    colmonhe varchar2(40 byte),
    colmonhf varchar2(40 byte),
    colmonhg varchar2(40 byte),
    colmonhh varchar2(40 byte),
    colmonhi varchar2(40 byte),
    colmonhj varchar2(40 byte),
    colmonhk varchar2(40 byte),
    colmonhl varchar2(40 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

