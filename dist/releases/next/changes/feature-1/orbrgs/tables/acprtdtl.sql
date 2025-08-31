-- liquibase formatted sql
-- changeset ORBRGS:1756617449763 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acprtdtl.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acprtdtl.sql:null:22e7803b735606a86c2f8fdb064d286011a41cdd:create

create table orbrgs.acprtdtl (
    compcode varchar2(3 byte) not null enable,
    docttype varchar2(2 byte) not null enable,
    subttype number not null enable,
    docnumbr varchar2(30 byte) not null enable,
    doctdate date,
    docduedt date,
    serlnumb number,
    acctcode varchar2(10 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(6 byte),
    trancode varchar2(3 byte),
    naration varchar2(40 byte),
    dbcrcode varchar2(1 byte),
    currcode varchar2(3 byte),
    excgrate number,
    jvfcamnt number,
    jvlcamnt number,
    orgamtfc number,
    orgamtlc number,
    adjamtfc number,
    adjamtlc number,
    refdocno varchar2(15 byte),
    refdocdt date,
    refdocty varchar2(2 byte),
    refdcsty number,
    refdcnum varchar2(8 byte),
    refrdate date,
    intdocty varchar2(2 byte),
    intdcsty number,
    intdocno varchar2(8 byte),
    intdocdt date,
    statcode varchar2(1 byte),
    postdate date,
    transerl number,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

