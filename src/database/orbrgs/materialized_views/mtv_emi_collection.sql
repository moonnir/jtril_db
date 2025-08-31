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


-- sqlcl_snapshot {"hash":"621c5a30fc54251466f75617b7652cb12a587070","type":"MATERIALIZED_VIEW","name":"MTV_EMI_COLLECTION","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>MTV_EMI_COLLECTION</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>DOCTDATE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>PARTYCDE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>EMIAMNT</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>CLTAMNT</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}