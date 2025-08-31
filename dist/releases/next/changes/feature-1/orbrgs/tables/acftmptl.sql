-- liquibase formatted sql
-- changeset ORBRGS:1756617449145 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acftmptl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acftmptl.sql:null:cd0735c73e804ad2446411b900f91c58eaadde6d:create

create table orbrgs.acftmptl (
    compcode varchar2(3 byte) not null enable,
    finrepcd varchar2(3 byte) not null enable,
    linenumb number not null enable,
    sublinno number not null enable,
    addsubcd number not null enable,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

