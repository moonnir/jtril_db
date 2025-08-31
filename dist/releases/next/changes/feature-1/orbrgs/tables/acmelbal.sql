-- liquibase formatted sql
-- changeset ORBRGS:1756617449494 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acmelbal.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acmelbal.sql:null:a126fc191c6b52db59ba8f14569c67700f8d64db:create

create table orbrgs.acmelbal (
    compcode varchar2(3 byte),
    costcode varchar2(10 byte),
    costdesc varchar2(30 byte),
    contvalu varchar2(10 byte),
    numunits number,
    material number,
    freight  number,
    handling number,
    instlatn number,
    wagesamt number,
    subcntrt number,
    ercamnt  number,
    turnover number,
    debtors  number,
    maintprv number,
    handover varchar2(10 byte),
    prcrecvd number,
    prcproft number,
    contamnt number,
    inclflag varchar2(1 byte),
    areacode varchar2(1 byte),
    advasbok number,
    provsion number,
    colecton number,
    cashpurc number,
    corpacts number,
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

