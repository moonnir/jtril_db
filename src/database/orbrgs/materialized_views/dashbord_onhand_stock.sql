create materialized view orbrgs.dashbord_onhand_stock (
    compcode,
    itemcode,
    amount,
    itemdes1,
    commgrup,
    qty
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        ex.compcode,
        ex.itemcode,
        sum(ex.costrate) amount,
        ex.itemdes1,
        case
            when ex.compcode = '100' then
                '001'
            when ex.compcode = '102' then
                '002'
        end              commgrup,
        sum(ex.apprqnty) qty
    from
        (
            select
                st.compcode,
                st.itemcode,
                nvl(st.costrate, 0) costrate,
                it.itemdes1,
                st.apprqnty
            from
                nmenudtl st,
                nmitemas it
            where
                    st.compcode = it.compcode
                and st.itemcode = it.itemcode
                and st.compcode = '101'
                and nvl(st.trnsqnty, 0) = 0
                and st.docttype = 'RC'
                and st.bookcode is null
        ) ex
    group by
        ex.compcode,
        ex.itemcode,
        ex.itemdes1;


-- sqlcl_snapshot {"hash":"b29ac85a6e3f3b0ef3c947fa9844f21e971e175d","type":"MATERIALIZED_VIEW","name":"DASHBORD_ONHAND_STOCK","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>DASHBORD_ONHAND_STOCK</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>AMOUNT</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ITEMDES1</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMMGRUP</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>QTY</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}