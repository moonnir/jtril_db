-- liquibase formatted sql
-- changeset ORBRGS:1756617449104 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acftmpdt.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acftmpdt.sql:null:17e137daf76ff4e5079118c02d5f6c24b88dfe49:create

create table orbrgs.acftmpdt (
    compcode varchar2(3 byte) not null enable,
    finrepcd varchar2(3 byte) not null enable,
    linenumb number not null enable,
    accodefr varchar2(10 byte) not null enable,
    accodeto varchar2(10 byte) not null enable,
    costcdfr varchar2(10 byte) not null enable,
    costcdto varchar2(10 byte) not null enable,
    addsubcd number not null enable,
    oprstamp varchar2(50 byte) not null enable,
    timstamp date not null enable,
    linetype varchar2(1 byte),
    formula  varchar2(100 byte),
    prntline number,
    formfor  varchar2(1 byte),
    modifydt date
)
no inmemory;

