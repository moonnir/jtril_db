-- liquibase formatted sql
-- changeset ORBRGS:1756617447800 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ac_trn_master.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ac_trn_master.sql:null:38bf33a9c4a0ae246e1d20434b55c41a54f1065b:create

create table orbrgs.ac_trn_master (
    compcode varchar2(3 byte),
    docttype varchar2(3 byte),
    subttype number,
    refdocty varchar2(3 byte),
    refsubty number,
    dbcostcd varchar2(10 byte),
    dbptyflg varchar2(1 byte),
    crcostcd varchar2(10 byte),
    crptyflg varchar2(1 byte),
    chrgtype varchar2(3 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

