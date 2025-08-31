-- liquibase formatted sql
-- changeset ORBRGS:1756617448123 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbilreg.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbilreg.sql:null:b4a0857851865af81d29ffdc20ffef65866d652c:create

create table orbrgs.acbilreg (
    compcode varchar2(3 byte),
    regtnumb varchar2(8 byte),
    regtdate date,
    subledcd varchar2(6 byte),
    lponumbr varchar2(8 byte),
    refdocno varchar2(15 byte),
    refdocdt date,
    currcode varchar2(3 byte),
    excgrate number,
    docamtfc number,
    docamtlc number,
    remarks1 varchar2(40 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

