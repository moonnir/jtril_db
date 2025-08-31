-- liquibase formatted sql
-- changeset ORBRGS:1756617448478 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\account.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/account.sql:null:838269933086625dfd37f2deaacba7ada84ccde2:create

create table orbrgs.account (
    id           number(19, 0)
        generated always as identity
    not null enable,
    account_type varchar2(255 char),
    balance      number(19, 2),
    customer_id  number(19, 0)
);

alter table orbrgs.account add primary key ( id )
    using index enable;

