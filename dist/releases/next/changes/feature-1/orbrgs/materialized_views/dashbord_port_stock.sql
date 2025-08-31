-- liquibase formatted sql
-- changeset ORBRGS:1756617447630 stripComments:false  logicalFilePath:feature-1\orbrgs\materialized_views\dashbord_port_stock.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/materialized_views/dashbord_port_stock.sql:null:a9a376ba2312e59ecc0499f513eee7911fa48224:create

create materialized view orbrgs.dashbord_port_stock (
    compcode,
    engine_no,
    vinnumbr,
    comercial_inv_no,
    manifeast_no,
    updocnum,
    itemcode,
    itemdesc,
    apprqnty,
    mslcamnt,
    commgrup
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        ex.compcode,
        ex.engine_no,
        ex.vinnumbr,
        ex.comercial_inv_no,
        ex.manifeast_no,
        ex.updocnum,
        ex.itemcode,
        ex.itemdesc,
        ex.apprqnty,
        ex.mslcamnt,
        case
            when ex.compcode = '101' then
                '001'
            when ex.compcode = '102' then
                '002'
        end commgrup
    from
        (
            select
                s.compcode,
                s.engine_no,
                s.vinnumbr,
                s.comercial_inv_no,
                s.manifeast_no,
                s.updocnum,
                s.itemcode,
                s.itemdesc,
                s.apprqnty,
                s.mslcamnt
            from
                nmstkrcg s,
                nmitemas a
            where
                    s.compcode = '101'
                and a.compcode = s.compcode
                and a.itemcode = s.itemcode
                and s.vinnumbr not in (
                    select distinct
                        vinnumbr
                    from
                        nmenudtl
                    where
                            compcode = '101'
                        and vinnumbr = s.vinnumbr
                )
        ) ex;

