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


-- sqlcl_snapshot {"hash":"a9a376ba2312e59ecc0499f513eee7911fa48224","type":"MATERIALIZED_VIEW","name":"DASHBORD_PORT_STOCK","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>DASHBORD_PORT_STOCK</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ENGINE_NO</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>VINNUMBR</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMERCIAL_INV_NO</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>MANIFEAST_NO</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>UPDOCNUM</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMDESC</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>APPRQNTY</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>MSLCAMNT</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMMGRUP</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}