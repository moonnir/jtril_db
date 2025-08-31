-- liquibase formatted sql
-- changeset ORBRGS:1756617450839 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\apex$archive_contents.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/apex$archive_contents.sql:null:f36b4ea3dfcbb6ffd811fbf242cc7a00f00e9ed8:create

create table orbrgs.apex$archive_contents (
    id                   number,
    row_version_number   number(*, 0),
    header_id            number,
    content_type         varchar2(255 byte),
    app_id               number,
    content_id           number,
    version              number,
    app_name             varchar2(255 byte),
    content              blob,
    content_filename     varchar2(512 byte),
    content_mimetype     varchar2(512 byte),
    content_last_updated timestamp(6) with local time zone,
    content_charset      varchar2(255 byte),
    creation_elap_time   number,
    created_by           varchar2(255 byte),
    created              timestamp(6) with local time zone,
    updated_by           varchar2(255 byte),
    updated              timestamp(6) with local time zone,
    modifydt             date
)
no inmemory;

