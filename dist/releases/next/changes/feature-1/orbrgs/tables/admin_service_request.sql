-- liquibase formatted sql
-- changeset ORBRGS:1756617450788 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\admin_service_request.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/admin_service_request.sql:null:65601d995f1b81228904f0d16e7c721f281914fc:create

create table orbrgs.admin_service_request (
    compcode                  varchar2(10 byte),
    docnumbr                  varchar2(30 byte),
    docttype                  varchar2(2 byte),
    subttype                  number,
    date_of_request           date,
    type_of_request           varchar2(200 byte),
    requestor_employee_id     varchar2(50 byte),
    requestor_department_id   varchar2(50 byte),
    responsible_person        varchar2(50 byte),
    responsible_person_mobile varchar2(35 byte),
    users_employee_id         varchar2(50 byte),
    users_department_id       varchar2(50 byte),
    users_manager_id          varchar2(50 byte),
    start_position            varchar2(300 byte),
    destination               varchar2(300 byte),
    total_millage             number,
    group_uses                varchar2(1 byte),
    uses_date                 date,
    uses_starttime            date,
    uses_endtime              date,
    for_how_long              number,
    reason_for_use            varchar2(4000 byte),
    remarks                   varchar2(4000 byte),
    request_approve_by        varchar2(50 byte),
    request_approve_date      date,
    submit                    varchar2(1 byte) default 'N',
    rec_insert_date           date,
    rec_modify_date           date,
    rec_insert_by             varchar2(50 byte),
    rec_modify_by             varchar2(50 byte),
    driver_name               varchar2(50 byte),
    driver_address            varchar2(500 byte),
    driver_mobile             varchar2(35 byte)
)
no inmemory;

