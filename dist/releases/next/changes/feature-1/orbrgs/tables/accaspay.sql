-- liquibase formatted sql
-- changeset ORBRGS:1756617448227 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\accaspay.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/accaspay.sql:null:3ec99a39baa10786486592ecb0bdc343dbcb84ca:create

create table orbrgs.accaspay (
    compcode varchar2(100 byte),
    docttype varchar2(2 byte),
    subttype number,
    docnumbr varchar2(30 byte),
    doctdate date,
    serlnumb number,
    acctcode varchar2(50 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(20 byte),
    naration varchar2(1000 byte),
    currcode varchar2(3 byte),
    excgrate number,
    jvfcamnt number default 0,
    jvlcamnt number default 0,
    payfcamt number default 0,
    paylcamt number default 0,
    refdocno varchar2(30 byte),
    refdocdt date,
    refdocty varchar2(2 byte),
    refdcsty number,
    intdocty varchar2(2 byte),
    intdcsty number,
    intdocno varchar2(30 byte),
    intdocdt date,
    payidmod varchar2(6 byte),
    statcode varchar2(1 byte) default 'N',
    bankname varchar2(100 byte),
    bankbrch varchar2(25 byte),
    bankcode varchar2(20 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

