-- liquibase formatted sql
-- changeset ORBRGS:1756617449186 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acgarnty.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acgarnty.sql:null:b778634e868c25f4d0d360db80e42b98cf2e9703:create

create table orbrgs.acgarnty (
    compcode varchar2(3 byte) not null enable,
    grtynumb varchar2(20 byte) not null enable,
    grextnum varchar2(2 byte),
    grtytype varchar2(2 byte),
    grtydate date,
    strtdate date,
    grperiod number,
    autorenw varchar2(1 byte),
    grtyclss varchar2(20 byte),
    accttype varchar2(3 byte),
    grexpdte date,
    grcandte date,
    grremdte date,
    divncode varchar2(3 byte),
    costcode varchar2(10 byte),
    costdesc varchar2(30 byte),
    currcode varchar2(3 byte),
    excgrate number,
    gramntfc number,
    gramntlc number,
    naration varchar2(40 byte),
    apartycd varchar2(6 byte),
    apartynm varchar2(30 byte),
    aprtyad1 varchar2(30 byte),
    aprtyad2 varchar2(30 byte),
    abnkcode varchar2(10 byte),
    abnkname varchar2(30 byte),
    bpartycd varchar2(6 byte),
    bpartynm varchar2(35 byte),
    bprtyad1 varchar2(30 byte),
    bprtyad2 varchar2(30 byte),
    bbnkcode varchar2(10 byte),
    bbnkname varchar2(30 byte),
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    grnxtext varchar2(2 byte),
    grisdate date,
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date
)
no inmemory;

