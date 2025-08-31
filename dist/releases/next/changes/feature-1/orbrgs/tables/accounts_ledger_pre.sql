-- liquibase formatted sql
-- changeset ORBRGS:1756617448501 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accounts_ledger_pre.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accounts_ledger_pre.sql:null:0858ffcf4eb9c1ee6ff3e5b03274efb6bdb1fd51:create

create table orbrgs.accounts_ledger_pre (
    ledger_id     varchar2(30 byte),
    account_code  varchar2(50 byte),
    debit_amount  number,
    credit_amount number,
    action        varchar2(200 byte),
    insert_time   date,
    update_time   date,
    delete_time   date
)
no inmemory;

