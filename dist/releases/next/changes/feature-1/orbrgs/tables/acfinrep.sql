-- liquibase formatted sql
-- changeset ORBRGS:1756617448956 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acfinrep.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acfinrep.sql:null:c05c773c93a4c3c4073f6dfdeb451d56f015e3f6:create

create table orbrgs.acfinrep (
    compcode varchar2(3 byte) not null enable,
    reptnumb number not null enable,
    reptname varchar2(200 byte) not null enable,
    headnumb number,
    headname varchar2(200 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    reptnopk number,
    repfrmno number,
    modifydt date,
    repttype varchar2(3 byte),
    label    varchar2(200 byte)
)
no inmemory;

