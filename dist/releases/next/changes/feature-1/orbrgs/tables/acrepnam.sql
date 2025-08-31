-- liquibase formatted sql
-- changeset ORBRGS:1756617449961 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acrepnam.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acrepnam.sql:null:e31d14146dd11eddcc37e8e2b042a2f661a72397:create

create table orbrgs.acrepnam (
    compcode varchar2(3 byte) not null enable,
    reptnumb number not null enable,
    reptname varchar2(40 byte),
    reptnam1 varchar2(40 byte),
    colmhdg1 varchar2(40 byte),
    colmhdg2 varchar2(40 byte),
    colmhdg3 varchar2(40 byte),
    colmhdg4 varchar2(40 byte),
    colmhdg5 varchar2(40 byte),
    colmhdg6 varchar2(40 byte),
    colmhdg7 varchar2(40 byte),
    colmhdg8 varchar2(40 byte),
    colmhdg9 varchar2(40 byte),
    colmhdga varchar2(40 byte),
    colmhdgb varchar2(40 byte),
    colmhdgc varchar2(40 byte),
    colmhdgd varchar2(40 byte),
    colmhdge varchar2(40 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable
)
no inmemory;

