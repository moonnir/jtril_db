-- liquibase formatted sql
-- changeset ORBRGS:1756617447702 stripComments:false  logicalFilePath:feature-1\orbrgs\materialized_views\mtv_emi_collection.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/materialized_views/mtv_emi_collection.sql:null:621c5a30fc54251466f75617b7652cb12a587070:create

create materialized view orbrgs.mtv_emi_collection (
    compcode,
    doctdate,
    partycde,
    emiamnt,
    cltamnt
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        *
    from
        emi_collection;

