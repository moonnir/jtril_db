-- liquibase formatted sql
-- changeset ORBRGS:1756617448010 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acbalnce_tmp.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acbalnce_tmp.sql:null:d78fad98eaef29fc6f32207ead40a3b6ac038277:create

create table orbrgs.acbalnce_tmp (
    compcode          varchar2(3 byte),
    doctdate          date,
    acctcode          varchar2(30 byte),
    costcode          varchar2(10 byte),
    subledcd          varchar2(20 byte),
    currcode          varchar2(3 byte),
    oplcbalnce        number,
    opfcbalnce        number,
    current_debit_lc  number,
    current_credit_lc number,
    current_debit_fc  number,
    current_credit_fc number,
    dbamntfc          number,
    cramntfc          number,
    dbamntlc          number,
    cramntlc          number,
    fcbalnce          number,
    lcbalnce          number,
    start_date        date,
    end_date          date,
    oprstamp          varchar2(50 byte)
)
no inmemory;

