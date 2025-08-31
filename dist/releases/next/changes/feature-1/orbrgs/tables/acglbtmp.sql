-- liquibase formatted sql
-- changeset ORBRGS:1756617449234 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acglbtmp.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acglbtmp.sql:null:7972a8c587387480aa4982717cc074071ff40da3:create

create table orbrgs.acglbtmp (
    compcode varchar2(3 byte),
    doctdate date,
    acctcode varchar2(30 byte),
    costcode varchar2(10 byte),
    subledcd varchar2(20 byte),
    currcode varchar2(3 byte),
    oprstamp varchar2(50 byte),
    timstamp date,
    modifydt date
)
no inmemory;

