-- liquibase formatted sql
-- changeset ORBRGS:1756617449799 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acrcintg.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acrcintg.sql:null:3644708cce5108d7058d04ba26f0de8e0a8601e0:create

create table orbrgs.acrcintg (
    compcode varchar2(3 byte) not null enable,
    trannmbr number
        generated always as identity
    not null enable,
    trandate date not null enable,
    costcode varchar2(10 byte) not null enable,
    partycde varchar2(30 byte),
    prtyname varchar2(100 byte),
    praddres varchar2(500 byte),
    mobileno varchar2(20 byte),
    dbmprcde varchar2(10 byte),
    salerate number,
    costrate number,
    chrgamnt number,
    chrgrate number,
    lubcamnt number,
    lubcrate number,
    vat_amnt number,
    discamnt number,
    srvcnmbr varchar2(30 byte) not null enable,
    srvcdate date not null enable,
    chasisno varchar2(20 byte),
    bilnumbr varchar2(30 byte) not null enable,
    billdate date not null enable,
    remarkss varchar2(200 byte),
    instmode char(1 byte) default 'M',
    postflag char(1 byte) default 'N',
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    modifydt date,
    statuscd varchar2(3 byte),
    srvctype varchar2(30 byte),
    docttype varchar2(2 byte),
    subttype number
)
no inmemory;

