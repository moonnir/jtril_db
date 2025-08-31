-- liquibase formatted sql
-- changeset ORBRGS:1756617447820 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ac_trn_rights.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ac_trn_rights.sql:null:76750f49f519ea6421766f64e8063d1ad31a6dfa:create

create table orbrgs.ac_trn_rights (
    compcode varchar2(3 byte),
    docttype varchar2(3 byte),
    subttype number,
    refdocty varchar2(3 byte),
    refsubty number,
    costcode varchar2(10 byte),
    usercode varchar2(50 byte),
    addsflag varchar2(1 byte),
    modsflag varchar2(1 byte),
    delsflag varchar2(1 byte),
    chrgtype varchar2(3 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

