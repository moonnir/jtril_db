create materialized view orbrgs.dasbord_expenses (
    compcode,
    doctdate,
    commgrup,
    group_code,
    accounts_head,
    amount
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        ex.compcode,
        ex.doctdate,
        case
            when ex.compcode = '101' then
                '001'
            when ex.compcode = '102' then
                '002'
        end                   commgrup,
        ex.group_code,
        x.acctname            accounts_head,
        round(sum(ex.amount)) amount
    from
        (
            select
                a.compcode,
                a.doctdate,
                substr(a.acctcode, 0, 4) group_code,
                a.acctcode,
                ( nvl(
                    sum(decode(a.dbcrcode, 'D', a.jvlcamnt)),
                    0
                ) - nvl(
                    sum(decode(a.dbcrcode, 'C', a.jvlcamnt)),
                    0
                ) )                      amount
            from
                actrndtl a,
                sychrtac b
            where
                    a.compcode = b.compcode
                and a.acctcode = b.acctcode
                and b.accttype = 4
            group by
                a.acctcode,
                a.compcode,
                a.doctdate
        )        ex,
        sychrtac x
    where
            x.compcode = '101'
        and x.acctcode = ex.group_code
    group by
        ex.group_code,
        ex.compcode,
        ex.doctdate,
        x.acctname;


-- sqlcl_snapshot {"hash":"1fda4b79ca08f7b34a279e6e079c7a222427eda6","type":"MATERIALIZED_VIEW","name":"DASBORD_EXPENSES","schemaName":"ORBRGS","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>ORBRGS</SCHEMA>\n   <NAME>DASBORD_EXPENSES</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>COMPCODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>DOCTDATE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMMGRUP</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>GROUP_CODE</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ACCOUNTS_HEAD</NAME>\n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>AMOUNT</NAME>\n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n      <INMEMORY>\n         <STATE>DISABLE</STATE>\n      </INMEMORY>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n</MATERIALIZED_VIEW>"}