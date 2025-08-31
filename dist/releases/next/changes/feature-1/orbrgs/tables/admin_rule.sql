-- liquibase formatted sql
-- changeset ORBRGS:1756617450740 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\admin_rule.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/admin_rule.sql:null:6368aa6856a84b9860d0c6c2ec78436b83dc1a72:create

create table orbrgs.admin_rule (
    rule_id        number,
    rule_name      varchar2(200 byte),
    active         varchar2(1 byte),
    parent_rule_id number
)
no inmemory;

