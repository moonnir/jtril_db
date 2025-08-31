-- liquibase formatted sql
-- changeset ORBRGS:1756617450879 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\apex$archive_history.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/apex$archive_history.sql:null:247a90c9575f5a0e02bf4eac368e2709f5cd6c4d:create

create table orbrgs.apex$archive_history (
    id                    number,
    archived_applications number(*, 0),
    distinct_applications number(*, 0),
    archived_files        number(*, 0),
    archived_file_size    number(*, 0),
    created_by            varchar2(255 byte),
    created               timestamp(6) with local time zone,
    modifydt              date
)
no inmemory;

