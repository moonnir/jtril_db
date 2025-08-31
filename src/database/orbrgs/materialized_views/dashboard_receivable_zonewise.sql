create materialized view orbrgs.dashboard_receivable_zonewise (
    compcode,
    doctdate,
    pamtmode,
    receivable,
    no_of_sales,
    commgrup,
    itemmodl,
    prodname,
    modlcode,
    modelnam,
    brand,
    smancode,
    smanname,
    nmzonefk,
    whszonpk_tree,
    area_name_tree
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
        itemmodl,
        prodname,
        modlcode,
        modelnam,
        brand,
        smancode,
        smanname,
        nmzonefk,
        whszonpk_tree,
        area_name_tree
    from
        (
            select
                s.compcode,
                s.doctdate,
                s.pamtmode,
                s.mslcamnt receivable,
                i.commgrup,
                i.itemmodl,
                i.prodname,
                i.modlcode,
                i.modelnam,
                i.brand,
                s.smancode,
                m.smanname,
                s.nmzonefk,
                z.whszonpk_tree,
                z.area_name_tree
            from
                nmsalrec     s,
                nmsmnmas     m,
                nmslsofr     o,
                vwnmitem     i,
                vw_nmwhznmas v,
                vw_nmwhznmas z
            where
                    s.compcode = m.compcode (+)
                and s.compcode = i.compcode
                and s.docttype = 'SI'
                and nvl(s.deliverd, 'X') = 'Y'
                and s.subttype in ( 1, 2, 44, 45, 46 )
                and s.itemcode = i.itemcode
                and s.compcode = v.compcode
                and s.nmzonefk = v.whszonpk
                and s.compcode = o.compcode (+)
                and s.smancode = m.smancode (+)
                and s.compcode = '100'
                and s.buyersno = o.docnumbr
                and s.compcode = z.compcode (+)
                and s.nmzonefk = z.whszonpk (+)
        )
    group by
        compcode,
        doctdate,
        pamtmode,
        commgrup,
        itemmodl,
        prodname,
        modlcode,
        modelnam,
        brand,
        smancode,
        smanname,
        nmzonefk,
        whszonpk_tree,
        area_name_tree;


-- sqlcl_snapshot {"hash":"18554790108d9c3f52af30db8626f974fc7c8bdd","type":"MATERIALIZED_VIEW","name":"DASHBOARD_RECEIVABLE_ZONEWISE","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>DASHBOARD_RECEIVABLE_ZONEWISE</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>DOCTDATE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>PAMTMODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>RECEIVABLE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>NO_OF_SALES</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMMGRUP</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMMODL</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>PRODNAME</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>MODLCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>MODELNAM</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>BRAND</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>SMANCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>SMANNAME</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>NMZONEFK</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>WHSZONPK_TREE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>AREA_NAME_TREE</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}