-- liquibase formatted sql
-- changeset ORBRGS:1756617447942 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acauditv3.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acauditv3.sql:null:1ed2df8e6da63006240f43a5b993eada40d50155:create

create table orbrgs.acauditv3 (
    compcode varchar2(10 byte),
    serlnumb number,
    docnumbr varchar2(30 byte),
    doctdate date,
    docttype varchar2(2 byte),
    subttype number,
    rfdctype varchar2(2 byte),
    rfsubtyp number,
    costcode varchar2(10 byte),
    refdcnum varchar2(30 byte),
    jvfcamnt number,
    statcode varchar2(1 byte),
    statuscd varchar2(3 byte),
    finapprv varchar2(3 byte),
    modifydt date
);

