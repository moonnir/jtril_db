-- liquibase formatted sql
-- changeset ORBRGS:1756617450675 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\admin_panel_rights.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/admin_panel_rights.sql:null:50155d299be5b71b6df4ef0f6b53d6f245bd955e:create

create table orbrgs.admin_panel_rights (
    panel_id   number,
    ruledtl_id number,
    user_id    varchar2(20 byte),
    show_hide  varchar2(1 byte),
    can_add    varchar2(1 byte),
    can_mod    varchar2(1 byte),
    can_del    varchar2(1 byte),
    can_enq    varchar2(1 byte)
)
no inmemory;

