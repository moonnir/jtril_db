-- liquibase formatted sql
-- changeset ORBRGS:1756617447779 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ac_trn_details.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ac_trn_details.sql:null:3bdbd3636b6b4ca659aa9912a61118356a9e47c4:create

create table orbrgs.ac_trn_details (
    compcode varchar2(3 byte),
    docttype varchar2(3 byte),
    subttype number,
    refdocty varchar2(3 byte),
    refsubty number,
    costcode varchar2(10 byte),
    acctcode varchar2(30 byte),
    dbcrcode varchar2(1 byte),
    naration varchar2(500 byte),
    chrgtype varchar2(3 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

