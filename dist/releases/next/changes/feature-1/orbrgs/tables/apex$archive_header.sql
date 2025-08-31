-- liquibase formatted sql
-- changeset ORBRGS:1756617450861 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\apex$archive_header.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/apex$archive_header.sql:null:0feb1229aceece726874aa1ed490301b97774497:create

create table orbrgs.apex$archive_header (
    id                 number,
    row_version_number number(*, 0),
    version            number,
    archive_name       varchar2(255 byte),
    workspace_id       number,
    workspace_name     varchar2(255 byte),
    schema             varchar2(255 byte),
    db_pod             varchar2(255 byte),
    comments           varchar2(4000 byte),
    retentions_in_days number,
    created_by         varchar2(255 byte),
    created            timestamp(6) with local time zone,
    updated_by         varchar2(255 byte),
    updated            timestamp(6) with local time zone,
    modifydt           date
)
no inmemory;

