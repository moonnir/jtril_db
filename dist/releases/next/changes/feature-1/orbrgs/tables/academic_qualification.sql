-- liquibase formatted sql
-- changeset ORBRGS:1756617447837 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\academic_qualification.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/academic_qualification.sql:null:dd9d2272557f8852e05386311cfdf269a2972a14:create

create table orbrgs.academic_qualification (
    custmrid        varchar2(50 byte),
    exam_degre_name varchar2(100 byte),
    board_name      varchar2(100 byte),
    subject_group   varchar2(100 byte),
    institute_name  varchar2(500 byte),
    result          varchar2(50 byte),
    passing_year    number
)
no inmemory;

