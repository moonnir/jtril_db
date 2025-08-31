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
        itemmodl                         --,PRODNAME,MODLCODE,MODELNAM,BRAND;;


-- sqlcl_snapshot {"hash":"913ae7b46823ac66f7cd8b124c9cd0cbaeb1ee17","type":"MATERIALIZED_VIEW","name":"DASTBOARD_RECEIVABLE","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>DASTBOARD_RECEIVABLE</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>DOCTDATE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>PAMTMODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>RECEIVABLE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>NO_OF_SALES</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMMGRUP</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMMODL</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}