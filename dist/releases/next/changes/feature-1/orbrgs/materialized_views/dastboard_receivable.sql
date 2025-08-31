-- liquibase formatted sql
-- changeset ORBRGS:1756617447687 stripComments:false  logicalFilePath:feature-1\orbrgs\materialized_views\dastboard_receivable.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/materialized_views/dastboard_receivable.sql:null:4ba283661fc3bcdbeea680d94618695541255532:create

create materialized view orbrgs.dastboard_receivable (
    compcode,
    doctdate,
    pamtmode,
    receivable,
    no_of_sales,
    commgrup,
    itemmodl
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        compcode,
        doctdate,
        pamtmode,
        sum(receivable) receivable,
        count(doctdate) no_of_sales,
        commgrup,
        itemmodl                          --,PRODNAME,MODLCODE,MODELNAM,BRAND
    from
        (
            select
                s.compcode,
                s.doctdate,
                s.pamtmode,
                s.mslcamnt receivable,
                i.commgrup,
                i.itemmodl        --,i.PRODNAME,i.MODLCODE,i.MODELNAM,i.BRAND
            from
                nmsalrec     s,
                nmsmnmas     m,
                nmslsofr     o,
                vwnmitem     i,
                vw_nmwhznmas v
            where
                    s.compcode = m.compcode (+)
                and s.compcode = i.compcode
                and s.docttype = 'SI'
                 -- AND NVL (S.DELIVERD, 'X') = 'Y'
                and s.subttype in ( 1, 2, 44, 45, 46 )
                and s.itemcode = i.itemcode
                and s.compcode = v.compcode (+)
                and s.nmzonefk = v.whszonpk (+)
                and s.compcode = o.compcode (+)
                and s.smancode = m.smancode (+)
                -- AND s.compcode = '100'
                and s.buyersno = o.docnumbr (+)
        )
    group by
        compcode,
        doctdate,
        pamtmode,
        commgrup,
        itemmodl

