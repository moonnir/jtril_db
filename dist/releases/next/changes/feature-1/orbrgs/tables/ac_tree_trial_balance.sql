-- liquibase formatted sql
-- changeset ORBRGS:1756617447757 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ac_tree_trial_balance.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ac_tree_trial_balance.sql:null:1c6bf87ee82454a4b54e205dc025d96effe0d8f5:create

create table orbrgs.ac_tree_trial_balance (
    compcode         varchar2(3 byte),
    parntact         varchar2(30 byte),
    parent_acc       varchar2(500 byte),
    acctcode         varchar2(30 byte),
    acctname         varchar2(500 byte),
    previous_debit   number,
    previous_credit  number,
    previous_balance number,
    debit            number,
    credit           number,
    balance          number,
    start_date       date,
    end_date         date
)
no inmemory;

