-- liquibase formatted sql
-- changeset ORBRGS:1756617449306 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\aclcamnt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/aclcamnt.sql:null:a39fa81b73ee456b9e3e4143d59a5353b6fbce69:create

create table orbrgs.aclcamnt (
    compcode          varchar2(100 byte),
    docttype          varchar2(2 byte),
    subttype          number,
    docnumbr          varchar2(30 byte),
    doctdate          date,
    exprdate          date,
    shmntdat          date,
    costcode          varchar2(10 byte),
    warecode          varchar2(10 byte),
    partycde          varchar2(30 byte),
    currcode          varchar2(3 byte),
    excgrate          number,
    msfcamnt          number,
    mslcamnt          number,
    remarkss          varchar2(250 byte),
    oprstamp          varchar2(50 byte),
    timstamp          date,
    modifydt          date,
    bankname          varchar2(100 byte),
    brnchnam          varchar2(100 byte),
    prtybank          varchar2(250 byte),
    prtlspmt          varchar2(1 byte),
    fromport          varchar2(200 byte),
    sendport          varchar2(200 byte),
    itemcode          varchar2(40 byte),
    vinnumbr          varchar2(150 byte),
    trnsqnty          number,
    luomcode          varchar2(6 byte),
    itemdesc          varchar2(60 byte),
    refdocno          varchar2(30 byte),
    refdocdt          date,
    pifcamnt          number,
    pilcamnt          number,
    hs_code           varchar2(128 byte),
    insurance_company varchar2(512 byte),
    cover_note_no     varchar2(128 byte),
    doc_reached_date  date,
    pi_no_fk          number
)
no inmemory;

