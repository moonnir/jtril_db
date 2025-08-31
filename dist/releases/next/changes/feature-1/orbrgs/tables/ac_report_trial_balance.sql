-- liquibase formatted sql
-- changeset ORBRGS:1756617447738 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\ac_report_trial_balance.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/ac_report_trial_balance.sql:null:03d2f18270b75f753e0a70ff2971b108fdf40ec3:create

create table orbrgs.ac_report_trial_balance (
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

