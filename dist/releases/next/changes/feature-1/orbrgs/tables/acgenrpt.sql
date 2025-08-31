-- liquibase formatted sql
-- changeset ORBRGS:1756617449216 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acgenrpt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acgenrpt.sql:null:b9f48888a682e395bc7b923126a6daa323e313c1:create

create table orbrgs.acgenrpt (
    cacmpcde varchar2(3 byte),
    cacmpnam varchar2(40 byte),
    caprgcde varchar2(30 byte),
    catertyp varchar2(8 byte),
    cachoice varchar2(2 byte),
    caterprt varchar2(1 byte),
    cawhscde varchar2(3 byte),
    calikfld varchar2(16 byte),
    castract varchar2(16 byte),
    caendact varchar2(16 byte),
    castramt number,
    caendamt number,
    castrdte date,
    caenddte date,
    cachfl03 varchar2(16 byte),
    cachfl04 varchar2(16 byte),
    cachfl05 varchar2(16 byte),
    cachfl06 varchar2(16 byte),
    cachfl07 varchar2(16 byte),
    cachfl08 varchar2(16 byte),
    cablfl01 varchar2(1 byte),
    cablfl02 varchar2(1 byte),
    cablfl03 varchar2(1 byte),
    cablfl04 varchar2(1 byte),
    cablfl05 varchar2(1 byte),
    cablfl06 varchar2(1 byte),
    caprmode varchar2(1 byte),
    capgline number,
    cagrpcde varchar2(3 byte),
    causridn varchar2(6 byte),
    cafprcde varchar2(40 byte),
    casysdte date,
    castrdt1 date,
    caenddt1 date,
    caprgdes varchar2(40 byte),
    timstamp date
)
no inmemory;

