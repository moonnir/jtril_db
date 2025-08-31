-- liquibase formatted sql
-- changeset ORBRGS:1756617450756 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\admin_ruledtl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/admin_ruledtl.sql:null:53699dd7f16a64dada139f7e0427fa91a464e873:create

create table orbrgs.admin_ruledtl (
    ruledtl_id     number,
    rule_id        number,
    ruledtl_name   varchar2(200 byte),
    active         varchar2(1 byte),
    component_type varchar2(3 byte),
    component_id   varchar2(100 byte)
)
no inmemory;

