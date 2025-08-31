-- liquibase formatted sql
-- changeset ORBRGS:1756617450174 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\actradhs.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/actradhs.sql:null:0bca481ff4397d6f09bed2714f14f1fde347fa6d:create

create table orbrgs.actradhs (
    compcode varchar2(3 byte) not null enable,
    docttype varchar2(2 byte) not null enable,
    subttype number not null enable,
    docnumbr varchar2(8 byte) not null enable,
    doctdate date not null enable,
    acctcode varchar2(10 byte) not null enable,
    subledcd varchar2(6 byte),
    jvlcamnt number,
    orgamtlc number,
    adjamtlc number,
    njlcamnt number,
    nogamtlc number,
    najamtlc number,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date
)
no inmemory;

