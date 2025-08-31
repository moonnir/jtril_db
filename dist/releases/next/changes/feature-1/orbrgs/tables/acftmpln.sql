-- liquibase formatted sql
-- changeset ORBRGS:1756617449127 stripComments:false  logicalFilePath:feature-1\orbrgs\tables\acftmpln.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/tables/acftmpln.sql:null:d32dd610bc933224dc70ff047f9894c39e1ffc74:create

create table orbrgs.acftmpln (
    compcode  varchar2(3 byte) not null enable,
    finrepcd  varchar2(3 byte) not null enable,
    linenumb  number not null enable,
    linetext  varchar2(100 byte),
    linetype  varchar2(1 byte) not null enable,
    schdtype  varchar2(1 byte) not null enable,
    levlcode  varchar2(1 byte) not null enable,
    dispsign  number not null enable,
    fontname  varchar2(3 byte) not null enable,
    fontsize  number not null enable,
    boldflag  varchar2(1 byte) not null enable,
    itlicflg  varchar2(1 byte) not null enable,
    undrline  varchar2(1 byte) not null enable,
    drawline  varchar2(1 byte) not null enable,
    oprstamp  varchar2(50 byte) not null enable,
    timstamp  date not null enable,
    repprdcod number,
    modifydt  date
)
no inmemory;

