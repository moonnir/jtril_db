-- liquibase formatted sql
-- changeset ORBRGS:1756617450727 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\admin_request_approval.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/admin_request_approval.sql:null:65dedf0badf30a22cab98e4dba53ebd4c82f50c1:create

create table orbrgs.admin_request_approval (
    compcode                varchar2(10 byte),
    docnumbr                varchar2(30 byte),
    docttype                varchar2(2 byte),
    subttype                number,
    date_of_request         date,
    type_of_request         varchar2(200 byte),
    requestor_employee_id   varchar2(50 byte),
    requestor_department_id varchar2(50 byte),
    responsible_person      varchar2(50 byte),
    users_employee_id       varchar2(50 byte),
    users_department_id     varchar2(50 byte),
    users_manager_id        varchar2(50 byte),
    approval_level          number,
    approval_status         varchar2(3 byte),
    remarks                 varchar2(4000 byte),
    request_approve_by      varchar2(50 byte),
    request_approve_date    date
)
no inmemory;

